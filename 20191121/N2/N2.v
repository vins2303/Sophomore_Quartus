module N2(clk, reset, KEY3, SW,  LEDR, HEX3, HEX2, HEX1, HEX0);
input clk, reset, KEY3;
input [1:0]SW;

output reg [17:0] LEDR;
output [6:0] HEX3, HEX2, HEX1, HEX0;
wire _key3;
wire _clk;

reg [9:0]fraction;
wire [15:0]fraction_bcd;

Button_Key butkey(clk, KEY3, _key3);
LSCLK ck(.in_clk(clk), .reset(reset), .sel(SW), .out(_clk));
Bin_Bcd ginbcd(.bin(fraction), .bcd(fraction_bcd));

Segment_7 s70(.num(fraction%10),.out(HEX0));
Segment_7 s71(.num(fraction/10 %10),.out(HEX1));
Segment_7 s72(.num(fraction/100%10),.out(HEX2));
Segment_7 s73(.num(fraction/1000),.out(HEX3));

always@(negedge _key3, negedge reset)begin 
    if(reset == 0)begin
        fraction <= 0;
    end else begin
        if(LEDR & 18'b110110000000000000)
            fraction <= fraction + 7 > 994 ? 1000 : fraction + 7;
        else if(LEDR == 18'b001000000000000000)
            fraction <= fraction + 10 > 981 ? 1000 : fraction + 10;
        else fraction <= fraction < 5 ? 0 : fraction -5;
    end
end




always@(posedge _clk, negedge reset)begin // LED
    if(reset == 0)begin
        LEDR <= 1;
    end else begin
        LEDR<= LEDR == 18'b100000000000000000 ? 1 : LEDR << 1;
    end
end

endmodule

module LSCLK(in_clk, reset, sel, out);
input in_clk, reset;
input [1:0] sel;
output reg out;
reg [24:0]count;
reg [24:0]count_end;

always@(posedge in_clk)begin
    if(reset == 0)begin
        count <=0;
        out <= 0;
    end else begin
	    //  out <= out == 0 ? 1 : 0;
        if(count<count_end)begin
            count <= count +1;
        end else begin
            count <= 0;
            out <= out == 0 ? 1 : 0;
        end
    end
end

always@(sel)begin
    case(sel)
        2'b00: count_end = 1250000;
        2'b01: count_end = 2500000;
        2'b10: count_end = 5000000;
        2'b11: count_end =25000000;
    endcase
end

endmodule