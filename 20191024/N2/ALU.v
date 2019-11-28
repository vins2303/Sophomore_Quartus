`timescale 1ns/10ps
module ALU(sel, a, b, c);
input [1:0] sel;
input [3:0]a,b;
output reg [7:0] c;

always@(*)begin
    case (sel)
        2'b00: c = a+b;
        2'b01: c = a-b;
        2'b10: c = a*b;
        2'b11: c = a/b;
        default: begin
            c=0;
        end
    endcase

end


endmodule
