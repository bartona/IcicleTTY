new_project \
    -name {top} \
    -location {C:\Users\Aaron\Desktop\fpga2\FPGA\designer\impl1\top_fp} \
    -mode {single}
set_programming_file -file {C:\Users\Aaron\Desktop\fpga2\FPGA\designer\impl1\top.pdb}
set_programming_action -action {PROGRAM}
catch {run_selected_actions} return_val
save_project
close_project
if { $return_val != 0 } {
  exit 1 }
