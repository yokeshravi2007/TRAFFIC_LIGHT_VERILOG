`timescale 1ns / 1ps

// Traffic Light Controller
// Author: YOKESH R

module traffic_light(
    input clk,
    input reset,
    output reg red,
    output reg green,
    output reg yellow
);

    reg [1:0] next_state, state;

    parameter S0 = 2'b00;  // Red
    parameter S1 = 2'b01;  // Green
    parameter S2 = 2'b10;  // Yellow

    // State register
    always @(posedge clk) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    // Next-state logic
    always @(*) begin
        case(state)
            S0: next_state = S1;
            S1: next_state = S2;
            S2: next_state = S0;
            default: next_state = S0;
        endcase
    end

    // Output logic
    always @(*) begin
        red = 0;
        yellow = 0;
        green = 0;

        case(state)
            S0: red = 1;
            S1: green = 1;
            S2: yellow = 1;
            default: red = 1;
        endcase
    end

endmodule
