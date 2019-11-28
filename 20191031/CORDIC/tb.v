`timescale 1ns/10ps
`define cycle 10.0

`define DEBUGMOD 1

module CORDIC_TESTBENCH;

	localparam width = 16; //width of x and y
	`define SINE_FILE "./dat/sin.dat"
	`define COSINE_FILE "./dat/cos.dat"
	`define ANGLE_FILE "./dat/angle.dat"
	`define SIZE 360
	// Inputs
	reg [width-1:0] Xin, Yin;
	reg [31:0] angle;
	reg clk;
	wire signed [width-1:0] COSout, SINout;

	localparam An = 32000/1.64676;
	CORDIC TEST_RUN(clk, COSout, SINout, Xin, Yin, angle);

	reg signed [31:0] angle_data [0:`SIZE-1];
	reg signed [width-1:0] sine_data[0:`SIZE-1];
	reg signed [width-1:0] cosine_data [0:`SIZE-1];
	reg [10:0] err;
	initial begin
		$readmemb(`ANGLE_FILE, angle_data);
		$readmemb(`SINE_FILE, sine_data);
		$readmemb(`COSINE_FILE, cosine_data);
		clk = 'b0;
		//set initial values
		Xin = An;     // Xout = 32000*cos(angle)
		Yin = 0;      // Yout = 32000*sin(angle)
		err=0;
	end
	always #(`cycle/2) clk = !clk;


	reg [15:0] sin_error,cos_error;
	reg signed [width-1:0] COScount, SINcount;
	reg reset;
	initial begin
		sin_error=0;
		cos_error=0;
		reset=1;
		#1 reset=0;
	end
	integer k;
	always@(negedge clk,posedge reset)begin
		if(reset)begin
			angle = angle_data[0];
			k=0;
		end else begin
			if(COSout-cosine_data[k]<0) COScount=-(COSout-cosine_data[k]);
			else COScount=(COSout-cosine_data[k]);
			if(SINout-sine_data[k]<0) SINcount=-(SINout-sine_data[k]);
			else SINcount=(SINout-sine_data[k]);
			sin_error=sin_error+SINcount;
			cos_error=cos_error+COScount;
			
			if(`DEBUGMOD)begin
				$write("DEBUG: %d   sine is %h , your  sine  is %h  ,gap is %d.",k,sine_data[k],SINout,SINcount);
				if(SINcount<=5) $display("");
				else $display("   ------------");
				$write("DEBUG: %d cosine is %h , your cosine is %h  ,gap is %d.",k,cosine_data[k],COSout,COScount);
				if(COScount<=5) $display("");
				else $display("   ------------");
			end
			k=k+1;
			if(k==`SIZE)begin
				$display("\n============================================================================\n");
				if((sin_error/`SIZE)>5) $display("\t\tSine:answer Mean Error out of 5 !!!");
				if((cos_error/`SIZE)>5) $display("\t\tCosine:answer Mean Error out of 5 !!!");
				if(((sin_error/`SIZE)<=5) && ((cos_error/`SIZE)<=5) )begin
					$display("\t\tPASS OF ALL DATA!!!          \\(^o^)/    ");
				end else if(((sin_error/`SIZE)>5)|| ((cos_error/`SIZE)>5))begin
					$display("\t\tFAIL! Please check your code.       (T_T)    ");
				end else begin
					$display("\t\tFAIL! Please check your code.       (X_X)    ");
				end
				$display("\n============================================================================\n");
				$finish;
			end
			angle = angle_data[k];
		end
	end


endmodule
