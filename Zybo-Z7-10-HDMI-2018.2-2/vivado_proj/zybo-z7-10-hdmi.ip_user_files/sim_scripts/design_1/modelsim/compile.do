vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_20
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_3
vlib modelsim_lib/msim/lib_fifo_v1_0_12
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2
vlib modelsim_lib/msim/lib_bmg_v1_0_11
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_20
vlib modelsim_lib/msim/axi_vdma_v6_3_6
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_register_slice_v1_1_18
vlib modelsim_lib/msim/axis_subset_converter_v1_1_18
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_4
vlib modelsim_lib/msim/processing_system7_vip_v1_0_6
vlib modelsim_lib/msim/xlconstant_v1_1_5
vlib modelsim_lib/msim/v_tc_v6_1_13
vlib modelsim_lib/msim/v_vid_in_axi4s_v4_0_9
vlib modelsim_lib/msim/v_axi4s_vid_out_v4_0_10
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_18
vlib modelsim_lib/msim/axi_data_fifo_v2_1_17
vlib modelsim_lib/msim/axi_crossbar_v2_1_19
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_18

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 modelsim_lib/msim/axi_gpio_v2_0_20
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_3 modelsim_lib/msim/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 modelsim_lib/msim/lib_fifo_v1_0_12
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2
vmap lib_bmg_v1_0_11 modelsim_lib/msim/lib_bmg_v1_0_11
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_20 modelsim_lib/msim/axi_datamover_v5_1_20
vmap axi_vdma_v6_3_6 modelsim_lib/msim/axi_vdma_v6_3_6
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_18 modelsim_lib/msim/axis_register_slice_v1_1_18
vmap axis_subset_converter_v1_1_18 modelsim_lib/msim/axis_subset_converter_v1_1_18
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 modelsim_lib/msim/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 modelsim_lib/msim/processing_system7_vip_v1_0_6
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5
vmap v_tc_v6_1_13 modelsim_lib/msim/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 modelsim_lib/msim/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_10 modelsim_lib/msim/v_axi4s_vid_out_v4_0_10
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 modelsim_lib/msim/axi_register_slice_v2_1_18
vmap axi_data_fifo_v2_1_17 modelsim_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 modelsim_lib/msim/axi_crossbar_v2_1_19
vmap axi_protocol_converter_v2_1_18 modelsim_lib/msim/axi_protocol_converter_v2_1_18

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/9097/src/mmcme2_drp.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/9097/src/axi_dynclk_S00_AXI.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/9097/src/axi_dynclk.vhd" \
"../../../bd/design_1/ip/design_1_axi_dynclk_0_0/sim/design_1_axi_dynclk_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_video_0/sim/design_1_axi_gpio_video_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_11 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_20 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_6 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_6 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_18 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/af00/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_in_0/hdl/tdata_design_1_axis_subset_converter_in_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_in_0/hdl/tuser_design_1_axis_subset_converter_in_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_in_0/hdl/tstrb_design_1_axis_subset_converter_in_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_in_0/hdl/tkeep_design_1_axis_subset_converter_in_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_in_0/hdl/tid_design_1_axis_subset_converter_in_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_in_0/hdl/tdest_design_1_axis_subset_converter_in_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_in_0/hdl/tlast_design_1_axis_subset_converter_in_0.v" \

vlog -work axis_subset_converter_v1_1_18 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/33dd/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_in_0/hdl/top_design_1_axis_subset_converter_in_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_in_0/sim/design_1_axis_subset_converter_in_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tdata_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tuser_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tstrb_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tkeep_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tid_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tdest_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tlast_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/top_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/sim/design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/sim/ila_refclk.v" \
"../../../bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/sim/ila_pixclk.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/SyncBase.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/EEPROM_8b.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/TWI_SlaveCtl.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/GlitchFilter.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/SyncAsync.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/DVI_Constants.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/SyncAsyncReset.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/PhaseAlign.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/InputSERDES.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/ChannelBond.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/ResyncToBUFG.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/TMDS_Decoder.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/TMDS_Clocking.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/be44/src/dvi2rgb.vhd" \
"../../../bd/design_1/ip/design_1_dvi2rgb_0_0/sim/design_1_dvi2rgb_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \
"../../../bd/design_1/ip/design_1_proc_sys_reset_fclk0_0/sim/design_1_proc_sys_reset_fclk0_0.vhd" \
"../../../bd/design_1/ip/design_1_proc_sys_reset_fclk1_0/sim/design_1_proc_sys_reset_fclk1_0.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/20df/src/ClockGen.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/20df/src/OutputSERDES.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/20df/src/TMDS_Encoder.vhd" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/20df/src/rgb2dvi.vhd" \
"../../../bd/design_1/ip/design_1_rgb2dvi_1_0/sim/design_1_rgb2dvi_1_0.vhd" \

vlog -work xlconstant_v1_1_5 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_subset_converter_reset_0/sim/design_1_subset_converter_reset_0.v" \

vcom -work v_tc_v6_1_13 -64 -93 \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/a92c/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_10 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_v_tc_in_0/sim/design_1_v_tc_in_0.vhd" \
"../../../bd/design_1/ip/design_1_v_tc_out_0/sim/design_1_v_tc_out_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_vid_in_axi4s_0_0/sim/design_1_v_vid_in_axi4s_0_0.v" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" "+incdir+../../../../zybo-z7-10-hdmi.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_s00_regslice_0/sim/design_1_s00_regslice_0.v" \
"../../../bd/design_1/ip/design_1_s01_regslice_0/sim/design_1_s01_regslice_0.v" \
"../../../bd/design_1/ip/design_1_m00_regslice_0/sim/design_1_m00_regslice_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

