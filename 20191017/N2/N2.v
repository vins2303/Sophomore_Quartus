module N2(clk,in,out,rst);
input clk, in, rst;
output reg out;
reg [3:0] state, next_state;

always@(posedge clk)begin
	if(rst)begin
		state <= 0;
		out <= 0;
	end else begin
		state <= next_state;
		out <= next_state == 9 ? 1 : 0;
	end

end

always@(clk, in)begin
	case(state)
		0: next_state = in ? 0 : 1;
		1: next_state = in ? 2 : 1;
		2: next_state = in ? 3 : 1;
		3: next_state = in ? 0 : 4;
		4: next_state = in ? 5 : 1;
		5: next_state = in ? 3 : 6;
		6: next_state = in ? 7 : 1;
		7: next_state = in ? 3 : 8;
		8: next_state = in ? 9 : 1;
		9: next_state = in ? 3 : 1;
		default: next_state = 0;
	endcase
end

//always@(posedge clk)begin
	
//end

endmodule