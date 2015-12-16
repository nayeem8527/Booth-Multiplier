`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:29:43 11/03/2015
// Design Name:   booth_multiplier
// Module Name:   D:/Mandeep/Sem 3/Embedded Logic Design/Xilinx/Booth/Booth_Test.v
// Project Name:  Booth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: booth_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Booth_Test;

	// Inputs
	reg [3:0] multiplicand;
	reg [3:0] multiplier;
	reg start;
	reg clk;

	// Outputs
	wire [8:0] product;
	wire busy;

	// Instantiate the Unit Under Test (UUT)
	booth_multiplier uut (.P(product), .multiplicand(multiplicand), .multiplier(multiplier), .start(start), .clk(clk), .busy(busy));

	initial begin
		// Initialize Inputs
		$display("first example: a = 3 b = 7");
		multiplicand = 3;
		multiplier = 7;
		start = 1 ;
		clk = 0;
		#100;
	end
	initial begin
		#10 start = 0;
	end
	always #5 clk = !clk;

	always @(posedge clk) $display("ab: %d busy: %d", product, busy);
endmodule

