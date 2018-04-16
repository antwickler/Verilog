`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:43:55 12/06/2017 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(a, b, c, sum, carry);

	input a;
	input b;
	input c;
	output sum;
	output carry;
	wire d,e,f;

	xor(sum,a,b,c);
	and(d,a,b);
	and(e,b,c);
	and(f,a,c);
	or(carry,d,e,f);

endmodule
