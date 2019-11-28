module N1(clk, rst,d_vail,data_in,crc);
    input clk, rst, d_vail;
    input [3:0]data_in;
    output reg [15:0] crc;
    
    integer i;

    always@(posedge clk)begin
        if(rst == 0) begin
            crc <= 0;
        end else begin
            if(d_vail) crc <= {data_in, data[11:0]};
            else crc <= 0;
        end

    end


    reg [15:0] data;
    reg [11:0]out_crc;
    reg ram;
    integer j;
    always@(data_in)begin
        // out_crc = 0;
        // data = data_in << 12;
        // for(i=0;i<16;i=i+1)begin
        //     ram = out_crc[11];
        //     {out_crc,data} = {out_crc, data} << 1;
        //     out_crc[0] = out_crc[0] ^ ram;
        //     out_crc[1] = out_crc[1] ^ ram;
        //     out_crc[2] = out_crc[2] ^ ram;
        //     out_crc[3] = out_crc[3] ^ ram;
        //     out_crc[11] = out_crc[11] ^ ram;
        // end
        
        out_crc = 0;
        data = data_in << 12;
        for(i=3;i>=0;i=i-1)
            if(data[12+i] == 1)
            data = data ^ (13'b1100000001111<<i);

		// out_crc = data[11:0];
    end
endmodule
// x^{12}+x^{11}+x^{3}+x^{2}+x+1
