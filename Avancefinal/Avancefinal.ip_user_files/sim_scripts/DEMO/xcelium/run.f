-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_13 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_14 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_quad_spi_v3_2_20 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/1735/hdl/axi_quad_spi_v3_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_quad_spi_0_0/sim/DEMO_axi_quad_spi_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_7 -sv \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_9 -sv \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_processing_system7_0_0/sim/DEMO_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_23 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/bb35/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_gpio_0_0/sim/DEMO_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_21 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_20 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_22 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_xbar_0/sim/DEMO_xbar_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_rst_ps7_0_50M_0/sim/DEMO_rst_ps7_0_50M_0.vhd" \
  "../../../bd/DEMO/ip/DEMO_axi_quad_spi_1_0/sim/DEMO_axi_quad_spi_1_0.vhd" \
-endlib
-makelib xcelium_lib/axi_iic_v2_0_24 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/d1e4/hdl/axi_iic_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_iic_0_1/sim/DEMO_axi_iic_0_1.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_13 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_traffic_gen_v3_0_7 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/axi_traffic_gen_v3_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_traffic_gen_v3_0_7 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/f2df/hdl/axi_traffic_gen_v3_0_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_traffic_gen_0_0/sim/DEMO_axi_traffic_gen_0_0.v" \
  "../../../bd/DEMO/ip/DEMO_axi_traffic_gen_1_0/sim/DEMO_axi_traffic_gen_1_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_vio_0_0/sim/DEMO_vio_0_0.vhd" \
  "../../../bd/DEMO/ipshared/25d7/hdl/rgb_rainbow_v1_0_S00_AXI.vhd" \
  "../../../bd/DEMO/ipshared/25d7/hdl/rgb_rainbow_v1_0.vhd" \
  "../../../bd/DEMO/ip/DEMO_rgb_rainbow_0_3/sim/DEMO_rgb_rainbow_0_3.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/sim/bd_2e8b.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_0/sim/bd_2e8b_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_1/sim/bd_2e8b_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/2702/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/053f/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_2/sim/bd_2e8b_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_3/sim/bd_2e8b_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/9d43/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_4/sim/bd_2e8b_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_5/sim/bd_2e8b_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/4676/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_6/sim/bd_2e8b_sarn_0.sv" \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_7/sim/bd_2e8b_srn_0.sv" \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_8/sim/bd_2e8b_sawn_0.sv" \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_9/sim/bd_2e8b_swn_0.sv" \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_10/sim/bd_2e8b_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_11/sim/bd_2e8b_m00s2a_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/7af8/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/bd_0/ip/ip_12/sim/bd_2e8b_m00e_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_smc_4/sim/DEMO_axi_smc_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_rst_clk_125M_2/sim/DEMO_rst_clk_125M_2.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/sim/bd_088f.v" \
  "../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_0/sim/bd_088f_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_smc_1_3/bd_0/ip/ip_1/sim/bd_088f_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_smc_1_3/sim/DEMO_axi_smc_1_3.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ipshared/4056/src/rgb_controller.vhd" \
  "../../../bd/DEMO/ip/DEMO_rgb_controller_0_0/sim/DEMO_rgb_controller_0_0.vhd" \
  "../../../bd/DEMO/ip/DEMO_vio_1_0/sim/DEMO_vio_1_0.vhd" \
  "../../../bd/DEMO/ip/DEMO_vio_2_0/sim/DEMO_vio_2_0.vhd" \
  "../../../bd/DEMO/ip/DEMO_ila_0_0/sim/DEMO_ila_0_0.vhd" \
  "../../../bd/DEMO/ipshared/84ec/Debouncer.vhd" \
  "../../../bd/DEMO/ip/DEMO_debouncer_0_0/sim/DEMO_debouncer_0_0.vhd" \
  "../../../bd/DEMO/ipshared/f1fe/src/state_machine.vhd" \
  "../../../bd/DEMO/ip/DEMO_state_machine_0_1/sim/DEMO_state_machine_0_1.vhd" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_23 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/eb71/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_timer_0_0/sim/DEMO_axi_timer_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_3 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_xlconcat_0_0/sim/DEMO_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_axi_timer_1_0/sim/DEMO_axi_timer_1_0.vhd" \
  "../../../bd/DEMO/ip/DEMO_axi_gpio_1_0/sim/DEMO_axi_gpio_1_0.vhd" \
  "../../../bd/DEMO/ipshared/fd3b/src/BuzzerBooster_Driver_v1_0_S00_AXI.vhd" \
  "../../../bd/DEMO/ipshared/fd3b/src/BuzzerBooster_Driver_v1_0.vhd" \
  "../../../bd/DEMO/ip/DEMO_BuzzerBooster_Driver_0_1/sim/DEMO_BuzzerBooster_Driver_0_1.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_21 \
  "../../../../Avancefinal.srcs/sources_1/bd/DEMO/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/ip/DEMO_auto_pc_0/sim/DEMO_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DEMO/sim/DEMO.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

