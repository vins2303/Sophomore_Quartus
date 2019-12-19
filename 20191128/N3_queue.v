module N3(clk,reset, rw, KEY0, SW, HEX0, SRAM_DQ, SRAM_ADDR,SRAM_CE_N, SRAM_OE_N, SRAM_WE_N, SRAM_UE_N, SRAM_LE_N);
input clk,reset;
input rw;
input KEY0;
input [7:0]SW;
inout [15:0]SRAM_DQ;
output reg [19:0] SRAM_ADDR;
output reg SRAM_CE_N;
output SRAM_OE_N;
output SRAM_WE_N;
output SRAM_UE_N;
output SRAM_LE_N;

output [6:0]HEX0;

wire key0;
reg [7:0] out_data;
reg key_pos;

Button_Key butke1(.clk(clk),.key(KEY0),.out(key0) );
Segment_7 seg1(.num(out_data),.out(HEX0));

// assign SRAM_CE_N = 1'b0;
assign SRAM_UE_N = 1'd1;
assign SRAM_LE_N = 1'd0;
assign SRAM_OE_N = rw;
assign SRAM_WE_N = !rw; //rw =  0.read 1.wire

assign SRAM_DQ = (!SRAM_WE_N)? {8'b0, SW} : 16'bz;

// assign SRAM_ADDR = (!SRAM_WE_N) ? Tail : Head;

reg is_read;
reg [19:0] Head, Tail;
reg [5:0] count ;
always@(posedge clk)begin
    if(reset == 0)begin
        Head <=0;
        Tail <=0;
        is_read <= 0;
        count<=0;
    end else begin
        if(key_pos == 1 && key0 == 0)begin
            count <= 5;
            if(rw==0)begin //read
                if(Head < Tail)Head <= Head + 1;
                SRAM_ADDR <= Head;
                is_read <= 1;
                SRAM_CE_N <=0;
            end else begin//wire
                Tail <= Tail + 1;
                SRAM_ADDR <= Tail;
                SRAM_CE_N<=0;
                is_read<=0;
            end
        end else begin
            
            is_read<=0;
            if(count == 0) SRAM_CE_N <=1;
            else count<= count -1;
        end
    end
end

always@(posedge clk)begin
    if(reset == 0 )begin
        out_data <= 0;
    end if(is_read == 1)begin
        out_data <= SRAM_DQ[7:0];
    end
end

always@(posedge clk)begin
    key_pos <= key0;
end
endmodule