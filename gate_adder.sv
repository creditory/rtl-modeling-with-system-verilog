module gate_adder

// example 1-1

// define i/o for the module
(input	wire a, b, ci,
 output  wire sum, co
 );
 
 // don't know what this is yet
 timeunit 1ns; timeprecision 1ns;
 
 // define wires to interconnect logic gates
 wire n1, n2, n3;
 
 // define gates and their i/o
 
 xor				  g1 (n1, a, b);
 xor #1.3		  g2 (sum, n1, ci); // #1.3 defines a propagation delay of 1.3ns
 and				  g3 (n2, a, b);
 and				  g4 (n3, n1, ci);
 or  #(1.5, 1.8) g5(co, n2, n3); // #(1.5, 1.8) defines prop. delay of 1.5ns from 0 to 1 and 1.8ns from 1 to 0 for output co

 endmodule: gate_adder
 
 