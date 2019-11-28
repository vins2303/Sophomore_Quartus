module Bin_Bcd(bin, bcd);
input    [19:0] bin;
output reg [31:0] bcd;
integer i;
reg [19:0] binsave;

always@(bin)begin
	binsave = bin;
	bcd = 0;
	for(i=0;i<10;i=i+1)begin
		
		if(bcd[19:16]>4) bcd[19:16] =  bcd[19:16] +3;
		if(bcd[23:20]>4) bcd[23:20] =  bcd[23:20] +3;
		if(bcd[27:24]>4) bcd[27:24] =  bcd[27:24] +3;
		{bcd[31:16], binsave[19:10]} = {bcd[31:16], binsave[19:10]}<<1;
		
		
		{binsave[9:0],bcd[15:0]} = {binsave[9:0],bcd[15:0]}>>1;
		if(bcd[3:0]>7) bcd[3:0]= bcd[3:0] -3;
		if(bcd[7:4]>7) bcd[7:4]= bcd[7:4] -3;
		if(bcd[11:8]>7) bcd[11:8]= bcd[11:8] -3;
		if(bcd[15:12]>7) bcd[15:12]= bcd[15:12] -3;
	end
	
	
end


endmodule


