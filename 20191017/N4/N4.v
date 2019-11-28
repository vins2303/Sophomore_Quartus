module N4(clk, reset, row, col, row_time, col_time);
input clk, reset;
output reg [2:0] row, col;
output reg [5:0] row_time, col_time;
reg [2:0] state;
reg [2:0] NextState;
parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011,S4=3'b100,S5=3'b101;

always@(posedge clk) begin
	if(reset == 0) begin
		state <= S0;
		row_time <= 30;
		col_time <= 0;
	end else begin
        state <= NextState;
		  if(row_time != 0) row_time <= col_time == 2 ? 62 : row_time - 1;
		  if(col_time != 0) col_time <= row_time == 2 ? 32 : col_time - 1;
        //row_time <= row_time == 0 ? (col_time == 2 ? 62 : 0) : row_time - 1;
        //col_time <= col_time == 0 ? (row_time == 2 ? 32 : 0) : col_time - 1;
	end

end

always@(row_time, col_time) begin
    case(state)
		S0: NextState = row_time == 7 ? S1 : S0;
		S1: NextState = row_time == 2 ? S2 : S1; 	
		S2: NextState = S3;
		S3: NextState = col_time == 7 ? S4 : S3;
		S4: NextState = col_time == 2 ? S5 : S4;
		S5: NextState = S0;
		default: NextState = S0;
	endcase
end

always @(state) begin
	/*row = state == 3 ? 3'b001 : state == 4 ? 3'b010 : 3'b100;
	col = state == 0 ? 3'b001 : state == 1 ? 3'b010 : 3'b100;*/
    case(state)
        S0:begin
            row = 3'b100;
            col = 3'b001;
        end
        S1:begin
            row = 3'b100;
            col = 3'b010;
        end
        S2:begin
            row = 3'b100;
            col = 3'b100;
        end
        S3:begin
            row = 3'b001;
            col = 3'b100;
        end
        S4:begin
            row = 3'b010;
            col = 3'b100;
        end
        S5:begin
            row = 3'b100;
            col = 3'b100;
        end
		default: begin
			row = 3'b000;
            col = 3'b000;
		end
    endcase
end

endmodule