`include "Roles.v"
`include "Cactus.v"
module End(
	input clk, rst,		//clk 50MHz
	input Stop_SW,
	output reg VGA_HS, VGA_VS,
	output reg [7:0] VGA_R,VGA_G,VGA_B,
	output VGA_BLANK_N,VGA_CLOCK,
	input Jump_Button
);


	reg[10:0] counterHS;
	reg[9:0] counterVS;
	reg [2:0] valid;
	reg clk25M;

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

	reg [23:0]color[3:0];

	always@(posedge clk25M) begin
		if (!rst) begin
			{VGA_R,VGA_G,VGA_B}<=0;
		end else begin
			if((X < Roles_Point_X + Roles_Width && X >= Roles_Point_X) &&
			(Y < Roles_Point_Y + Roles_Heigh && Y >= Roles_Point_Y)) begin
				{VGA_R,VGA_G,VGA_B}<= ( Roles_Image_Status ? Roles_Image_1[Y - Roles_Point_Y][ X - Roles_Point_X] : Roles_Image_2[Y - Roles_Point_Y][ X - Roles_Point_X] ) == 1'b0 ? 24'h000000 :24'h0000FF;
			end else if((X < Cactus_Point_X + Cactus_Width && X >= Cactus_Point_X) &&
				(Y < Cactus_Point_Y + Cactus_Heigh && Y >= Cactus_Point_Y)) begin
				{VGA_R,VGA_G,VGA_B}<= Cactus_Image[Y - Cactus_Point_Y][ X - Cactus_Point_X]  == 1'b0 ? 24'h000000 :24'h00FF00;
			end else if(Y == 400) begin
				{VGA_R,VGA_G,VGA_B}<=24'h33FF33;
			end else begin
				{VGA_R,VGA_G,VGA_B}<=24'h000000;
			end
		end
	end




/*--------------------- Stop ----------------------------*/
	wire Game_Stop;
	assign Game_Stop = isOverlap_Stop || Stop_SW;




/*----------------------- Clk -----------------------------*/
	reg clk0_1s;	
	reg clk00_5s;
	reg [24:0] clk005s_count;
	always@(posedge clk00_5s) clk0_1s <= ~clk0_1s;

	always@(posedge clk)begin
		
		 if(clk005s_count > 1249999)begin
			clk005s_count <= 0;
			clk00_5s <= ~ clk00_5s;
		end else begin
			clk005s_count <= clk005s_count + 1;
		end
	end

	reg Roles_Image_Status;

/*------------------------- isOverlap-------------------------*/
	reg isOverlap_Stop;
	always@(posedge clk, negedge rst)begin
		if(!rst)begin
			isOverlap_Stop <= 0;
		end else begin
			if( ( Roles_Point_X + Roles_Width  > Cactus_Point_X &&  
			     Cactus_Point_X + Cactus_Width > Roles_Point_X) &&
				( Roles_Point_Y + Roles_Heigh  > Cactus_Point_Y && 
				 Cactus_Point_Y + Cactus_Heigh > Roles_Point_Y ))begin
				
				isOverlap_Stop <= 1;	
			end
			
		end

	end


/*------------------------ Roles -----------------------------*/
	wire [9:0] Roles_Point_X;
	wire [9:0] Roles_Point_Y;
	wire [9:0] Roles_Width;
	wire [9:0] Roles_Heigh;
	Roles roles_(.clk(clk00_5s), 
				.rst(rst), 
				.Stop(Game_Stop),
				.Point_X( Roles_Point_X), 
				.Point_Y( Roles_Point_Y),
				.Width(   Roles_Width),
				.Heigh(   Roles_Heigh),
				.Jump_Button(Jump_Button)
	);

/*----------------------- Cactus -----------------------------*/
	wire [9:0] Cactus_Point_X;
	wire [9:0] Cactus_Point_Y;
	wire [9:0] Cactus_Width;
	wire [9:0] Cactus_Heigh;
	Cactus Cactus_(.clk(clk00_5s), 
				.rst(rst), 
				.Stop(Game_Stop),
				.Point_X( Cactus_Point_X), 
				.Point_Y( Cactus_Point_Y),
				.Width(   Cactus_Width),
				.Heigh(   Cactus_Heigh)
	);

/*------------------------- Image ---------------------------*/
always@(posedge clk0_1s) if(!Game_Stop) Roles_Image_Status <= ~Roles_Image_Status;

