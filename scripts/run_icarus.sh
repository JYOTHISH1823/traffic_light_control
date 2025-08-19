#!/bin/bash
echo "Compiling Traffic Light FSM..."
iverilog -o traffic_light_tb.out ../src/traffic_light.v ../tb/traffic_light_tb.v

echo "Running Simulation..."
vvp traffic_light_tb.out

echo "Opening GTKWave..."
gtkwave traffic_light.vcd
echo "Simulation complete. Check GTKWave for results."