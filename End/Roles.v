module Roles(
    input clk,
    input rst,
    input Stop,
    input Jump_Button,
    output reg [9:0] Point_X,
    output reg [9:0] Point_Y,
    output [9:0] Width,
    output [9:0] Heigh
);
    parameter Jump_Heigh = 13;
    assign Width = 40;
    assign Heigh = 43;
    reg [7:0] Move_Y;
    reg isMove;
    always@(posedge clk, negedge rst)begin
        if(!rst) begin
            Point_X <= 10;
            Point_Y <= 400 - Heigh;
            Move_Y <= 0;
            isMove <= 0;
        end else begin
            if(!Stop) begin
                if(!Jump_Button && !isMove)begin
                    Move_Y <= Jump_Heigh << 1;
                    isMove <= 1;
                end else if(isMove) begin
                    Point_Y <= Point_Y + ( Move_Y > Jump_Heigh ?   - (Move_Y - Jump_Heigh ) :  (Jump_Heigh - Move_Y));
                    Move_Y  <= Move_Y - 1;
                    if(Move_Y == 0) isMove <= 0;
                end
            end
        end

    end

endmodule