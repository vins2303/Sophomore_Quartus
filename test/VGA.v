module VGA(clk, rst, VGA_HS, VGA_VS ,VGA_R, VGA_G, VGA_B,VGA_BLANK_N,VGA_CLOCK);

input clk, rst;		//clk 50MHz
output VGA_HS, VGA_VS;
output reg [7:0] VGA_R,VGA_G,VGA_B;
output VGA_BLANK_N,VGA_CLOCK;

reg VGA_HS, VGA_VS;
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

always@(posedge clk25M)
begin
	if (!rst) 
	begin
		{VGA_R,VGA_G,VGA_B}<=0;
   end
	else 
	begin
		if((Point_X - X)**2 + (Point_Y - Y)**2 <= Radius**2)begin
			{VGA_R,VGA_G,VGA_B}<=color[0];
		end	else if((User_Point_X - X)**2 + (User_Point_Y - Y)**2 <= User_Radius**2) begin
			{VGA_R,VGA_G,VGA_B}<=color[2];
		end else begin
			{VGA_R,VGA_G,VGA_B}<=color[3];
		end
   end
end

always@(posedge clk,negedge rst)begin
	if(!rst)begin
		color[0]<=24'h000000;//
		color[1]<=24'h000000;//
		color[2]<=24'h000000;//
		color[3]<=24'h000000;//
	end else begin
		color[0]<=24'h0000ff;//blue
		color[1]<=24'h00ff00;//green
		color[2]<=24'hff0000;//bred
		color[3]<=24'h000000;//
	end
end


wire game_over;
assign game_over = ( (Point_X-User_Point_X)**2  + (Point_Y-User_Point_Y)**2 <= (Radius + User_Radius)**2) ? 0 : 1;

reg [12:0] User_Point_X,User_Point_Y;
parameter User_Radius = 30;
always@(posedge clk12500k,negedge rst)begin
	if(!rst)begin
		User_Point_X <= 400;
		User_Point_Y <= 400;
	end else begin
		if(game_over)begin
			// User_Point_X <= User_Point_X + (Mov_X ? -1 : 1);
			// User_Point_Y <= User_Point_Y + (Mov_Y ? -1 : 1);
		end
	end
end

reg User_Mov_X, User_Mov_Y;

always@(posedge clk,negedge rst)begin
	if(!rst)begin
		User_Mov_X <= 0;
		User_Mov_Y <= 1;
	end else begin
		if(User_Point_Y <=       User_Radius) User_Mov_Y <= 0;
		if(User_Point_Y >= 480 - User_Radius) User_Mov_Y <= 1;
		if(User_Point_X <=       User_Radius) User_Mov_X <= 0;
		if(User_Point_X >= 640 - User_Radius) User_Mov_X <= 1;
	end
end

/* --------------------------------------------------------------- */
reg [23:0] clk12500k_count;
reg clk12500k;
always@(posedge clk,negedge rst)begin
	if(!rst)begin
		clk12500k_count <= 0;
	end else begin
		if(clk12500k_count == 120000)begin
			clk12500k <= ~ clk12500k;
			clk12500k_count <= 0;
		end else begin
			clk12500k_count <= clk12500k_count + 1;
		end
	end
end

reg [12:0] Point_X,Point_Y;
parameter Radius = 30;
always@(posedge clk12500k,negedge rst)begin
	if(!rst)begin
		Point_X <= 200;
		Point_Y <= 200;
	end else begin
		if(game_over)begin
			Point_X <= Point_X + (Mov_X ? -1 : 1);
			Point_Y <= Point_Y + (Mov_Y ? -1 : 1);
		end
	end
end

reg Mov_X, Mov_Y;

always@(posedge clk,negedge rst)begin
	if(!rst)begin
		Mov_X <= 0;
		Mov_Y <= 1;
	end else begin
		if(Point_Y <=       Radius) Mov_Y <= 0;
		if(Point_Y >= 480 - Radius) Mov_Y <= 1;
		if(Point_X <=       Radius) Mov_X <= 0;
		if(Point_X >= 640 - Radius) Mov_X <= 1;
	end
end

endmodule

