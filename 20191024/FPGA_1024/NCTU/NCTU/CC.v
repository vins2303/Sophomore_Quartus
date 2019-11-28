module CC(
	in_n0,
	in_n1,
	in_n2,
	in_n3,
	opt,
	out_n
);
	input signed [3:0] in_n0, in_n1, in_n2, in_n3;
	input [3:0] opt;
	output reg signed[8:0] out_n;
	
	reg signed[8:0]  data [0:3];
	reg signed[8:0]  total;
	integer i,j;
	reg [8:0] swap;

always@(*) begin
	if(in_n0[3]) begin
		data[0] = ~(in_n0-1);
		data[0] = (~data[0])+1;
	end else data[0] = in_n0;
	if(in_n1[3]) begin
		data[1] = ~(in_n1-1);
		data[1] = (~data[1])+1;
	end else data[1] = in_n1;

	if(in_n2[3]) begin
		data[2] = ~(in_n2-1);
		data[2] = (~data[2])+1;
	end else data[2] = in_n2;

	if(in_n3[3]) begin
		data[3] = ~(in_n3-1);
		data[3] = (~data[3])+1;
	end else data[3] = in_n3;

	if(opt[0])begin
		for(i=3;i>=0;i=i-1)
			for(j=0;j<i;j=j+1)begin
				if(opt[1] == 1 && data[j]>data[j+1])begin
					swap = data[j];
					data[j] = data[j+1];
					data[j+1] = swap;
				end

				if(opt[1] == 0 && data[j]<data[j+1])begin
					swap = data[j];
					data[j] = data[j+1];
					data[j+1] = swap;
				end
			end
	end

	if(opt[2])begin
		total = (data[0] + data[1]) + (data[2]+data[3]);
		total = total/4;
		//if(total[5] ) total =total +1;
		for(i=0;i<4;i=i+1)
			data[i] = data[i] - total;
	end

	if(opt[3])
		out_n = (2*data[1]*data[0]) + data[3];
	else out_n = ((data[3]+data[2]*4)*data[1])/3;

end

	
endmodule
