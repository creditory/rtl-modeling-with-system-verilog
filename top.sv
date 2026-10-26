module top;

// example 1-6

	timeunit 1ns; timeprecision 1ns;
	
	logic [31:0] a, b;
	logic			 mode;
	logic [31:0] sum;
	logic			 clk;
	
	test						test (.*);
	rtl_adder_subtractor dut  (.*);
	
	initial begin
		clk <= 0;
		forever #5 clk = ~clk;
	end
endmodule: top