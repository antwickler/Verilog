`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:14:46 12/06/2017
// Design Name:   decoder2to4
// Module Name:   D:/57083/Verilog/tb_decoder.v
// Project Name:  Verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder2to4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module tb_decoder;
	wire Y3, Y2, Y1, Y0;
	reg A, B;
	reg en;

	initial begin
		$timeformat(-9, 1, " ns", 6); #1;
			A = 1'b0; // time = 0
			B = 1'b0;
			en = 1'b0;
			#9;
			en = 1'b1; // time = 10
			#10;
			A = 1'b0;
			B = 1'b1; // time = 20
			#10;
			A = 1'b1;
			B = 1'b0; // time = 30
			#10;
			A = 1'b1;
			B = 1'b1; // time = 40
			#5;
			en = 1'b0; // time = 45
			#5;
		end
		always @(A or B or en)
			#1 $display("t=%t",$time," en=%b",en," A=%b",A," B=%b",B," Y=%b%b%b%b",Y3,Y2,Y1,Y0);
      
endmodule

