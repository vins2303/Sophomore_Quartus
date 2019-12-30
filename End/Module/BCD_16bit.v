
module BCD_16bit #(
    parameter Number_size = 16
)(
    input      [Number_size - 1 : 0] bin,
    output reg [Number_size - 1 : 0] out
);
    
    reg [Number_size -1 : 0] bin_buff;
    reg [Number_size -1 : 0] out_buff;
    integer i;

    always@( * )begin
        out_buff = 0;
        bin_buff = bin;
        for(i = 0 ; i < Number_size ; i = i + 1) begin
            out_buff[3 : 0] = fout(out_buff[3 : 0]);
            out_buff[7 : 4] = fout(out_buff[7 : 4]);
            out_buff[11: 8] = fout(out_buff[11: 8]);
            out_buff[15:12] = fout(out_buff[15:12]);
            {out_buff, bin_buff} = {out_buff, bin_buff} << 1;
        end
        out = out_buff;
    end

    function fout(input [3:0] fin);
        fout = ( fin > 4 ) ? fin + 4'd3 : fin;
    endfunction
endmodule    
