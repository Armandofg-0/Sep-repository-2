connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B3FC69A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B3FC69A-13722093-0"}
fpga -file C:/Users/fuent/Desktop/Avancesemanal/vitis_export_archive.ide/SW_Base_Booster/_ide/bitstream/DEMO_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/fuent/Desktop/Avancesemanal/vitis_export_archive.ide/HW_Base_Booster/export/HW_Base_Booster/hw/DEMO_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/fuent/Desktop/Avancesemanal/vitis_export_archive.ide/SW_Base_Booster/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/fuent/Desktop/Avancesemanal/vitis_export_archive.ide/SW_Base_Booster/Debug/SW_Base_Booster.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
