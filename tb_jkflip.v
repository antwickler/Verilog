`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:53:41 12/06/2017
// Design Name:   jkff
// Module Name:   D:/57083/Verilog/tb_jkflip.v
// Project Name:  Verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jkff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_jkflip;

	reg clk=0;
	reg j=0;
	reg k=0;
	reg reset=1;
	wire q, qnot;

	  jkff dut(reset, clk,j,k,q,qnot);

	initial
	  begin
		
			 j=1'b1; // set
			 k=1'b1; 
		#5  reset=1'b0;
	  end

	always #1 clk=~clk;

endmodule

