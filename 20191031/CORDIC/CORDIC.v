module CORDIC(clock, cosine, sine, x_start, y_start, angle);

    parameter width = 16;

    // Inputs
    input clock;
    input signed [width-1:0] x_start,y_start; 
    input signed [31:0] angle;

    // Outputs
    output reg signed  [width-1:0] sine, cosine;

    // Generate table of atan values
    wire signed [31:0] atan_table [0:30];

    assign atan_table[00] = 'b00100000000000000000000000000000; // 45.000 degrees -> atan(2^0)
    assign atan_table[01] = 'b00010010111001000000010100011101; // 26.565 degrees -> atan(2^-1)
    assign atan_table[02] = 'b00001001111110110011100001011011; // 14.036 degrees -> atan(2^-2)
    assign atan_table[03] = 'b00000101000100010001000111010100; // atan(2^-3)
    assign atan_table[04] = 'b00000010100010110000110101000011;
    assign atan_table[05] = 'b00000001010001011101011111100001;
    assign atan_table[06] = 'b00000000101000101111011000011110;
    assign atan_table[07] = 'b00000000010100010111110001010101;
    assign atan_table[08] = 'b00000000001010001011111001010011;
    assign atan_table[09] = 'b00000000000101000101111100101110;
    assign atan_table[10] = 'b00000000000010100010111110011000;
    assign atan_table[11] = 'b00000000000001010001011111001100;
    assign atan_table[12] = 'b00000000000000101000101111100110;
    assign atan_table[13] = 'b00000000000000010100010111110011;
    assign atan_table[14] = 'b00000000000000001010001011111001;
    assign atan_table[15] = 'b00000000000000000101000101111100;
    assign atan_table[16] = 'b00000000000000000010100010111110;
    assign atan_table[17] = 'b00000000000000000001010001011111;
    assign atan_table[18] = 'b00000000000000000000101000101111;
    assign atan_table[19] = 'b00000000000000000000010100010111;
    assign atan_table[20] = 'b00000000000000000000001010001011;
    assign atan_table[21] = 'b00000000000000000000000101000101;
    assign atan_table[22] = 'b00000000000000000000000010100010;
    assign atan_table[23] = 'b00000000000000000000000001010001;
    assign atan_table[24] = 'b00000000000000000000000000101000;
    assign atan_table[25] = 'b00000000000000000000000000010100;
    assign atan_table[26] = 'b00000000000000000000000000001010;
    assign atan_table[27] = 'b00000000000000000000000000000101;
    assign atan_table[28] = 'b00000000000000000000000000000010;
    assign atan_table[29] = 'b00000000000000000000000000000001;
    assign atan_table[30] = 'b00000000000000000000000000000000;


    reg signed [31:0] z;  
    reg signed [15:0] x_end, y_end;
    integer i;
    reg [4:0]count; 

    always@(posedge clock)begin
        sine <= y_end ;
        cosine <= x_end;
    end

    always@(*)begin
        // count = 0;
        if(angle >= 32'b00111111111111111111111111111111)begin
            z = 32'h7fffffff? - angle;
         end 
         else if(angle <= -1073741824) begin
            z = ( - 32'h80000000?) - angle;
        end else begin
            z = angle;
        end
        
        x_end = x_start;
        y_end = y_start;
        for(i=0;i<31;i=i+1)begin
            x_end = z < 0 ? x_end + (x_end >> i) : x_end - (x_end >> i);
            y_end = z < 0 ? y_end - (y_end >> i) : y_end + (y_end >> i);
            z     = z < 0 ? z + atan_table[i]    : z - atan_table[i];
        end

    end

//main code







//end main code
endmodule