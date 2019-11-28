module JK(clk, rst, out , J, K, valid);
input clk, rst, valid, J, K;
output reg out;

always@(posedge clk)
    if(rst == 1) begin
        out <= 0;
    end else begin 
        if(valid == 1)begin 
            if(J == 0 && K == 0)
                out <= out;
            else if(J == 0 && K == 1)
                out <= 0;
            else if(J == 1 && K == 0)
                out <= 1;
            else if(J == 1 && K == 1)
                out <= ~out;    
        end else begin 
            out <= 0;
        end
    end
endmodule