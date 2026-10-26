module rtl_adder_subtractor

// example 1-3

(input	logic clk,				// 1-bit scalar input
 input	logic mode,				// 1-bit scalar input
 input	logic [31:0] a, b,	// 32-bit vector inputs
 output  logic [31:0] sum		// 32-bit vector outputs
);

// The other primary construct for RTL modeling is "always procedural" blocks which more so describes the when 
// the logic should occur.

	always_ff @(posedge clk) begin
		if (mode == 0) sum <= a + b;
		else				sum <= a - b;
	end
	
endmodule: rtl_adder_subtractor