`timescale 1ns/1ps

module traffic_light_tb;
    reg clk, reset;
    wire [2:0] lights;

    // Instantiate DUT
    traffic_light dut (
        .clk(clk),
        .reset(reset),
        .lights(lights)
    );

    // Clock Generator
    always #5 clk = ~clk;  // 10ns period

    initial begin
        $dumpfile("traffic_light.vcd");
        $dumpvars(0, traffic_light_tb);

        // Init
        clk = 0;
        reset = 1;
        #10 reset = 0;

        // Run simulation
        #100 $finish;
    end
endmodule