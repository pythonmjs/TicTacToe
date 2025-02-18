/************************************************************************/
/*																		*/
/*	video_demo.c	--	ZYBO Video demonstration 						*/
/*																		*/
/************************************************************************/
/*	Author: Sam Bobrowicz												*/
/*	Copyright 2015, Digilent Inc.										*/
/************************************************************************/
/*  Module Description: 												*/
/*																		*/
/*		This file contains code for running a demonstration of the		*/
/*		Video input and output capabilities on the ZYBO. It is a good	*/
/*		example of how to properly use the display_ctrl and				*/
/*		video_capture drivers.											*/
/*																		*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/* 																		*/
/*		11/25/2015(SamB): Created										*/
/*																		*/
/************************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

#include "video_demo.h"
#include "video_capture/video_capture.h"
#include "display_ctrl/display_ctrl.h"
#include "intc/intc.h"
#include <stdio.h>
#include "xuartps.h"
#include "math.h"
#include <ctype.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "timer_ps/timer_ps.h"
#include "xparameters.h"

/*
 * XPAR redefines
 */
#define DYNCLK_BASEADDR 		XPAR_AXI_DYNCLK_0_BASEADDR
#define VDMA_ID 				XPAR_AXIVDMA_0_DEVICE_ID
#define HDMI_OUT_VTC_ID 		XPAR_V_TC_OUT_DEVICE_ID
//#define HDMI_IN_VTC_ID 			XPAR_V_TC_IN_DEVICE_ID
//#define HDMI_IN_GPIO_ID 		XPAR_AXI_GPIO_VIDEO_DEVICE_ID
//#define HDMI_IN_VTC_IRPT_ID 	XPAR_FABRIC_V_TC_IN_IRQ_INTR
//#define HDMI_IN_GPIO_IRPT_ID 	XPAR_FABRIC_AXI_GPIO_VIDEO_IP2INTC_IRPT_INTR
#define SCU_TIMER_ID 			XPAR_SCUTIMER_DEVICE_ID
#define UART_BASEADDR 			XPAR_PS7_UART_1_BASEADDR

/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

/*
 * Display and Video Driver structs
 */
DisplayCtrl dispCtrl;
XAxiVdma vdma;
VideoCapture videoCapt;
INTC intc;
char fRefresh; //flag used to trigger a refresh of the Menu on video detect
char game_x = 1;
char game_y = 1;
char board[3][3];

/*
 * Framebuffers for video data
 */
u8 frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME] __attribute__((aligned(0x20)));
u8 *pFrames[DISPLAY_NUM_FRAMES]; //array of pointers to the frame buffers

/*
 * Interrupt vector table
 */
//const ivt_t ivt[] = {
//	videoGpioIvt(HDMI_IN_GPIO_IRPT_ID, &videoCapt),
//	videoVtcIvt(HDMI_IN_VTC_IRPT_ID, &(videoCapt.vtc))
//};

/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */

int main(void)
{
	Display_Initialize();
	resetBoard();
	GameRun();

	return 0;
}


