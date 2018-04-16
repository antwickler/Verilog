`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:06:48 12/06/2017
// Design Name:   syncount4bit
// Module Name:   D:/57083/Verilog/tb_syncount.v
// Project Name:  Verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: syncount4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_syncount;

	reg clk, rst;
	wire [3:0]q;
	
	syncount4bit c1(q, clk, rst);
	initial 
	begin
		rst = 1;
		clk = 1;
	end
	
	always #5 clk=~clk;
	always #160 rst=~rst;

endmodule
