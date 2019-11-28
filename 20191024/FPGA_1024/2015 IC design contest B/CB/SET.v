module SET ( clk , rst, en, central, radius, mode, busy, valid, candidate );
`define centralAX central[23:20]
`define centralAY central[19:16]
`define radiusA radius [11:8]

`define centralBX central[15:12]
`define centralBY central[11: 8]
`define radiusB radius [ 7: 4]

`define centralCX central[ 7: 4]
`define centralCY central[ 3: 0]
`define radiusC radius [ 3: 0]

input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output reg busy;
output reg valid;
output reg [7:0] candidate;

integer i,j;
reg [8:0] row; 
wire [7:0] isRang_N[2:0];
reg [7:0]total;

isRang RA0(.out(isRang_N[0][0]), .n_x(1), .n_y(row), ._x(`centralAX), ._y(`centralAY), ._r(`radiusA));
isRang RA1(.out(isRang_N[0][1]), .n_x(2), .n_y(row), ._x(`centralAX), ._y(`centralAY), ._r(`radiusA));
isRang RA2(.out(isRang_N[0][2]), .n_x(3), .n_y(row), ._x(`centralAX), ._y(`centralAY), ._r(`radiusA));
isRang RA3(.out(isRang_N[0][3]), .n_x(4), .n_y(row), ._x(`centralAX), ._y(`centralAY), ._r(`radiusA));
isRang RA4(.out(isRang_N[0][4]), .n_x(5), .n_y(row), ._x(`centralAX), ._y(`centralAY), ._r(`radiusA));
isRang RA5(.out(isRang_N[0][5]), .n_x(6), .n_y(row), ._x(`centralAX), ._y(`centralAY), ._r(`radiusA));
isRang RA6(.out(isRang_N[0][6]), .n_x(7), .n_y(row), ._x(`centralAX), ._y(`centralAY), ._r(`radiusA));
isRang RA7(.out(isRang_N[0][7]), .n_x(8), .n_y(row), ._x(`centralAX), ._y(`centralAY), ._r(`radiusA));

isRang RB0(.out(isRang_N[1][0]), .n_x(1), .n_y(row), ._x(`centralBX), ._y(`centralBY), ._r(`radiusB));
isRang RB1(.out(isRang_N[1][1]), .n_x(2), .n_y(row), ._x(`centralBX), ._y(`centralBY), ._r(`radiusB));
isRang RB2(.out(isRang_N[1][2]), .n_x(3), .n_y(row), ._x(`centralBX), ._y(`centralBY), ._r(`radiusB));
isRang RB3(.out(isRang_N[1][3]), .n_x(4), .n_y(row), ._x(`centralBX), ._y(`centralBY), ._r(`radiusB));
isRang RB4(.out(isRang_N[1][4]), .n_x(5), .n_y(row), ._x(`centralBX), ._y(`centralBY), ._r(`radiusB));
isRang RB5(.out(isRang_N[1][5]), .n_x(6), .n_y(row), ._x(`centralBX), ._y(`centralBY), ._r(`radiusB));
isRang RB6(.out(isRang_N[1][6]), .n_x(7), .n_y(row), ._x(`centralBX), ._y(`centralBY), ._r(`radiusB));
isRang RB7(.out(isRang_N[1][7]), .n_x(8), .n_y(row), ._x(`centralBX), ._y(`centralBY), ._r(`radiusB));

isRang RC0(.out(isRang_N[2][0]), .n_x(1), .n_y(row), ._x(`centralCX), ._y(`centralCY), ._r(`radiusC));
isRang RC1(.out(isRang_N[2][1]), .n_x(2), .n_y(row), ._x(`centralCX), ._y(`centralCY), ._r(`radiusC));
isRang RC2(.out(isRang_N[2][2]), .n_x(3), .n_y(row), ._x(`centralCX), ._y(`centralCY), ._r(`radiusC));
isRang RC3(.out(isRang_N[2][3]), .n_x(4), .n_y(row), ._x(`centralCX), ._y(`centralCY), ._r(`radiusC));
isRang RC4(.out(isRang_N[2][4]), .n_x(5), .n_y(row), ._x(`centralCX), ._y(`centralCY), ._r(`radiusC));
isRang RC5(.out(isRang_N[2][5]), .n_x(6), .n_y(row), ._x(`centralCX), ._y(`centralCY), ._r(`radiusC));
isRang RC6(.out(isRang_N[2][6]), .n_x(7), .n_y(row), ._x(`centralCX), ._y(`centralCY), ._r(`radiusC));
isRang RC7(.out(isRang_N[2][7]), .n_x(8), .n_y(row), ._x(`centralCX), ._y(`centralCY), ._r(`radiusC));

//read
always@(posedge clk) begin
    if(rst)begin
        row <= 0;
        valid <= 0;
        busy <= 0;
    end else begin
        if(en) begin
            busy <= 1;
            row <= 0;
            valid <= 0;

        end else begin
            if(row == 9)begin
                busy <= 0;
                row <= 0;
                valid <= 1;
                candidate <= total;
            end else begin
                row <= row +1;
            end
        end

    end

end

always@(row) begin
    

    for(i=0;i<8;i=i+1)begin
        case (mode)
            2'b00:begin
                if(isRang_N[0][i]) 
                    total = total + 1;
            end
            2'b01:begin
                if(isRang_N[0][i] && isRang_N[1][i])
                    total = total + 1;
            end

            2'b10:begin
                if(isRang_N[0][i] ^ isRang_N[1][i])
                    total = total + 1;
            end

            2'b11:begin
                if((~(isRang_N[0][i] && isRang_N[1][i] && isRang_N[2][i])) &&
                   ((isRang_N[0][i] && isRang_N[1][i]) || (isRang_N[1][i] && isRang_N[2][i]) || (isRang_N[0][i] && isRang_N[2][i]) ) )
                    total = total + 1;

            end
        endcase
    end
    if(row == 1) total = 0;
end

endmodule


module isRang(out, n_x, n_y, _x, _y, _r);
input [3:0] n_x, n_y, _x, _y, _r;
output reg out;
reg signed [8:0] XX, YY, ZZ;
always@(*)begin
    XX = (n_x - _x) ** 2;
    YY = (n_y - _y) ** 2;
    ZZ = _r **2;
    out = XX + YY <= ZZ ? 1:0;
end
endmodule