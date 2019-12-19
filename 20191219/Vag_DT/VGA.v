module VGA(clk, rst, write_bt,DT_bt,
VGA_HS, VGA_VS ,VGA_R, VGA_G, VGA_B,VGA_BLANK_N,VGA_CLOCK,
SRAM_DQ,SRAM_ADDR,SRAM_CE_N,SRAM_OE_N,SRAM_WE_N,SRAM_UE_N,SRAM_LE_N,
);
input clk, rst,write_bt,DT_bt;		//clk 50MHz
output VGA_HS, VGA_VS;
output reg [7:0] VGA_R,VGA_G,VGA_B;
output VGA_BLANK_N,VGA_CLOCK;

reg VGA_HS, VGA_VS;
reg[10:0] counterHS;
reg[9:0] counterVS;
reg [2:0] valid;
reg clk25M;

inout [15:0]SRAM_DQ;
output [19:0] SRAM_ADDR;
output SRAM_CE_N,SRAM_OE_N,SRAM_WE_N,SRAM_UE_N,SRAM_LE_N;

reg [12:0] X,Y;


parameter H_FRONT = 16;
parameter H_SYNC  = 96;
parameter H_BACK  = 48;
parameter H_ACT   = 640;//
parameter H_BLANK = H_FRONT + H_SYNC + H_BACK;
parameter H_TOTAL = H_FRONT + H_SYNC + H_BACK + H_ACT;

parameter V_FRONT = 11;
parameter V_SYNC  = 2;
parameter V_BACK  = 32;
parameter V_ACT   = 480;//
parameter V_BLANK = V_FRONT + V_SYNC + V_BACK;
parameter V_TOTAL = V_FRONT + V_SYNC + V_BACK + V_ACT;
assign VGA_SYNC_N = 1'b0;
assign VGA_BLANK_N = ~((counterHS<H_BLANK)||(counterVS<V_BLANK));
assign VGA_CLOCK = ~clk25M;

always@(posedge clk)
	clk25M = ~clk25M;

always@(posedge clk25M)
begin
	if(!rst) 
		counterHS <= 0;
	else begin
	
		if(counterHS == H_TOTAL) 
			counterHS <= 0;
		else 
			counterHS <= counterHS + 1'b1;
		
		if(counterHS == H_FRONT-1)
			VGA_HS <= 1'b0;
		if(counterHS == H_FRONT + H_SYNC -1)
			VGA_HS <= 1'b1;
			
		if(counterHS >= H_BLANK)
			X <= counterHS-H_BLANK;
		else
			X <= 0;	
	end
end

always@(posedge clk25M)
begin
	if(!rst) 
		counterVS <= 0;
	else begin
	
		if(counterVS == V_TOTAL) 
			counterVS <= 0;
		else if(counterHS == H_TOTAL) 
			counterVS <= counterVS + 1'b1;
		if(counterVS == V_FRONT-1)
			VGA_VS <= 1'b0;
		if(counterVS == V_FRONT + V_SYNC -1)
			VGA_VS <= 1'b1;
		if(counterVS >= V_BLANK)
			Y <= counterVS-V_BLANK;
		else
			Y <= 0;
	end
end

reg writeing,writeing_CE;
reg [15:0] writeing_DQ;
wire [19:0] writeing_ADDR;
reg computing;
wire computing_RW,computing_CE;
wire [15:0] computing_DQ;
wire [19:0] computing_ADDR;

reg [19:0]VGA_ADDR;

assign {SRAM_UE_N,SRAM_LE_N}=2'b10;
assign SRAM_WE_N=(writeing)?0:(computing)?computing_RW:1;

assign SRAM_DQ=(SRAM_WE_N)?16'hzzzz:(computing)?computing_DQ:writeing_DQ;
assign SRAM_OE_N=~SRAM_WE_N;

assign SRAM_CE_N=(writeing)?writeing_CE:(computing)?computing_CE:0;
assign SRAM_ADDR=(writeing)?writeing_ADDR:(computing)?computing_ADDR:VGA_ADDR;
always@(negedge clk25M)begin//setaddress
		VGA_ADDR[9:0]<=X;
		VGA_ADDR[19:10]<=Y;
end
always@(posedge clk25M)
begin
	if (!rst) 
	begin
		{VGA_R,VGA_G,VGA_B}<=0;
   end
	else 
	begin
		if(writeing || computing)begin
			{VGA_R,VGA_G,VGA_B}<=0;
		end else begin
			{VGA_R,VGA_G,VGA_B}<={3{SRAM_DQ[7:0]}};
		end
   end
end

reg w_key,c_key;//,write_bt,DT_bt
reg [9:0]writeXcnt,writeYcnt;
always@(posedge clk)begin
	w_key<=write_bt;c_key<=DT_bt;
end
assign writeing_ADDR={writeYcnt,writeXcnt};
always@(posedge clk,negedge rst)begin
	if(!rst)begin
		computing<=0;
		writeing<=0; 
		writeing_CE<=1;
	end else begin
		if(writeing)begin
			if(writeing_CE)begin
				if((writeXcnt-240)**2+(writeYcnt-240)**2<=40000) writeing_DQ<=255;
				else if(writeXcnt>500 && writeXcnt<600 && writeYcnt>40 && writeYcnt<440) writeing_DQ<=255;
				else writeing_DQ<=0;
				writeing_CE<=0;
			end else begin
				if(writeYcnt>=480)begin
					writeing<=0;
				end else begin
					if(writeXcnt<640)
						writeXcnt<=writeXcnt+1;
					else begin
						writeXcnt<=0;
						writeYcnt<=writeYcnt+1;
					end
					writeing_CE<=1;
				end
			end
		end else if(computing)begin
			if(finish) computing<=0;
		end else begin
			if(w_key==1 && write_bt==0)begin
				writeing<=1;
				writeXcnt<=0;writeYcnt<=0;writeing_CE<=1;
			end else if(c_key==1 && DT_bt==0) begin
				computing<=1;
			end
		end
	end
