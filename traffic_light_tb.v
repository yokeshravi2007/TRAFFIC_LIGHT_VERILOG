`timescale 1ns / 1ps
//YOKESH R

module traffic_light_tb_v;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire red;
	wire green;
	wire yellow;

	// Instantiate the Unit Under Test (UUT)
	traffic_light uut (
		.clk(clk), 
		.reset(reset), 
		.red(red), 
		.green(green), 
		.yellow(yellow)
	);
  always #5 clk =~clk;
	initial begin
	clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #10;
    #10;
    #10;
    #10;
    #10;
	 $finish;
 
	end
      
endmodule

