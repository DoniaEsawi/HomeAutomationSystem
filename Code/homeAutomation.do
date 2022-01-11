vsim work.HomeAutomation
# vsim work.Homeautomation 
# Start time: 22:39:58 on Dec 23,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.homeautomation(homeautomation)
# WARNING: No extended dataflow license exists
add wave -position insertpoint  \
sim:/HomeAutomation/rst \
sim:/HomeAutomation/clk \
sim:/HomeAutomation/frontSens \
sim:/HomeAutomation/rearSens \
sim:/HomeAutomation/WindowSens \
sim:/HomeAutomation/fireSens \
sim:/HomeAutomation/tempSens \
sim:/HomeAutomation/frontOut \
sim:/HomeAutomation/rearOut \
sim:/HomeAutomation/windowOut \
sim:/HomeAutomation/buzz \
sim:/HomeAutomation/cooler \
sim:/HomeAutomation/heater \
sim:/HomeAutomation/state \

force -freeze sim:/HomeAutomation/rst 1 0
force -freeze sim:/HomeAutomation/clk 0 0, 1 {50 ps} -r 100
force -freeze sim:/HomeAutomation/frontSens 1 0
run
force -freeze sim:/HomeAutomation/rst 0 0
run
force -freeze sim:/HomeAutomation/rearSens 1 0
run
force -freeze sim:/HomeAutomation/WindowSens 1 0
force -freeze sim:/HomeAutomation/fireSens 1 0
run
force -freeze sim:/HomeAutomation/tempSens 00000000 0
run
force -freeze sim:/HomeAutomation/tempSens 11111111 0
run
force -freeze sim:/HomeAutomation/rearSens 0 0
run
force -freeze sim:/HomeAutomation/WindowSens 0 0
force -freeze sim:/HomeAutomation/fireSens 0 0
force -freeze sim:/HomeAutomation/tempSens 01000110 0
run
force -freeze sim:/HomeAutomation/frontSens 0 0
run
force -freeze sim:/HomeAutomation/WindowSens 1 0
force -freeze sim:/HomeAutomation/fireSens 1 0
run
run
run
run