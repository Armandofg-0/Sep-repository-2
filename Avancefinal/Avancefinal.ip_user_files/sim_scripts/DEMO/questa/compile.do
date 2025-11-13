vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/dist_mem_gen_v8_0_13
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/lib_fifo_v1_0_14
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_quad_spi_v3_2_20
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_7
vlib questa_lib/msim/processing_system7_vip_v1_0_9
vlib questa_lib/msim/axi_gpio_v2_0_23
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_21
vlib questa_lib/msim/axi_data_fifo_v2_1_20
vlib questa_lib/msim/axi_crossbar_v2_1_22
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_iic_v2_0_24
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/lib_bmg_v1_0_13
vlib questa_lib/msim/axi_traffic_gen_v3_0_7
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_timer_v2_0_23
vlib questa_lib/msim/xlconcat_v2_1_3
vlib questa_lib/msim/axi_protocol_converter_v2_1_21

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap dist_mem_gen_v8_0_13 questa_lib/msim/dist_mem_gen_v8_0_13
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 questa_lib/msim/lib_fifo_v1_0_14
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_quad_spi_v3_2_20 questa_lib/msim/axi_quad_spi_v3_2_20
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 questa_lib/msim/axi_vip_v1_1_7
vmap processing_system7_vip_v1_0_9 questa_lib/msim/processing_system7_vip_v1_0_9
vmap axi_gpio_v2_0_23 questa_lib/msim/axi_gpio_v2_0_23
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_21 questa_lib/msim/axi_register_slice_v2_1_21
vmap axi_data_fifo_v2_1_20 questa_lib/msim/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 questa_lib/msim/axi_crossbar_v2_1_22
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_iic_v2_0_24 questa_lib/msim/axi_iic_v2_0_24
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap lib_bmg_v1_0_13 questa_lib/msim/lib_bmg_v1_0_13
vmap axi_traffic_gen_v3_0_7 questa_lib/msim/axi_traffic_gen_v3_0_7
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_timer_v2_0_23 questa_lib/msim/axi_timer_v2_0_23
vmap xlconcat_v2_1_3 questa_lib/msim/xlconcat_v2_1_3
vmap axi_protocol_converter_v2_1_21 questa_lib/msim/axi_protocol_converter_v2_1_21

vlog -work xilinx_vip  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_13  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_20  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1735/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/ip/DEMO_axi_quad_spi_0_0/sim/DEMO_axi_quad_spi_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_9  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_processing_system7_0_0/sim/DEMO_processing_system7_0_0.v" \

vcom -work axi_gpio_v2_0_23  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/bb35/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/ip/DEMO_axi_gpio_0_0/sim/DEMO_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_xbar_0/sim/DEMO_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/ip/DEMO_rst_ps7_0_50M_0/sim/DEMO_rst_ps7_0_50M_0.vhd" \
"../../../bd/DEMO/ip/DEMO_axi_quad_spi_1_0/sim/DEMO_axi_quad_spi_1_0.vhd" \

vcom -work axi_iic_v2_0_24  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/d1e4/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/ip/DEMO_axi_iic_0_1/sim/DEMO_axi_iic_0_1.vhd" \

vlog -work blk_mem_gen_v8_4_4  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_13  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work axi_traffic_gen_v3_0_7  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/axi_traffic_gen_v3_0_rfs.vhd" \

vlog -work axi_traffic_gen_v3_0_7  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/axi_traffic_gen_v3_0_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_traffic_gen_0_0/sim/DEMO_axi_traffic_gen_0_0.v" \
"../../../bd/DEMO/ip/DEMO_axi_traffic_gen_1_0/sim/DEMO_axi_traffic_gen_1_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/ip/DEMO_vio_0_0/sim/DEMO_vio_0_0.vhd" \
"../../../bd/DEMO/ipshared/25d7/hdl/rgb_rainbow_v1_0_S00_AXI.vhd" \
"../../../bd/DEMO/ipshared/25d7/hdl/rgb_rainbow_v1_0.vhd" \
"../../../bd/DEMO/ip/DEMO_rgb_rainbow_0_3/sim/DEMO_rgb_rainbow_0_3.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/sim/bd_2e8b.v" \

