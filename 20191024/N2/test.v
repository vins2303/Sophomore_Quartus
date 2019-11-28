`timescale 1ns/10ps
`define delay 5

module test;

reg [2:0] sel;
reg [3:0]a,b;
reg [7:0] save_c;
wire [7:0] c;
integer i;
ALU alu(.sel(sel[1:0]),.a(a),.b(b),.c(c));

initial begin
    for(i=0;i<40;i=i+1)begin
        $display ("i = %d", i);
        a = {$random} % 5'b10000;
        b = {$random} % 5'b10000;
        for(sel = 0; sel < 4;sel = sel + 1)begin
            # `delay;       
            case (sel)
                2'b00:begin
                    save_c = a+b;
                    $display("sel = %b, %d + %d = %d, c = %d, %s", sel, a,b,save_c, c, c == save_c ? "pass":"error");
                end
                2'b01:begin
                    save_c = a-b;
                    $display("sel = %b, %d - %d = %d, c = %d, %s", sel, a,b,save_c, c, c == save_c ? "pass":"error");

                end
                2'b10:begin
                    save_c = a*b;
                    $display("sel = %b, %d * %d = %d, c = %d, %s", sel, a,b,save_c, c, c == save_c ? "pass":"error");

                end
                2'b11:begin
                    save_c = a/b;
                    $display("sel = %b, %d / %d = %d, c = %d, %s", sel, a,b,save_c, c, c == save_c ? "pass":"error");

                end
            endcase

        end

    end
    $finish;
end

endmodule