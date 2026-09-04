`timescale 1ns / 1ps

// Traffic Light Controller Testbench
// Author: YOKESH R

module traffic_light_tb;

    reg clk;
    reg reset;

    wire red;
    wire green;
    wire yellow;

    traffic_light uut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .green(green),
        .yellow(yellow)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        clk = 0;
        reset = 1;

        // Apply reset
        #10;
        reset = 0;

        // Allow state transitions
        #10;
        #10;
        #10;
        #10;
        #10;

        $finish;
    end

endmodule
