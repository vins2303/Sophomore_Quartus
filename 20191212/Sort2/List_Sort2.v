module List_Sort2(
    input clk, reset,
    input [7:0] in_data,
    input isData,
    output reg [7:0] out0,out1,out2,out3
);

reg [7:0] buff;
integer i;
reg [7:0] swap;
reg [2:0] count;
always@(posedge clk)begin
    if(reset == 0)begin
        for(i=0;i<4;i=i+1)begin
            
				swap[i]<=8'hff;
        end
		  count <= 0;
    end else begin
        if(isData)begin
				count <= count < 4 ? count + 1 : count;
				if(count < 4)begin
					buff = in_data;
					if(buff < out0 )begin
						 swap = buff;
						 buff = out0;
						 out0 = swap;
					end
					
					if(buff < out1)begin
						 swap = buff;
						 buff = out1;
						 out1 = swap;
					end
					
					if(buff < out2)begin
						 swap = buff;
						 buff = out2;
						 out2 = swap;
					end
					
					if(buff < out3)begin
						 swap = buff;
						 buff = out3;
						 out3 = swap;
					end
				end
            
        end else begin
            for(i=0;i<4;i=i+1)begin
                
					 swap[i]<=8'hff;
            end
				count <= 0;
            out0 <= 8'hff;
            out1 <= 8'hff;
            out2 <= 8'hff;
            out3 <= 8'hff;
        end
    end
end


endmodule