end
wire finish;
DT DT_U(clk,rst,computing,computing_RW,computing_CE,computing_ADDR,computing_DQ[7:0],SRAM_DQ[7:0],finish);
endmodule


module DT(clk,rst,computing,SRAM_RW,SRAM_CE,SRAM_ADDR,DQ_write,DQ_read,finish);
input clk,rst,computing;
output reg SRAM_RW,SRAM_CE;
output [19:0] SRAM_ADDR;
output reg [7:0] DQ_write;
input [7:0] DQ_read;
output reg finish;
reg [9:0]ADDR_X;
reg [9:0]ADDR_Y;
assign SRAM_ADDR={ADDR_Y,ADDR_X};
//----------------------------------------------------------------------------------
reg [2:0] comp_;
reg [7:0] min;
reg isComp;

parameter Rw_State_Addr = 2'b00,
		  RW_State_Read  = 2'b01,
		  RW_State_Wire = 2'b10,
		  RW_State_NULL = 2'b11;
reg [1:0] RW_State;
reg [9:0] buff_X;
reg [2:0] Comp_Count;
always@(posedge clk,negedge rst)begin
	if(!rst)begin
		ADDR_X<=1; ADDR_Y<=1;
		
		isComp <= 0;
		finish<=0; 
/////////////////////////////////////////////////////////////////
		comp_   <= 0;
		min <= 8'hff;
		RW_State <= Rw_State_Addr;
		SRAM_RW<=1; SRAM_CE<=1;
		DQ_write<=0;
		Comp_Count <= 1;

	end else begin
		if(computing && !finish)begin
			RW_State <= RW_State_Read;
			SRAM_CE <= 0;
			SRAM_RW <= 1;

			if( State_1 == pos_1 &&  ADDR_X < 2 &&  ADDR_Y < 2 ) finish <= 1;
			
			case(RW_State)
				Rw_State_Addr:begin
					RW_State <= RW_State_Read;
					case(Comp_Count)
						1:begin
							min <= 8'hff;
							if(!State_1)begin
								ADDR_X <= ADDR_X == 638 ?          1 : ADDR_X + 1;
								ADDR_Y <= ADDR_X == 638 ? ADDR_Y + 1 : ADDR_Y;
							end else begin
								ADDR_X <= ADDR_X == 1 ? 638        : ADDR_X - 1;
								ADDR_Y <= ADDR_X == 1 ? ADDR_Y - 1 :  ADDR_Y;
							end
						end

						2:   ADDR_X <= !State_1 ? ADDR_X - 1 : ADDR_X + 1;
						3:   ADDR_Y <= !State_1 ? ADDR_Y - 1 : ADDR_Y + 1;
						4,5: ADDR_X <= !State_1 ? ADDR_X + 1 : ADDR_X - 1;
						default:begin
						end
					endcase
				end

				RW_State_Read:begin
					SRAM_CE <= 1;
					SRAM_RW <= 1;
					/*                     Min                 */
					case (State_1)
						pos_0:begin
							if(min > DQ_read && Comp_Count != 0) min <= DQ_read;
						end
						pos_1:begin
							if(min > DQ_read && Comp_Count != 0) min <=  DQ_read + 1;
						end
					endcase
					/*--------------------------------------------*/
					if(DQ_read == 0 && Comp_Count == 1)begin // Read == 0
						Comp_Count <= 0;
						RW_State <= RW_State_Read;
					end else
					if( Comp_Count < 5) begin
						Comp_Count <= Comp_Count + 1;
						RW_State <= Rw_State_Addr;

					end else begin
						RW_State <= RW_State_Wire;
						Comp_Count <= 0;
					end
				end

				RW_State_Wire:begin
					SRAM_CE <= 0;
					SRAM_RW <= 0;
					Comp_Count <= 0;
					RW_State <= RW_State_Read;
					
					if(!State_1)begin
						ADDR_X <= ADDR_X - 1;
						ADDR_Y <= ADDR_Y + 1;
						DQ_write <= min + 1;
					end else begin
						ADDR_X <= ADDR_X + 1;
						ADDR_Y <= ADDR_Y - 1;
						DQ_write <= min;
					end
				end
				RW_State_NULL:begin
				end
			endcase

		end else if(!computing)begin
			finish<=0;
			ADDR_X<=0; ADDR_Y<=1;
		end
	end
end


parameter pos_0 = 1'b0,
		  pos_1 = 1'b1;
reg State_1;

always@(posedge clk,negedge rst)begin
	if(!rst)begin
		State_1 <=  pos_0;
	end else begin
		case (State_1)
			pos_0:begin
				if(ADDR_X > 637 && ADDR_Y > 477 && RW_State == RW_State_Wire)
					State_1 <= pos_1;
			end
			pos_1:begin
			// 	if(ADDR_X == 1 && ADDR_Y == 0)
			// 		State_1 <= pos_0;
			end
		endcase
	end
end
endmodule

