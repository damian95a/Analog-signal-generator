# ----------------------------------------------------------------------------
# Clock Source - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"

# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN P16 [get_ports {rst}];  # "BTNC"
#set_property PACKAGE_PIN R16 [get_ports {BTND}];  # "BTND"
#set_property PACKAGE_PIN N15 [get_ports {BTNL}];  # "BTNL"
#set_property PACKAGE_PIN R18 [get_ports {BTNR}];  # "BTNR"
#set_property PACKAGE_PIN T18 [get_ports {BTNU}];  # "BTNU"

# ----------------------------------------------------------------------------
# JA Pmod - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y11  [get_ports {sync}];  # "JA1"
#set_property PACKAGE_PIN AA8  [get_ports {}];  # "JA10"
set_property PACKAGE_PIN AA11 [get_ports {mosi}];  # "JA2"
#set_property PACKAGE_PIN Y10  [get_ports {JA3}];  # "JA3"
set_property PACKAGE_PIN AA9  [get_ports {sclk}];  # "JA4"
#set_property PACKAGE_PIN AB11 [get_ports {JA7}];  # "JA7"
#set_property PACKAGE_PIN AB10 [get_ports {JA8}];  # "JA8"
#set_property PACKAGE_PIN AB9  [get_ports {JA9}];  # "JA9"

# ----------------------------------------------------------------------------
# JB Pmod - Bank 13
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN W12 [get_ports {outsync}];  # "JB1" <- TRIGGER
##set_property PACKAGE_PIN V8 [get_ports {JB10}];  # "JB10"
#set_property PACKAGE_PIN W11 [get_ports {outmosi}];  # "JB2"
#set_property PACKAGE_PIN V10 [get_ports {outsclk}];  # "JB3"
##set_property PACKAGE_PIN W8 [get_ports {JB4}];  # "JB4"
##set_property PACKAGE_PIN V12 [get_ports {JB7}];  # "JB7"
##set_property PACKAGE_PIN W10 [get_ports {JB8}];  # "JB8"
##set_property PACKAGE_PIN V9 [get_ports {JB9}];  # "JB9"

# ----------------------------------------------------------------------------
# JB Pmod - Bank 13
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN W12 [get_ports {JB1}];  # "JB1" <- TRIGGER
#set_property PACKAGE_PIN V8 [get_ports {JB10}];  # "JB10"
#set_property PACKAGE_PIN W11 [get_ports {JB2}];  # "JB2"
set_property PACKAGE_PIN V10 [get_ports {tx}];  # "JB3"
set_property PACKAGE_PIN W8 [get_ports {rx}];  # "JB4"
#set_property PACKAGE_PIN V12 [get_ports {JB7}];  # "JB7"
#set_property PACKAGE_PIN W10 [get_ports {JB8}];  # "JB8"
#set_property PACKAGE_PIN V9 [get_ports {JB9}];  # "JB9"

# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
#set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];