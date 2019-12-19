`timescale 1ns / 10ps
module booth(out, in1, in2);

parameter width = 6;

input  	[width-1:0] in1;   //multiplicand
input  	[width-1:0] in2;   //multiplier
output reg  [2*width-1:0] out; //product

reg [5:0] A,Q;
reg Q1;
integer i;
always@(in2,in1) begin
    A = 0;
    Q = in2;
    Q1 = 0;
    for(i=0;i<6;i=i+1)begin
        case ({Q[0],Q1})
            2'b01:A=A+in1;
            2'b10:A=A-in1;
            default: A = A;

        endcase
        {A,Q,Q1} = {A[5],A,Q};
    end 
    out = {A,Q};
end

endmodule
