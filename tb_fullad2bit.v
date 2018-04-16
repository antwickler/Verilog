`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:48:32 12/06/2017
// Design Name:   fulladder
// Module Name:   D:/57083/Verilog/tb_fullad2bit.v
// Project Name:  Verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fullad2bit;

	reg a;
	reg b;
	reg c;
	wire sum;
	wire carry;

	fulladder uut (.a(a), .b(b), .c(c), .sum(sum), .carry(carry));

	initial begin
		#10 a=1'b0; b=1'b0; c=1'b0;
		#10 a=1'b0; b=1'b0; c=1'b1;
		#10 a=1'b0; b=1'b1; c=1'b0;
		#10 a=1'b0; b=1'b1; c=1'b1;
		#10 a=1'b1; b=1'b0; c=1'b0;
		#10 a=1'b1; b=1'b0; c=1'b1;
		#10 a=1'b1; b=1'b1; c=1'b0;
		#10 a=1'b1; b=1'b1; c=1'b1;
		#10 $stop;
	end

endmodule
