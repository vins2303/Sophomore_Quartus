module Button_Key(clk ,key, out);
input key, clk;
output reg out;
reg [9:0]count;

always@(posedge clk)begin
    if(count < 100)
        count <= key == out ? 0 :count + 1;
    else begin
        count <= 0;
        out <= key;
    end
end
endmodule