// design module with RTL model of a D-type register

// example 1-7

module d_reg (input  logic			clk,
				  input  logic [7:0] d,
				  output	logic [7:0] q
				 );
	timeunit 1ns; timeprecision 1ns;
	
	always @(posedge clk)
		q <= d;
		
endmodule: d_reg

// top-level verification module with clock oscillator

module top;
		timeunit 1ns; timeprecision 1ns;
	logic		   clk;
	logic [7:0] d;
	logic [7:0] q;
		
	test  i1 (.*);  // connect top module to test module
	d_reg i2 (.*);  // connect top module to d_reg module
	
	initial begin; // clock oscillator
		clk <= 0;					// initialize clock at time 0 
		forever #5 clk = ~clk;  // toggle clock every 5ns
	end
endmodule: top



// test module with stimulus generator

module test (input  logic		  clock,
				 output logic [7:0] d,
				 input  logic [7:0] q
				);
	timeunit 1ns; timeprecision 1ns;
	
	initial begin
		d = 1;
		#7  d = 2;
		#10 d = 3;
		#10 $finish;
	end
endmodule: test