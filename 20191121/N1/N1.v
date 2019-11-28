module N1(clk, reset, KEY3, KEY2, SW, ,HEX0, HEX1, HEX2, HEX3);
input clk, reset, KEY3, KEY2, SW;
output [6:0] HEX0, HEX1 ,HEX2,HEX3;
reg [9:0] num_out;
wire key3,key2;

reg OnKEY3, OnKEY2;

Button_Key BUTKEY2(clk, KEY2, key2);
Button_Key BUTKEY3(clk, KEY3, key3);

Segment_7 se0(num_out%10, HEX0);
Segment_7 se1((num_out/10)%10, HEX1);
Segment_7 se2((num_out/100)%10, HEX2);
Segment_7 se3((num_out/1000)%10, HEX3);

always@(posedge clk)begin
    if(reset == 0)begin
        num_out <= 0;
    end else begin
        if(SW == 1)begin
            if(OnKEY3 == 1 && key3 == 0)begin
                num_out <= num_out == 1000 ? 1000 : num_out + 1;
            end else if(OnKEY2 == 1 && key2 == 0) begin
                num_out <= num_out == 0 ? 0 : num_out -1;
            end
        end
    end

    OnKEY3 <= key3;
    OnKEY2 <= key2;
end

endmodule