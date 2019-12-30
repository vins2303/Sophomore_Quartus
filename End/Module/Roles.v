module Roles #(
    parameter Width = 40,
    parameter Height = 43,
    parameter Jump_Height = 13
)(
    input clk,
    input rst,
    input Stop,
    input Jump_Button,
    output reg [9:0] Point_X,
    output reg [9:0] Point_Y
);
    reg [7:0] Move_Y;

    always@(posedge clk, posedge Jump_Button)begin
        if(Jump_Button) isJump <= 1;
        else if(Move_Y == 0 ) isJump <= 0; 
    end

    reg isJump, Pos_isJump;
    always@(posedge clk) Pos_isJump <= isJump;

    always@(posedge clk, negedge rst)begin
        if(!rst) begin
            Point_X <= 10;
            Point_Y <= 400 - Height;
            Move_Y <= 0;
        end else begin
            if(!Stop) begin
                if(Pos_isJump == 0 && isJump == 1 && Move_Y == 0)begin
                    Move_Y <= (Jump_Height << 1)-1;
                end else if(Move_Y != 0) begin
                    Point_Y <= Point_Y + ( Move_Y > Jump_Height ? - (Move_Y - Jump_Height ) :  (Jump_Height -  Move_Y));
                    Move_Y  <= Move_Y - 1;
                end
            end
        end
    end

endmodule