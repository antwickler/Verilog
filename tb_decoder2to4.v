`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:07:22 12/06/2017
// Design Name:   decoder2to4
// Module Name:   D:/57083/Verilog/tb_decoder2to4.v
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

module tb_decoder2to4;

	// Inputs
	reg A;
	reg B;
	reg en;

	// Outputs
	wire Y3;
	wire Y2;
	wire Y1;
	wire Y0;

	// Instantiate the Unit Under Test (UUT)
	decoder2to4 uut (
		.Y3(Y3), 
		.Y2(Y2), 
		.Y1(Y1), 
		.Y0(Y0), 
		.A(A), 
		.B(B), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

