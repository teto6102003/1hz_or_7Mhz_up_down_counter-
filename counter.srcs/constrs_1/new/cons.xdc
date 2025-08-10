## Clock signal (optional, in case your design needs it)
set_property PACKAGE_PIN W5 [get_ports {sys_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {sys_clk}]

## Switches (inputs)
set_property PACKAGE_PIN V17 [get_ports {reset}]   
set_property IOSTANDARD LVCMOS33 [get_ports {reset}]

set_property PACKAGE_PIN V16 [get_ports {up_down}]  
set_property IOSTANDARD LVCMOS33 [get_ports {up_down}]

#set_property PACKAGE_PIN W16 [get_ports {sys_clk}]  
#set_property IOSTANDARD LVCMOS33 [get_ports {sys_clk}]

## LEDs (outputs)
set_property PACKAGE_PIN U16 [get_ports {counts[0]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {counts[0]}]

set_property PACKAGE_PIN E19 [get_ports {counts[1]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {counts[1]}]

set_property PACKAGE_PIN U19 [get_ports {counts[2]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {counts[2]}]

set_property PACKAGE_PIN V19 [get_ports {counts[3]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {counts[3]}]

set_property PACKAGE_PIN W18 [get_ports {counts[4]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {counts[4]}]

set_property PACKAGE_PIN U15 [get_ports {counts[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {counts[5]}]

set_property PACKAGE_PIN U14 [get_ports {counts[6]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {counts[6]}]

set_property PACKAGE_PIN V14 [get_ports {counts[7]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {counts[7]}]
