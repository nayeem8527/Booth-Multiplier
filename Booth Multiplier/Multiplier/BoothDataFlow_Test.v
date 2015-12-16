`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:56:57 11/06/2015
// Design Name:   BoothDataFlow
// Module Name:   D:/Mandeep/Sem 3/Embedded Logic Design/Xilinx/Booth/BoothDataFlow_Test.v
// Project Name:  Booth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BoothDataFlow
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BoothDataFlow_Test;

	// Inputs
	reg [3:0] multiplicand;
	reg [3:0] multiplier;
	reg clk;

	// Outputs
	wire [7:0] P;

	// Instantiate the Unit Under Test (UUT)
	BoothDataFlow uut (
		.P(P), 
		.multiplicand(multiplicand), 
		.multiplier(multiplier),  
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		multiplicand = 3;
		multiplier = 7;
		clk = 0;
		#5 clk = !clk;
		// Wait 100 ns for global reset to finish
		#100;  
		// Add stimulus here
	end
	always @(posedge clk) $display("ab: %d", P);

      
endmodule

