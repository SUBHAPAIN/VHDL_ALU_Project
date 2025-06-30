##MASTER XDC FILE FOR PINE S7 FPGA BOARD xc7s15ftgb196-1

##Buttons (FOR SELECT PINS)
set_property -dict { PACKAGE_PIN B5   IOSTANDARD LVCMOS33 } [get_ports { SEL[0] }]; 
set_property -dict { PACKAGE_PIN A4   IOSTANDARD LVCMOS33 } [get_ports { SEL[1] }]; 
set_property -dict { PACKAGE_PIN A3   IOSTANDARD LVCMOS33 } [get_ports { SEL[2] }]; 
set_property -dict { PACKAGE_PIN B3   IOSTANDARD LVCMOS33 } [get_ports { SEL[3] }]; 

#Slide Switches (FOR INPUTS A AND B)
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { A[0] }]; 
set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { A[1] }]; 
set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { A[2] }]; 
set_property -dict { PACKAGE_PIN C3    IOSTANDARD LVCMOS33 } [get_ports { A[3] }]; 
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { A[4] }]; 
set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { A[5] }]; 
set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { A[6] }]; 
set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { A[7] }]; 
set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { B[0] }]; 
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { B[1] }]; 
set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { B[2] }]; 
set_property -dict { PACKAGE_PIN H13   IOSTANDARD LVCMOS33 } [get_ports { B[3] }]; 
set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { B[4] }]; 
set_property -dict { PACKAGE_PIN E12   IOSTANDARD LVCMOS33 } [get_ports { B[5] }]; 
set_property -dict { PACKAGE_PIN F11   IOSTANDARD LVCMOS33 } [get_ports { B[6] }]; 
set_property -dict { PACKAGE_PIN H11   IOSTANDARD LVCMOS33 } [get_ports { B[7] }]; 

## LEDs (FOR OUTPUT y)
set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33} [get_ports {Y[0]}]; 
set_property -dict { PACKAGE_PIN E4    IOSTANDARD LVCMOS33} [get_ports {Y[1]}]; 
set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33} [get_ports {Y[2]}]; 
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33} [get_ports {Y[3]}]; 
set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33} [get_ports {Y[4]}]; 
set_property -dict { PACKAGE_PIN A12   IOSTANDARD LVCMOS33} [get_ports {Y[5]}]; 
set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33} [get_ports {Y[6]}]; 
set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33} [get_ports {Y[7]}]; 

## FOR FLAG
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33} [get_ports {FLAG}];
