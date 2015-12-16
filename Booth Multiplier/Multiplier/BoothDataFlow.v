`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:16 11/06/2015 
// Design Name: 
// Module Name:    BoothDataFlow 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BoothDataFlow(P,multiplicand,multiplier,clk);

input signed [3:0] multiplicand,multiplier;
input clk;
output reg [7:0] P;
	assign P = multiplicand * multiplier; // for using dedicated multiplier	
endmodule