wire [ 0 : 39] Roles_Image_1[ 0 : 42];

assign Roles_Image_1[0] = 40'b0000000000000000000000111111111111111100;
assign Roles_Image_1[1] = 40'b0000000000000000000000111111111111111100;
assign Roles_Image_1[2] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_1[3] = 40'b0000000000000000000011110011111111111111;
assign Roles_Image_1[4] = 40'b0000000000000000000011110011111111111111;
assign Roles_Image_1[5] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_1[6] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_1[7] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_1[8] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_1[9] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_1[10] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_1[11] = 40'b0000000000000000000011111111110000000000;
assign Roles_Image_1[12] = 40'b0000000000000000000011111111110000000000;
assign Roles_Image_1[13] = 40'b0000000000000000000011111111111111110000;
assign Roles_Image_1[14] = 40'b0000000000000000000011111111111111110000;
assign Roles_Image_1[15] = 40'b1100000000000000001111111111000000000000;
assign Roles_Image_1[16] = 40'b1100000000000000001111111111000000000000;
assign Roles_Image_1[17] = 40'b1100000000000001111111111111000000000000;
assign Roles_Image_1[18] = 40'b1100000000000001111111111111000000000000;
assign Roles_Image_1[19] = 40'b1111000000001111111111111111111100000000;
assign Roles_Image_1[20] = 40'b1111000000001111111111111111111100000000;
assign Roles_Image_1[21] = 40'b1111110000111111111111111111001100000000;
assign Roles_Image_1[22] = 40'b1111110000111111111111111111001100000000;
assign Roles_Image_1[23] = 40'b1111111111111111111111111111000000000000;
assign Roles_Image_1[24] = 40'b1111111111111111111111111111000000000000;
assign Roles_Image_1[25] = 40'b1111111111111111111111111111000000000000;
assign Roles_Image_1[26] = 40'b1111111111111111111111111111000000000000;
assign Roles_Image_1[27] = 40'b0011111111111111111111111111000000000000;
assign Roles_Image_1[28] = 40'b0011111111111111111111111100000000000000;
assign Roles_Image_1[29] = 40'b0000111111111111111111111100000000000000;
assign Roles_Image_1[30] = 40'b0000111111111111111111111100000000000000;
assign Roles_Image_1[31] = 40'b0000001111111111111111110000000000000000;
assign Roles_Image_1[32] = 40'b0000001111111111111111110000000000000000;
assign Roles_Image_1[33] = 40'b0000000011111111111111000000000000000000;
assign Roles_Image_1[34] = 40'b0000000011111111111111000000000000000000;
assign Roles_Image_1[35] = 40'b0000000000111100001111000000000000000000;
assign Roles_Image_1[36] = 40'b0000000000111100001111000000000000000000;
assign Roles_Image_1[37] = 40'b0000000000001111000011000000000000000000;
assign Roles_Image_1[38] = 40'b0000000000001111000011000000000000000000;
assign Roles_Image_1[39] = 40'b0000000000000000000011000000000000000000;
assign Roles_Image_1[40] = 40'b0000000000000000000011000000000000000000;
assign Roles_Image_1[41] = 40'b0000000000000000000011110000000000000000;
assign Roles_Image_1[42] = 40'b0000000000000000000011110000000000000000;