void Display_Initialize()
{
	int Status;
	XAxiVdma_Config *vdmaConfig;
	int i;

	/*
	 * Initialize an array of pointers to the 3 frame buffers
	 */
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		pFrames[i] = frameBuf[i];
	}

	/*
	 * Initialize a timer used for a simple delay
	 */
	TimerInitialize(SCU_TIMER_ID);

	/*
	 * Initialize VDMA driver
	 */
	vdmaConfig = XAxiVdma_LookupConfig(VDMA_ID);
	if (!vdmaConfig)
	{
		xil_printf("No video DMA found for ID %d\r\n", VDMA_ID);
		return;
	}
	Status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf("VDMA Configuration Initialization failed %d\r\n", Status);
		return;
	}

	/*
	 * Initialize the Display controller and start it
	 */
	Status = DisplayInitialize(&dispCtrl, &vdma, HDMI_OUT_VTC_ID, DYNCLK_BASEADDR, pFrames, DEMO_STRIDE);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Display Ctrl initialization failed during demo initialization%d\r\n", Status);
		return;
	}
	Status = DisplayStart(&dispCtrl);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Couldn't start display during demo initialization%d\r\n", Status);
		return;
	}

	/*
	 * Initialize the Interrupt controller and start it.
	 */
	/*Status = fnInitInterruptController(&intc);
	if(Status != XST_SUCCESS) {
		xil_printf("Error initializing interrupts");
		return;
	}
	fnEnableInterrupts(&intc, &ivt[0], sizeof(ivt)/sizeof(ivt[0]));*/

	/*
	 * Set the Video Detect callback to trigger the menu to reset, displaying the new detected resolution
	 */
	VideoSetCallback(&videoCapt, ISR, &fRefresh);

	PrintPattern(dispCtrl.framePtr[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, dispCtrl.stride, TIC_TAC_TOE);
	PrintPattern(dispCtrl.framePtr[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, dispCtrl.stride, BOX);

	return;
}

void GameRun()
{
	//int nextFrame = 0;
	char userInput = 0;

	/* Flush UART FIFO */
	while (XUartPs_IsReceiveData(UART_BASEADDR))
	{
		XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
	}

	while (userInput != 'q')
	{
		fRefresh = 0;
		PrintMenu();

		/* Wait for data on UART */
		while (!XUartPs_IsReceiveData(UART_BASEADDR) && !fRefresh)
		{}

		/* Store the first character in the UART receive FIFO and echo it */
		if (XUartPs_IsReceiveData(UART_BASEADDR))
		{
			userInput = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
			xil_printf("%c", userInput);
		}
		else  //Refresh triggered by video detect interrupt
		{
			userInput = 'r';
		}

		switch (userInput)
		{
		case 'y':
			ChangeRes();
			break;
		case 'n':
			game_x = 1;
			game_y = 1;
			resetBoard();
			PrintPattern(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, TIC_TAC_TOE);
			PrintPattern(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, BOX);
			break;
		case 'w':
			if ((game_y != 1))
			{
				game_y -= 1;
				PrintPattern(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, TIC_TAC_TOE);
				PrintPattern(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, BOX);
			}
			break;
		case 'a':
			if (game_x != 1)
			{
				game_x -= 1;
				PrintPattern(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, TIC_TAC_TOE);
				PrintPattern(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, BOX);
			}
			break;
		case 's':
			if ((game_y != 3))
			{
				game_y += 1;
				PrintPattern(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, TIC_TAC_TOE);
				PrintPattern(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, BOX);
			}
			break;
		case 'd':
			if (game_x != 3)
			{
				game_x += 1;
				PrintPattern(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, TIC_TAC_TOE);
				PrintPattern(pFrames[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, DEMO_STRIDE, BOX);
			}
			break;
		case 'q':
			break;
		case 'r':
			break;
		default :
			xil_printf("\n\rInvalid Selection");
			TimerDelay(500000);
		}
	}

	return;
}

void PrintMenu()
{
	xil_printf("\x1B[H"); //Set cursor to top left of terminal
	xil_printf("\x1B[2J"); //Clear terminal
	xil_printf("**************************************************\n\r");
	xil_printf("*                Tic Tac Toe Game                  *\n\r");
	xil_printf("**************************************************\n\r");
	xil_printf("*Display Resolution: %28s*\n\r", dispCtrl.vMode.label);
	xil_printf("**************************************************\n\r");
	xil_printf("\n\r");
	xil_printf("n - New TicTacToe Game\n\r");
	xil_printf("w - Move up\n\r");
	xil_printf("a - Move left\n\r");
	xil_printf("s - Move down\n\r");
	xil_printf("d - Move right\n\r");
	xil_printf("\n\r");
	xil_printf("q - Quit\n\r");
	xil_printf("\n\r");
	xil_printf("x = %d ",game_x);
	xil_printf("y = %d ",game_y);
	xil_printf("\n\r");
	xil_printf("Enter a selection:");
}

void ChangeRes()
{
	int fResSet = 0;
	int status;
	char userInput = 0;

	/* Flush UART FIFO */
	while (XUartPs_IsReceiveData(UART_BASEADDR))
	{
		XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
	}

	while (!fResSet)
	{
		CRMenu();

		/* Wait for data on UART */
		while (!XUartPs_IsReceiveData(UART_BASEADDR))
		{}

		/* Store the first character in the UART recieve FIFO and echo it */
		userInput = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
		xil_printf("%c", userInput);
		status = XST_SUCCESS;
		switch (userInput)
		{
		case '1':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_640x480);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '2':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_800x600);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '3':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_1280x720);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '4':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_1280x1024);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '5':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_1600x900);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '6':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_1920x1080);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case 'q':
			fResSet = 1;
			break;
		default :
			xil_printf("\n\rInvalid Selection");
			TimerDelay(500000);
		}
		if (status == XST_DMA_ERROR)
		{
			xil_printf("\n\rWARNING: AXI VDMA Error detected and cleared\n\r");
		}
	}
}

