`timescale 1ns/10ps
module N1(clk, in, out, reset, state);
	parameter S0 = 0,
             S1 = 1,
             S2 = 2,
             S3 = 3,
             S4 = 4,
             S5 = 5,
             S6 = 6,
             S7 = 7;
	input clk, in, reset;
	output reg out;
	output reg [2:0]state;
	reg [2:0] next_state;
	always@(posedge clk)begin
		if(reset)begin
			state <= 0;
		end else begin
			state <= next_state;
		end
	end
	
	always@( clk , in)begin
		case(state)
			S0: next_state = in ? S3 : S0;
			S1: next_state = in ? S4 : S2;
			S2: next_state = in ? S0 : S5;
			S3: next_state = in ? S7 : S1;
			S4: next_state = in ? S1 : S7;
			S5: next_state = in ? S6 : S7;
			S6: next_state = in ? S7 : S5;
			S7: next_state = in ? S1 : S7;
			default: next_state = 0;
		endcase
	end
	
	always@(posedge clk)begin
		case(state)
			S0: out <= in ? 1 : 0;
			S1: out <= in ? 1 : 1;
			S2: out <= in ? 0 : 1;
			S3: out <= in ? 1 : 0;
			S4: out <= in ? 0 : 1;
			S5: out <= in ? 1 : 1;
			S6: out <= in ? 1 : 0;
			S7: out <= in ? 0 : 0;
			default out <= 0;
		endcase
	end

endmodule