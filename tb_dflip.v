`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:02:09 12/06/2017
// Design Name:   dff
// Module Name:   D:/57083/Verilog/tb_dflip.v
// Project Name:  Verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_dflip(); 
	reg cin;
	reg clk, reset;
	wire dout;

	dff UUT(.cin(cin),
	.dout(dout),
	.clk(clk),
	.reset(reset));
	
	initial 
	begin
	// Initiliase Input Stimulus
		cin = 0;
		clk = 1;
		reset = 0;
	end

	always #100 clk=~clk;

	//Stimulus
	initial 
	begin 
		#200 cin = 1'b1; 
		reset = 1'b1;
		#200 cin = 1'b1;
		reset = 1'b1;

		#300 cin = 1'b1;
		reset=1'b0;
		#600 cin = 1'b0;
		#500 cin = 1'b1;
		#200 cin = 1'b0;
		#400 $stop;
	end

endmodule