void CRMenu()
{
	xil_printf("\x1B[H"); //Set cursor to top left of terminal
	xil_printf("\x1B[2J"); //Clear terminal
	xil_printf("**************************************************\n\r");
	xil_printf("*               Tic Tac Toe Game                 *\n\r");
	xil_printf("**************************************************\n\r");
	xil_printf("*Current Resolution: %28s*\n\r", dispCtrl.vMode.label);
	printf("*Pixel Clock Freq. (MHz): %23.3f*\n\r", dispCtrl.pxlFreq);
	xil_printf("**************************************************\n\r");
	xil_printf("\n\r");
	xil_printf("1 - %s\n\r", VMODE_640x480.label);
	xil_printf("2 - %s\n\r", VMODE_800x600.label);
	xil_printf("3 - %s\n\r", VMODE_1280x720.label);
	xil_printf("4 - %s\n\r", VMODE_1280x1024.label);
	xil_printf("5 - %s\n\r", VMODE_1600x900.label);
	xil_printf("6 - %s\n\r", VMODE_1920x1080.label);
	xil_printf("q - Quit (don't change resolution)\n\r");
	xil_printf("\n\r");
	xil_printf("Select a new resolution:");
}


/*
 * Bilinear interpolation algorithm. Assumes both frames have the same stride.
 */
void ScaleFrame(u8 *srcFrame, u8 *destFrame, u32 srcWidth, u32 srcHeight, u32 destWidth, u32 destHeight, u32 stride)
{
	float xInc, yInc; // Width/height of a destination frame pixel in the source frame coordinate system
	float xcoSrc, ycoSrc; // Location of the destination pixel being operated on in the source frame coordinate system
	float x1y1, x2y1, x1y2, x2y2; //Used to store the color data of the four nearest source pixels to the destination pixel
	int ix1y1, ix2y1, ix1y2, ix2y2; //indexes into the source frame for the four nearest source pixels to the destination pixel
	float xDist, yDist; //distances between destination pixel and x1y1 source pixels in source frame coordinate system

	int xcoDest, ycoDest; // Location of the destination pixel being operated on in the destination coordinate system
	int iy1; //Used to store the index of the first source pixel in the line with y1
	int iDest; //index of the pixel data in the destination frame being operated on

	int i;

	xInc = ((float) srcWidth - 1.0) / ((float) destWidth);
	yInc = ((float) srcHeight - 1.0) / ((float) destHeight);

	ycoSrc = 0.0;
	for (ycoDest = 0; ycoDest < destHeight; ycoDest++)
	{
		iy1 = ((int) ycoSrc) * stride;
		yDist = ycoSrc - ((float) ((int) ycoSrc));

		/*
		 * Save some cycles in the loop below by presetting the destination
		 * index to the first pixel in the current line
		 */
		iDest = ycoDest * stride;

		xcoSrc = 0.0;
		for (xcoDest = 0; xcoDest < destWidth; xcoDest++)
		{
			ix1y1 = iy1 + ((int) xcoSrc) * 3;
			ix2y1 = ix1y1 + 3;
			ix1y2 = ix1y1 + stride;
			ix2y2 = ix1y1 + stride + 3;

			xDist = xcoSrc - ((float) ((int) xcoSrc));

			/*
			 * For loop handles all three colors
			 */
			for (i = 0; i < 3; i++)
			{
				x1y1 = (float) srcFrame[ix1y1 + i];
				x2y1 = (float) srcFrame[ix2y1 + i];
				x1y2 = (float) srcFrame[ix1y2 + i];
				x2y2 = (float) srcFrame[ix2y2 + i];

				/*
				 * Bilinear interpolation function
				 */
				destFrame[iDest] = (u8) ((1.0-yDist)*((1.0-xDist)*x1y1+xDist*x2y1) + yDist*((1.0-xDist)*x1y2+xDist*x2y2));
				iDest++;
			}
			xcoSrc += xInc;
		}
		ycoSrc += yInc;
	}

	/*
	 * Flush the framebuffer memory range to ensure changes are written to the
	 * actual memory, and therefore accessible by the VDMA.
	 */
	Xil_DCacheFlushRange((unsigned int) destFrame, DEMO_MAX_FRAME);

	return;
}

