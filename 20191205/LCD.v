module LCD_IR(Clk, rst, LCD_DATA, LCD_EN, LCD_RW, LCD_RS,DATA_IN,IRDA_RXD);
input Clk, rst;
input [3:0]  DATA_IN;
inout [7:0]  LCD_DATA;
output LCD_EN, LCD_RW, LCD_RS;

reg [3:0] state, next_command;
// Enter new ASCII hex data above for LCD Display
reg [7:0] DATA_BUS_VALUE;
wire [7:0] Next_Char;
reg [19:0] CLK_COUNT_400HZ;
reg [4:0] CHAR_COUNT;
reg CLK_400HZ, LCD_RW, LCD_EN, LCD_RS;
//============IR==============
input IRDA_RXD;
//============================

parameter
RESET = 4'h0,
DROP_LCD_E = 4'h1,
HOLD = 4'h2,
DISPLAY_CLEAR =4'h3,
MODE_SET = 4'h4,
Print_String = 4'h5,
LINE2 = 4'h6,
RETURN_HOME = 4'h7,
CG_RAM_HOME = 4'h8,
write_CG = 4'h9;

assign LCD_DATA = (LCD_RW? 8'bZZZZZZZZ: DATA_BUS_VALUE);
reg [5:0] font_addr;
wire [7:0]font_data;
Custom_font_ROM ROM_U(.addr(font_addr),.out_data(font_data));
LCD_display_string u1(.index(CHAR_COUNT),.out(Next_Char),.DATA_IN(DATA_IN),.clk(Clk),.rst(rst),.IRDA_RXD(IRDA_RXD));
//=============================除頻===============================
always @(posedge Clk or negedge rst)
 if (!rst)
 begin
    CLK_COUNT_400HZ <= 20'h00000;
    CLK_400HZ <= 1'b0;
 end
 else if (CLK_COUNT_400HZ < 20'h0F424)
 begin
    CLK_COUNT_400HZ <= CLK_COUNT_400HZ + 1'b1;
 end
 else
 begin
   CLK_COUNT_400HZ <= 20'h00000;
   CLK_400HZ <= ~CLK_400HZ;
 end
 //============================================================
always @(posedge CLK_400HZ or negedge rst)
 if (!rst)
 begin
  state <= RESET;
 end
 else
 case (state)
 RESET:   
// Set Function to 8-bit transfer and 2 line display with 5x8 Font size
 begin
   LCD_EN <= 1'b1;
   LCD_RS <= 1'b0;
   LCD_RW <= 1'b0;
   DATA_BUS_VALUE <= 8'h38;
   state <= DROP_LCD_E;
   next_command <= DISPLAY_CLEAR;
   CHAR_COUNT <= 5'b00000;
 end

// Clear Display (also clear DDRAM content)
 DISPLAY_CLEAR:
 begin
   LCD_EN <= 1'b1;
   LCD_RS <= 1'b0;
   LCD_RW <= 1'b0;
   DATA_BUS_VALUE <= 8'h01;
   state <= DROP_LCD_E;
   next_command <= MODE_SET;
 end

// Set write mode to auto increment address and move cursor to the right
 MODE_SET:
 begin
   LCD_EN <= 1'b1;
   LCD_RS <= 1'b0;
   LCD_RW <= 1'b0;
   DATA_BUS_VALUE <= 8'h06;
   state <= DROP_LCD_E;
   next_command <= CG_RAM_HOME;
 end

// Write ASCII hex character in first LCD character location
 Print_String:
 begin
   state <= DROP_LCD_E;
   LCD_EN <= 1'b1;
   LCD_RS <= 1'b1;
   LCD_RW <= 1'b0;
   DATA_BUS_VALUE <= Next_Char;
	
 // Loop to send out 32 characters to LCD Display  (16 by 2 lines)
   if ((CHAR_COUNT < 31))
      CHAR_COUNT <= CHAR_COUNT + 1'b1;
   else
      CHAR_COUNT <= 5'b00000; 
 // Jump to second line?
   if (CHAR_COUNT == 15)
     next_command <= LINE2;
 // Return to first line?
   else if ((CHAR_COUNT == 31))
     next_command <= RETURN_HOME;
   else
     next_command <= Print_String;
 end

// Set write address to line 2 character 1
 LINE2:
 begin
   LCD_EN <= 1'b1;
   LCD_RS <= 1'b0;
   LCD_RW <= 1'b0;
   DATA_BUS_VALUE <= 8'hC0; //line 2 character 2 ==> 8'hC1
   state <= DROP_LCD_E;
   next_command <= Print_String;
 end

// Return write address to first character postion on line 1
 RETURN_HOME:
 begin
   LCD_EN <= 1'b1;
   LCD_RS <= 1'b0;
   LCD_RW <= 1'b0;
   DATA_BUS_VALUE <= 8'h80; //line 1 character 2 ==> 8'h81
   state <= DROP_LCD_E;
   next_command <= Print_String;
 end
CG_RAM_HOME:
begin
	LCD_EN <= 1'b1;
   LCD_RS <= 1'b0;
   LCD_RW <= 1'b0;
   DATA_BUS_VALUE <= 8'h40; //CGRAM begin address = 6'h00
	font_addr<=6'd0;//
   state <= DROP_LCD_E;
   next_command <= write_CG;
end
write_CG:
begin
	state <= DROP_LCD_E;
   LCD_EN <= 1'b1;
   LCD_RS <= 1'b1;
   LCD_RW <= 1'b0;
   DATA_BUS_VALUE <= font_data;
	if(font_addr==6'b111111)begin
		next_command <= RETURN_HOME;
	end else begin
		font_addr<=font_addr+1;
		next_command <= write_CG;
	end
end

 DROP_LCD_E:
 begin
   LCD_EN <= 1'b0;
   state <= HOLD;
 end
  
 HOLD:
 begin
   state <= next_command;
 end
 endcase
endmodule

/*===============================================================*/



module LCD_display_string(index,out,DATA_IN,clk,rst,IRDA_RXD);
	input clk,rst;
	input [4:0] index;
	input [3:0] DATA_IN;
	output reg [7:0] out;	
	/*===============================================================*/
	input IRDA_RXD;

	wire [31:0] IR_data;
	wire ready;

	IR_RECEIVE U1(clk,rst,IRDA_RXD,ready,IR_data);
	/*===============================================================*/
	reg [17:0]num[0:1];
	reg [17:0]num_save;
	integer i,j;
	reg [8:0] LCD_OUT [0:1][0:5];
	reg [2:0] state;
	reg MUL_DIV;
	always@(negedge ready,negedge rst)begin
		if(rst == 0)begin
			for(i=0;i<6;i=i+1)begin
				LCD_OUT[0][i] <= 0;
				LCD_OUT[1][i] <= 0;
			end
			num[0]<=0;
			num[1]<=0;
			state <=0;
			MUL_DIV<=0;
		end else begin
			case(IR_TO_NUM(IR_data[23:16]))
				0,1,2,3,4,5,6,7,8,9:begin
					num[state]<=num[state]*10 + IR_TO_NUM(IR_data[23:16]);
					for(i=4;i>0;i=i-1) LCD_OUT[1][i] <= LCD_OUT[1][i-1];
					LCD_OUT[1][0] <= IR_TO_NUM(IR_data[23:16]);

				end
				10,11:begin
					for(i=0;i<5;i=i+1)begin
						 LCD_OUT[0][i]<=LCD_OUT[1][i];
						 LCD_OUT[1][i]<=13;
					end
					state<= 1;
					LCD_OUT[1][5]<=IR_TO_NUM(IR_data[23:16]);
				end
				13:begin//clear
					for(i=0;i<6;i=i+1)begin
						LCD_OUT[0][i] <= 13;
						LCD_OUT[1][i] <= 13;
					end
					num[0] <=0;
					num[1] <=0;
					state  <= 0;
				end
				12:begin //=
					for(i=0;i<6;i=i+1)begin
						LCD_OUT[0][i] <= 13;
						LCD_OUT[1][i] <= 12;
					end
					LCD_OUT[1][5]<=12;
					num_save = LCD_OUT[1][5] == 10 ? num[0]+num[1] : num[0]*num[1];
					for(i=0;i<5;i=i+1)begin
						LCD_OUT[1][i] = num_save%10;
						num_save=num_save/10;
						state  <= 0;
					end
				end
			endcase
		end
	end

	function [8:0] IR_TO_NUM;
		input [8:0] data_in; 
		case(data_in)
			8'h01,8'h02,8'h03,8'h04,8'h05,8'h06,8'h07,8'h08,8'h09: IR_TO_NUM = data_in;
			8'h00												 : IR_TO_NUM = 0;
			8'h0f												 : IR_TO_NUM = 10;// +
			8'h13												 : IR_TO_NUM = 11;// *
			8'h17												 : IR_TO_NUM = 12;// =
			default												 : IR_TO_NUM = 13;// clr

		endcase
	endfunction

	/*===============================================================*/
	function [8:0] NUM_LCD; 
		input [8:0] data_in; 
		case(data_in)
			0,1,2,3,4,5,6,7,8,9: NUM_LCD = 8'h30 + data_in;
			10:                  NUM_LCD = 8'h2B;//+ a
			11:                  NUM_LCD = 8'h2A;//* b
			12:                  NUM_LCD = 8'h3D;//= ent
			default:             NUM_LCD = 8'h20;// clear c
		endcase
	endfunction 
	/*===============================================================*/
		
	always@(*)begin
		case (index)
			5'h00: out <= 8'h20; //L
			5'h01: out <= 8'h20; //C
			5'h02: out <= 8'h20; //D
			5'h03: out <= 8'h20; //
			5'h04: out <= 8'h20; //D
			5'h05: out <= 8'h20; //a
			5'h06: out <= 8'h20; //t
			5'h07: out <= 8'h20; //a
			5'h08: out <= 8'h20; //
			5'h09: out <= 8'h20; //I
			5'h0a: out <= NUM_LCD(LCD_OUT[0][5]); //n
			5'h0b: out <= NUM_LCD(LCD_OUT[0][4]); //=
			5'h0c: out <= NUM_LCD(LCD_OUT[0][3]);
			5'h0d: out <= NUM_LCD(LCD_OUT[0][2]);
			5'h0e: out <= NUM_LCD(LCD_OUT[0][1]);
			5'h0f: out <= NUM_LCD(LCD_OUT[0][0]);
			// Line 2
			5'h10: out <= 8'h20; //D
			5'h11: out <= 8'h20; //E
			5'h12: out <= 8'h20; //2
			5'h13: out <= 8'h20; //
			5'h14: out <= 8'h20; //1
			5'h15: out <= 8'h20; //1
			5'h16: out <= 8'h20; //5
			5'h17: out <= 8'h20; // 
			5'h18: out <= 8'h20; //S
			5'h19: out <= 8'h20; //W
			5'h1a: out <= NUM_LCD(LCD_OUT[1][5]); //+-(自定義字形)
			5'h1b: out <= NUM_LCD(LCD_OUT[1][4]); //L
			5'h1c: out <= NUM_LCD(LCD_OUT[1][3]); //C
			5'h1d: out <= NUM_LCD(LCD_OUT[1][2]); //D
			5'h1e: out <= NUM_LCD(LCD_OUT[1][1]); //D
			5'h1f: out <= NUM_LCD(LCD_OUT[1][0]); //D
			default: out <= 8'h20;
		endcase 
	end
	function [7:0] ASCII;
		input [3:0] data;
		case(data)
		/*0-9*/
		4'h0:ASCII=8'h30;
		4'h1:ASCII=8'h31;
		4'h2:ASCII=8'h32;
		4'h3:ASCII=8'h33;
		4'h4:ASCII=8'h34;
		4'h5:ASCII=8'h35;
		4'h6:ASCII=8'h36;
		4'h7:ASCII=8'h37;
		4'h8:ASCII=8'h38;
		4'h9:ASCII=8'h39;
		default:begin
			ASCII=8'h20;
		end
		endcase
	endfunction  		 
	  
endmodule

module Custom_font_ROM(addr,out_data);//8個自定義字形 
input [5:0] addr;//8*8
output [7:0] out_data;
wire [7:0] data[63:0];

assign out_data=data[addr];
//0
assign data[00]=8'b000_00100;//+-
assign data[01]=8'b000_00100;
assign data[02]=8'b000_11111;
assign data[03]=8'b000_00100;
assign data[04]=8'b000_00100;
assign data[05]=8'b000_00000;
assign data[06]=8'b000_11111;
assign data[07]=8'b000_00000;//游標位置
//1
assign data[08]=8'b000_00000;//
assign data[09]=8'b000_00000;
assign data[10]=8'b000_00000;
assign data[11]=8'b000_00000;
assign data[12]=8'b000_00000;
assign data[13]=8'b000_00000;
assign data[14]=8'b000_00000;
assign data[15]=8'b000_00000;//游標位置
//2
assign data[16]=8'b000_00000;//
assign data[17]=8'b000_00000;
assign data[18]=8'b000_00000;
assign data[19]=8'b000_00000;
assign data[20]=8'b000_00000;
assign data[21]=8'b000_00000;
assign data[22]=8'b000_00000;
assign data[23]=8'b000_00000;//游標位置
//3
assign data[24]=8'b000_00000;//
assign data[25]=8'b000_00000;
assign data[26]=8'b000_00000;
assign data[27]=8'b000_00000;
assign data[28]=8'b000_00000;
assign data[29]=8'b000_00000;
assign data[30]=8'b000_00000;
assign data[31]=8'b000_00000;//游標位置
//4
assign data[32]=8'b000_00000;//
assign data[33]=8'b000_00000;
assign data[34]=8'b000_00000;
assign data[35]=8'b000_00000;
assign data[36]=8'b000_00000;
assign data[37]=8'b000_00000;
assign data[38]=8'b000_00000;
assign data[39]=8'b000_00000;//游標位置
//5
assign data[40]=8'b000_00000;//
assign data[41]=8'b000_00000;
assign data[42]=8'b000_00000;
assign data[43]=8'b000_00000;
assign data[44]=8'b000_00000;
assign data[45]=8'b000_00000;
assign data[46]=8'b000_00000;
assign data[47]=8'b000_00000;//游標位置
//6
assign data[48]=8'b000_00000;//
assign data[49]=8'b000_00000;
assign data[50]=8'b000_00000;
assign data[51]=8'b000_00000;
assign data[52]=8'b000_00000;
assign data[53]=8'b000_00000;
assign data[54]=8'b000_00000;
assign data[55]=8'b000_00000;//游標位置
//7
assign data[56]=8'b000_00000;//
assign data[57]=8'b000_00000;
assign data[58]=8'b000_00000;
assign data[59]=8'b000_00000;
assign data[60]=8'b000_00000;
assign data[61]=8'b000_00000;
assign data[62]=8'b000_00000;
assign data[63]=8'b000_00000;//游標位置
endmodule 
