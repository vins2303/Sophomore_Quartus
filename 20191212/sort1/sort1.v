 input clk,rst_n,button;
input [7:0] SW_dq;
input [1:0] SW_addr;
input SW_RW,SW_CE;
output [6:0] HEX0,HEX1;
inout [15:0]SRAM_DQ;
output [19:0] SRAM_ADDR;
output SRAM_CE_N,SRAM_OE_N,SRAM_WE_N,SRAM_UE_N,SRAM_LE_N;

assign SRAM_UE_N=1'b1;
assign SRAM_LE_N=1'b0;

reg autoing,rw,ce;
reg [1:0] addr;
reg [7:0] out_data;
assign SRAM_WE_N=(autoing)?rw:SW_RW;
assign SRAM_OE_N=(autoing)?(!rw):(!SW_RW);
assign SRAM_CE_N=(autoing)?(!ce):(!SW_CE);
assign SRAM_DQ = (!SRAM_WE_N) ? {8'd0,(autoing)?out_data:SW_dq} : 16'bz;
assign SRAM_ADDR = {18'd0,(autoing)?addr:SW_addr};
reg key_cur;
reg [9:0] count;
always@(posedge clk,negedge rst_n)begin
	if(!rst_n)begin
		count<=0;
		key_cur<=1;
	end else begin
		if(count>=1000)begin
			count<=0;
			key_cur<=button;
		end else if(key_cur^button) count<=count+1;
		else count<=0;
	end
end

integer i,j;
reg [7:0] swap_;
reg [7:0] dt[3:0];
reg [2:0] status;
reg key_pos;
parameter 
READDATA=0,
COMPUTING=1,
WRITE_RESET=2,
WRITEDATA=3,
HOLD=4;
always@(posedge clk) key_pos<=key_cur;
always@(posedge clk,negedge rst_n)begin
	if(!rst_n)begin
		autoing<=1'b0;
		rw<=1'b1;
		ce<=1'b0;
		status<=0;
		addr<=2'd0;
		out_data<=0;
	end else begin
		if(!autoing)begin
			if(key_pos==1 && key_cur==0)begin
				autoing<=1'b1;
				status<=READDATA;
				addr<=2'd0;
				rw<=1'b1;//read mod
				ce<=1'b1;//enable
			end
		end else begin//auto
			case(status)
			READDATA:begin//read 4 data
				if(addr==3)begin//read finish
					status<=COMPUTING;
					ce<=1'b0;//disable
				end else begin
					addr<=addr+1;//set next address
				end
				dt[addr]<=SRAM_DQ[7:0];//read data
			end
			COMPUTING:begin//computing***************************
				for(i=3;i>0;i=i-1)
					for(j=0;j<i;j=j+1)begin
						if(dt[j]>dt[j+1])begin
							swap_ = dt[j];
							dt[j] = dt[j+1];
							dt[j+1]=swap_;
						end
					end
				// dt[0]<=dt[3];
				// dt[1]<=dt[2];
				// dt[2]<=dt[1];
				// dt[3]<=dt[0];
				
				status=WRITE_RESET;
			end
			WRITE_RESET:begin//write reset and write first data
				addr<=0;
				out_data<=dt[0];
				rw<=1'b0;//write mod
				ce<=1'b1;//enable
				status<=HOLD;
			end
			WRITEDATA:begin//write
				addr<=addr+1;//set address
				out_data<=dt[addr+1]; //set data
				ce<=1'b1;//enable
				status<=HOLD;
			end
			HOLD:begin//
				if(addr==3)begin
					autoing<=1'b0;//auto finish
				end else begin
					status<=WRITEDATA;//write next data
				end
				ce<=1'b0;//disable
			end
			endcase 
		end
	end
end

wire [7:0] ot;
assign ot=(!SRAM_OE_N) ? SRAM_DQ[7:0] : 8'bz;
U7447 U1(ot[3:0],HEX0);
U7447 U2(ot[7:4],HEX1);


endmodule


module U7447(SW,HEX);
	input [3:0] SW;
	output reg [6:0] HEX;
	always@(*)begin
		casez(SW)
		4'h0: HEX=7'b1000000;
		4'h1: HEX=7'b1111001;
		4'h2: HEX=7'b0100100;
		4'h3: HEX=7'b0110000;
		4'h4: HEX=7'b0011001;
		4'h5: HEX=7'b0010010;
		4'h6: HEX=7'b0000010;
		4'h7: HEX=7'b1111000;
		4'h8: HEX=7'b0000000;
		4'h9: HEX=7'b0010000;
		4'ha: HEX=7'b0001000;
		4'hb: HEX=7'b0000011;
		4'hc: HEX=7'b0100111;
		4'hd: HEX=7'b0100001;
		4'he: HEX=7'b0000110;
		4'hf: HEX=7'b0001110;
		default: HEX=7'b1111111;
		endcase 
	end
endmodule 
