module test (Sel,Alu,A,B);
input [2:0]Sel;
input[3:0]A,B;
output reg[6:0]Alu;

always@ (Sel or A or B or Alu)begin
case(Sel)
3'b000:Alu=B;
3'b001:Alu=~(A&B);
3'b010:Alu=A|B;
3'b011:Alu=(~B)+1;
3'b100:Alu=A+B;
3'b101:Alu=A-B;
3'b110:Alu=(A>=B)?A:B;
3'b111:Alu=({3'd000,A}<<(B%7))|({3'd000,A}>>(7-(B%7)));
endcase
end
endmodule

