module VVSort_3(
    input clk,reset,
    input in_d,
    input [7:0]num1,num2,num3,num4,
    output reg [7:0]out
    
);

reg[7:0] out_X, swap;
reg [2:0] count;
reg [7:0] buff [0:3];
integer i;

always@(posedge clk)begin
    if(reset == 0)begin
        count <= 0;
        for(i=0;i<4;i=i+1) buff[i]<=8'hFF;
    end else begin
        if(in_d)begin
            count<=count==3?0:count+1;
            if(count == 0)begin
                buff[0] = num1;
                buff[1] = num2;
                buff[2] = num3;
                buff[3] = num4;
            end
            out_X = 8'hff;

            for(i=0;i<4;i=i+1)begin
                if(buff[i] < out_X)begin
                    swap    = out_X;
                    out_X   = buff[i];
                    buff[i] = swap;
                end
            end
            out = out_X;

        end else begin
            count <= 0;
            for(i=0;i<4;i=i+1) buff[i]<=8'hFF;
        end

    end
end



endmodule