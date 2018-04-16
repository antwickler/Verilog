`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:27 12/06/2017 
// Design Name: 
// Module Name:    bcd7seg 
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
module bcd7seg(
    input [3:0] cin,
    output reg [6:0]seg
    );

	always @*
	case (cin)
		4'b0000 : seg = 7'b1111110;
		4'b0001 : seg = 7'b0110000;
		4'b0010 : seg = 7'b1101101; 
		4'b0011 : seg = 7'b1111001;
		4'b0100 : seg = 7'b0110011;
		4'b0101 : seg = 7'b1011011;  
		4'b0110 : seg = 7'b1011111;
		4'b0111 : seg = 7'b1110000;
		4'b1000 : seg = 7'b1111111;
		4'b1001 : seg = 7'b1111011;
	endcase
 
endmodule