void PrintPattern(u8 *frame, u32 width, u32 height, u32 stride, int pattern)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;

	switch (pattern)
	{
	case TIC_TAC_TOE:
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;

			for(ycoi = 0; ycoi < height; ycoi++)
			{
				if ((xcoi % (width) == width - 4) || (xcoi % (width) == width - 3) || (xcoi % (width) == width - 2) || (xcoi % (width) == width - 1) || (xcoi % (width) == 0) || (xcoi % (width) == 1) || (xcoi % (width) == 2) || (xcoi % (width) == 3) || (xcoi % (width) == 4))
				{
					frame[iPixelAddr] = 0;
					frame[iPixelAddr + 1] = 0;
					frame[iPixelAddr + 2] = 0;
					iPixelAddr += stride;
				}
				else if ((ycoi % (height/3) == height/3 - 2) || (ycoi % (height/3) == height/3 - 1)|| (ycoi % (height/3) == 0)|| (ycoi % (height/3) == 1)|| (ycoi % (height/3) == 2))
				{
					frame[iPixelAddr] = 0;
					frame[iPixelAddr + 1] = 0;
					frame[iPixelAddr + 2] = 0;
					iPixelAddr += stride;
				}
				else
				{
					frame[iPixelAddr] = 255;
					frame[iPixelAddr + 1] = 255;
					frame[iPixelAddr + 2] = 255;
					iPixelAddr += stride;
				}

			}
		}
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
		break;
	case BOX:
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;

			for(ycoi = 0; ycoi < height; ycoi++)
			{
				if ((xcoi % (width) == width - 4) || (xcoi % (width) == width - 3) || (xcoi % (width) == width - 2) || (xcoi % (width) == width - 1) || (xcoi % (width) == 0) || (xcoi % (width) == 1) || (xcoi % (width) == 2) || (xcoi % (width) == 3) || (xcoi % (width) == 4))
				{
					if ((xcoi <= width*game_x + 8) && (xcoi >= ((width*3)/4)*(game_x - 1)) && (ycoi <= (height/3)*(game_y) ) && (ycoi >= (height/3)*(game_y-1)))
					{
						frame[iPixelAddr + 0] = 0;
						frame[iPixelAddr + 1] = 0;
						frame[iPixelAddr + 2] = 255;
					}
					//iPixelAddr += stride;

				}
				else if ((ycoi % (height/3) == height/3 - 2) || (ycoi % (height/3) == height/3 - 1)|| (ycoi % (height/3) == 0)|| (ycoi % (height/3) == 1)|| (ycoi % (height/3) == 2))
				{
					if ((xcoi <= width*game_x ) && (xcoi >= ((width))*(game_x - 1)) && (ycoi <= (height/3)*(game_y) ) && (ycoi >= (height/3)*(game_y-1)))
					{
						frame[iPixelAddr + 0] = 0;
						frame[iPixelAddr + 1] = 0;
						frame[iPixelAddr + 2] = 255;
					}

				}
				iPixelAddr += stride;
			}
		}
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
		break;
	default :
		xil_printf("Error: invalid pattern passed to DemoPrintTest");
	}
}

void ISR(void *callBackRef, void *pVideo)
{
	char *data = (char *) callBackRef;
	*data = 1; //set fRefresh to 1
}

void resetBoard()
{
	int x,y;
	for (x = 0; x < 3; x++)
	{
		for (y = 0; y < 3; y++)
		{
			board[x][y] = NONE;
		}
	}
}


