module rtl_adder

// example 1-2

(input	logic a, b, ci,
 output	logic sum, co
 );
	
// RTL level is more abstract such that the functionality of the file may be understood upon reading the code
// rather than investigating the connection of each gate to understand the functionality of the file.
// Another advantage is that it adapts towards the data size.

	assign {co, sum} = a + b + ci; // Continuous assignment: always starts with assign.
	
endmodule: rtl_adder