`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:51 12/06/2017 
// Design Name: 
// Module Name:    syncount4bit 
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
module syncount4bit(q, clk, rst);
	
	output [3:0]q;
	input clk, rst;
	reg [3:0]q;
	
	always @(posedge clk)
	begin
		if(rst|q==4'b1111)
			q<=4'b0000;
		else
			q<=q+1;
	end

endmodule
