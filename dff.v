`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:17 12/06/2017 
// Design Name: 
// Module Name:    dff 
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
module dff(cin, dout, clk, reset); 
	input cin;
	input clk, reset;

	output reg dout;

	always@(posedge clk)
	begin
		if(reset)
			dout<=1'd0;
		else
			dout<=cin; 
	end

endmodule