wire [ 0 : 39] Roles_Image_2[ 0 : 42];
assign Roles_Image_2[0] = 40'b0000000000000000000000111111111111111100;
assign Roles_Image_2[1] = 40'b0000000000000000000000111111111111111100;
assign Roles_Image_2[2] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_2[3] = 40'b0000000000000000000011110011111111111111;
assign Roles_Image_2[4] = 40'b0000000000000000000011110011111111111111;
assign Roles_Image_2[5] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_2[6] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_2[7] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_2[8] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_2[9] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_2[10] = 40'b0000000000000000000011111111111111111111;
assign Roles_Image_2[11] = 40'b0000000000000000000011111111110000000000;
assign Roles_Image_2[12] = 40'b0000000000000000000011111111110000000000;
assign Roles_Image_2[13] = 40'b0000000000000000000011111111111111110000;
assign Roles_Image_2[14] = 40'b0000000000000000000011111111111111110000;
assign Roles_Image_2[15] = 40'b1100000000000000001111111111000000000000;
assign Roles_Image_2[16] = 40'b1100000000000000001111111111000000000000;
assign Roles_Image_2[17] = 40'b1100000000000001111111111111000000000000;
assign Roles_Image_2[18] = 40'b1100000000000001111111111111000000000000;
assign Roles_Image_2[19] = 40'b1111000000001111111111111111111100000000;
assign Roles_Image_2[20] = 40'b1111000000001111111111111111111100000000;
assign Roles_Image_2[21] = 40'b1111110000111111111111111111001100000000;
assign Roles_Image_2[22] = 40'b1111110000111111111111111111001100000000;
assign Roles_Image_2[23] = 40'b1111111111111111111111111111000000000000;
assign Roles_Image_2[24] = 40'b1111111111111111111111111111000000000000;
assign Roles_Image_2[25] = 40'b1111111111111111111111111111000000000000;
assign Roles_Image_2[26] = 40'b1111111111111111111111111111000000000000;
assign Roles_Image_2[27] = 40'b0011111111111111111111111111000000000000;
assign Roles_Image_2[28] = 40'b0011111111111111111111111100000000000000;
assign Roles_Image_2[29] = 40'b0000111111111111111111111100000000000000;
assign Roles_Image_2[30] = 40'b0000111111111111111111111100000000000000;
assign Roles_Image_2[31] = 40'b0000001111111111111111110000000000000000;
assign Roles_Image_2[32] = 40'b0000001111111111111111110000000000000000;
assign Roles_Image_2[33] = 40'b0000000011111111111111000000000000000000;
assign Roles_Image_2[34] = 40'b0000000011111111111111000000000000000000;
assign Roles_Image_2[35] = 40'b0000000000111111000011111000000000000000;
assign Roles_Image_2[36] = 40'b0000000000111111000011111000000000000000;
assign Roles_Image_2[37] = 40'b0000000000111100000000000000000000000000;
assign Roles_Image_2[38] = 40'b0000000000111100000000000000000000000000;
assign Roles_Image_2[39] = 40'b0000000000110000000000000000000000000000;
assign Roles_Image_2[40] = 40'b0000000000110000000000000000000000000000;
assign Roles_Image_2[41] = 40'b0000000000111100000000000000000000000000;
assign Roles_Image_2[42] = 40'b0000000000111100000000000000000000000000;


wire [ 0 : 14] Cactus_Image[ 0 : 32];
assign Cactus_Image[0] = 15'b000000111000000;
assign Cactus_Image[1] = 15'b000001111100000;
assign Cactus_Image[2] = 15'b000001111100000;
assign Cactus_Image[3] = 15'b000001111100000;
assign Cactus_Image[4] = 15'b000001111100010;
assign Cactus_Image[5] = 15'b000001111100111;
assign Cactus_Image[6] = 15'b000001111100111;
assign Cactus_Image[7] = 15'b000001111100111;
assign Cactus_Image[8] = 15'b010001111100111;
assign Cactus_Image[9] = 15'b111001111100111;
assign Cactus_Image[10] = 15'b111001111100111;
assign Cactus_Image[11] = 15'b111001111100111;
assign Cactus_Image[12] = 15'b111001111100111;
assign Cactus_Image[13] = 15'b111001111100111;
assign Cactus_Image[14] = 15'b111001111100111;
assign Cactus_Image[15] = 15'b111001111111111;
assign Cactus_Image[16] = 15'b111001111111110;
assign Cactus_Image[17] = 15'b111001111111100;
assign Cactus_Image[18] = 15'b111001111100000;
assign Cactus_Image[19] = 15'b111111111100000;
assign Cactus_Image[20] = 15'b011111111100000;
assign Cactus_Image[21] = 15'b001111111100000;
assign Cactus_Image[22] = 15'b000001111100000;
assign Cactus_Image[23] = 15'b000001111100000;
assign Cactus_Image[24] = 15'b000001111100000;
assign Cactus_Image[25] = 15'b000001111100000;
assign Cactus_Image[26] = 15'b000001111100000;
assign Cactus_Image[27] = 15'b000001111100000;
assign Cactus_Image[28] = 15'b000001111100000;
assign Cactus_Image[29] = 15'b000001111100000;
assign Cactus_Image[30] = 15'b000001111100000;
assign Cactus_Image[31] = 15'b000001111100000;
assign Cactus_Image[32] = 15'b000001111100000;

/*-------------------------------------------------------*/

endmodule