vlog -work xlconstant_v1_1_7  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_0/sim/bd_2e8b_one_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_1/sim/bd_2e8b_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/053f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_2/sim/bd_2e8b_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_3/sim/bd_2e8b_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/9d43/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_4/sim/bd_2e8b_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_5/sim/bd_2e8b_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_6/sim/bd_2e8b_sarn_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_7/sim/bd_2e8b_srn_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_8/sim/bd_2e8b_sawn_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_9/sim/bd_2e8b_swn_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_10/sim/bd_2e8b_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_11/sim/bd_2e8b_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/7af8/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_12/sim/bd_2e8b_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_4/sim/DEMO_axi_smc_4.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/ip/DEMO_rst_clk_125M_2/sim/DEMO_rst_clk_125M_2.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/sim/bd_088f.v" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_0/sim/bd_088f_one_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_1/sim/bd_088f_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_2/sim/bd_088f_s00mmu_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_3/sim/bd_088f_s00tr_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_4/sim/bd_088f_s00sic_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_5/sim/bd_088f_s00a2s_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_6/sim/bd_088f_sarn_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_7/sim/bd_088f_srn_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_8/sim/bd_088f_sawn_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_9/sim/bd_088f_swn_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_10/sim/bd_088f_sbn_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_11/sim/bd_088f_m00s2a_0.sv" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_12/sim/bd_088f_m00e_0.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_axi_smc_1_3/sim/DEMO_axi_smc_1_3.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/ipshared/4056/src/rgb_controller.vhd" \
"../../../bd/DEMO/ip/DEMO_rgb_controller_0_0/sim/DEMO_rgb_controller_0_0.vhd" \
"../../../bd/DEMO/ip/DEMO_vio_1_0/sim/DEMO_vio_1_0.vhd" \
"../../../bd/DEMO/ip/DEMO_vio_2_0/sim/DEMO_vio_2_0.vhd" \
"../../../bd/DEMO/ip/DEMO_ila_0_0/sim/DEMO_ila_0_0.vhd" \
"../../../bd/DEMO/ipshared/84ec/Debouncer.vhd" \
"../../../bd/DEMO/ip/DEMO_debouncer_0_0/sim/DEMO_debouncer_0_0.vhd" \
"../../../bd/DEMO/ipshared/f1fe/src/state_machine.vhd" \
"../../../bd/DEMO/ip/DEMO_state_machine_0_1/sim/DEMO_state_machine_0_1.vhd" \

vcom -work axi_timer_v2_0_23  -93 \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/eb71/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/ip/DEMO_axi_timer_0_0/sim/DEMO_axi_timer_0_0.vhd" \

vlog -work xlconcat_v2_1_3  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_xlconcat_0_0/sim/DEMO_xlconcat_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/ip/DEMO_axi_timer_1_0/sim/DEMO_axi_timer_1_0.vhd" \
"../../../bd/DEMO/ip/DEMO_axi_gpio_1_0/sim/DEMO_axi_gpio_1_0.vhd" \
"../../../bd/DEMO/ipshared/fd3b/src/BuzzerBooster_Driver_v1_0_S00_AXI.vhd" \
"../../../bd/DEMO/ipshared/fd3b/src/BuzzerBooster_Driver_v1_0.vhd" \
"../../../bd/DEMO/ip/DEMO_BuzzerBooster_Driver_0_1/sim/DEMO_BuzzerBooster_Driver_0_1.vhd" \

vlog -work axi_protocol_converter_v2_1_21  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/122e/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/46fd/hdl" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b205/hdl/verilog" "+incdir+../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_auto_pc_0/sim/DEMO_auto_pc_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DEMO/sim/DEMO.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

