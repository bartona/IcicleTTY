source "C:/Users/Aaron/AppData/Local/Synplicity/scm_perforce.tcl"
history clear
project -load top_syn.prj
project -run rtl_check -bg 
project -run rtl_check -bg 
project -run fsm_explorer -bg 
project -close C:/Users/Aaron/Desktop/fpga2/FPGA/synthesis/top_syn.prj
