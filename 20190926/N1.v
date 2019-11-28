module N1(a,b,mul, div);
input [7:0] a,b;
output reg [11:0] mul;
output reg [11:0] div;

reg [15:0] ram_mul, ram_div;

always@(a,b)begin
	ram_mul = a*b;
	mul = ram_mul>>4;
	ram_div = (a<<4) /b;
	div = ram_div;
end
endmodule
