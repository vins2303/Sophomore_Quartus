module Cactus #(
    parameter Width = 15,
    parameter Height = 33
)(
    input clk,
    input rst,
    input Stop,
    output reg [9:0] Point_X,
    output reg [9:0] Point_Y,
    input Wipe
);
    reg [7:0] Move_Y;
    always@(posedge clk, negedge rst)begin
        if(!rst) begin
            Point_X <= 640;
            Point_Y <= 400 - Height;
        end else begin
            if(!Stop) Point_X <= (Point_X < 1 ||  Wipe) ? 640 : Point_X - 2;
        end
    end

endmodule