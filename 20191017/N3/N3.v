module N3(clk, reset, def, r);
input clk, reset;
output def;
output reg [6:0]r;
assign def = r == 15?1:0;
always@(posedge clk)begin
	if(reset == 0)begin
		r<= 15;//00001111
	end else begin
		r <= {r[5:0], r[0]^r[6]};
	end
end


endmodule