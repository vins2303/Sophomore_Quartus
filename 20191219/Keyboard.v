module Keyboard(
  input            clk,                  // System Clock            
  input            rst_n,                // Reset             
  input            ps2_clk,              // PS2_Clock
  input            ps2_dat,              // PS2_Data 
  output	 [7:0]   key_out
);
// ps2_Clock Filter //
reg ps2_clk_r0, ps2_clk_r1;
wire ps2_clk_n = (~ps2_clk_r1) & ps2_clk_r0; // Cur = 0 Before = 1 //

always @ (posedge clk, negedge rst_n) 
begin
  if (!rst_n) begin
    ps2_clk_r0 <= 1'b0;
    ps2_clk_r1 <= 1'b0;
  end
  else begin
    ps2_clk_r1 <= ps2_clk; // Cur
    ps2_clk_r0 <= ps2_clk_r1; // Before
  end
end 


// ps2_Dat 11bit //
reg [3:0] cnt; 
reg [7:0] ps2_byte;  
reg [7:0] ps2_byte_buf;   
        
always @ (posedge clk or negedge rst_n) begin
  if (!rst_n)
    cnt <= 0;
  else if (ps2_clk_n) begin                           
    if (cnt >= 4'hA) begin              
		if (ps2_byte_buf == 8'hF0);
		else	
		  ps2_byte <= ps2_byte_buf; 
		cnt <= 0;	
	end	else
      cnt <= cnt + 1'b1;
  end
end
     

always @ (posedge clk or negedge rst_n) begin
  if(!rst_n) 
      ps2_byte_buf <= 8'h0;
  else if (ps2_clk_n)                   
    case (cnt)
      4'h1    : ps2_byte_buf[0] <= ps2_dat;  // bit0
      4'h2    : ps2_byte_buf[1] <= ps2_dat;  // bit1
      4'h3    : ps2_byte_buf[2] <= ps2_dat;  // bit2
      4'h4    : ps2_byte_buf[3] <= ps2_dat;  // bit3
      4'h5    : ps2_byte_buf[4] <= ps2_dat;  // bit4
      4'h6    : ps2_byte_buf[5] <= ps2_dat;  // bit5
      4'h7    : ps2_byte_buf[6] <= ps2_dat;  // bit6
      4'h8    : ps2_byte_buf[7] <= ps2_dat;  // bit7
      default : ;
    endcase
end

             
// // 鍵盤Dat -> Ascii Code //
// always @ (ps2_byte) begin
//   case (ps2_byte)
//     8'h16	:begin
// 		KB <= 0;
// 	end
// 	8'h1E	:begin
// 		KB <= 1;
// 	end
// 	8'h26	:begin
// 		KB <= 2;
// 	end
// 	8'h25	:begin
// 		KB <= 3;
// 	end
  
//     default : ;	
//   endcase
//  end


endmodule

