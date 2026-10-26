module test

// example 1-5

(output logic [31:0] a, b,
 output logic 		   mode,
 input  logic [31:0] sum,
 input  logic 		   clk
);

	timeunit 1ns; timeprecision 1ns;
	
	// generate stimulus
	initial begin	// initial: executes line by line
		repeat (10) begin
			@(negedge clk) ; // driving the stiumulus at the negative edge prevents race case
			void'(std::randomize(a) with {a >= 10; a <= 20;});
			void'(std::randomize(b) with {b <= 10;});
			void'(std::randomize(mode));
			
			// at the next negative clock edge check the results
			@(negedge clk) check_results;
		end
		@(negedge clk) $finish;
	end

	// verify results
	task check_results;
		$display("At 0%d: \t a=%0d b=%0d mode=%b sum=%0d",
					$time, a, b, mode, sum);
		case (mode)
		1'b0: if (sum !== a + b)
					$error("expected sum = %0d", a + b);
		1'b1: if (sum !== a - b)
					$error("expected sum = %0d", a - b);
		endcase
	endtask
endmodule: test