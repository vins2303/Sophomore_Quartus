module N3(SW,KEY1 ,KEY2 ,KEY3, clk, HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7);
input clk, KEY1, KEY2, KEY3;
input [7:0] SW;
output [6:0] HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7;
//---------------------------------------------------------------------------
// `define reset  KEY1;
// `define w_num  KEY3;
// `define over  KEY2;
// `define sel_num  SW[3:0];
// `define sel     SW[5:4];
// `define sel_Mod  SW[7:6];
//////////////////////////////////////////////////////////////////////////
Segment_7 A0(.num(AB[0]), .out(HEX7));
Segment_7 A1(.num(AB[1]), .out(HEX6));

Segment_7 B0(.num(AB[2]), .out(HEX5));
Segment_7 B1(.num(AB[3]), .out(HEX4));

Segment_7 over3(.num(over_ram[15:12]), .out(HEX3));
Segment_7 over2(.num(over_ram[11:8]), .out(HEX2));
Segment_7 over1(.num(over_ram[7:4]), .out(HEX1));
Segment_7 over0(.num(over_ram[3:0]), .out(HEX0));
reg [3:0] AB [0:3];
reg [15:0] over_ram;

always@(negedge KEY3, negedge KEY1)begin
    if(KEY1 == 0)begin
        AB[0] <= 0;
        AB[1] <= 0;
        AB[2] <= 0;
        AB[3] <= 0;
    end else AB[SW[5:4]] <=  SW[3:0];
end

always@(negedge KEY2, negedge KEY1) begin
    if(KEY1 == 0)
        over_ram <= 0;
    case (SW[7:6])
        2'b00: over_ram <= {AB[0],AB[1]} + {AB[2],AB[3]};
        2'b01: over_ram <= {AB[0],AB[1]} - {AB[2],AB[3]};
        2'b10: over_ram <= {AB[0],AB[1]} * {AB[2],AB[3]};
        2'b11: over_ram <= {AB[0],AB[1]} / {AB[2],AB[3]};
    endcase
end

endmodule