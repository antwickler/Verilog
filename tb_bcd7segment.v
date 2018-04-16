`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:39:56 12/06/2017
// Design Name:   bcd7seg
// Module Name:   D:/57083/Verilog/tb_bcd7segment.v
// Project Name:  Verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bcd7segment;

	reg [3:0] cin;
	wire [6:0] seg;
	
	bcd7seg uut (
		.cin(cin), 
		.seg(seg)
	);
 
	initial begin
		#10 cin = 0;
		#10 cin = 1;
		#10 cin = 2;
		#10 cin = 3;	
		#10 cin = 4;	
		#10 cin = 5;
		#10 cin = 6;
		#10 cin = 7;	
		#10 cin = 8;	
		#10 cin = 9;
		#10 $stop;
    end  
 
	initial begin
		$monitor("cin=%h,seg=%7b",cin,seg);
	end
 
endmodule
