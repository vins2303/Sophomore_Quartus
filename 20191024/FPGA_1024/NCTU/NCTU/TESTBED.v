//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   (C) Copyright Laboratory System Integration and Silicon Implementation
//   All Right Reserved
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   ICLAB 2018 Fall
//   Lab01-Practice		: Code Calculator
//   Author     		: Po-Yu, Huang (hpy35269.eecs02@g2.nctu.edu.com)
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   File Name   : TESETBED.v
//   Module Name : TESETBED
//   Release version : V1.0 (Release Date: 2016-09)
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################

`timescale 1ns/10ps
`include "PATTERN.v"
`ifdef RTL
  `include "CC.v"
`endif
`ifdef GATE
  `include "CC_SYN.v"
`endif
	  		  	
module TESTBED; 

//Connection wires
wire [3:0] in_n0, in_n1, in_n2, in_n3;
wire [3:0] opt;
wire [8:0] out_n; 

initial begin
  `ifdef RTL
    $fsdbDumpfile("CC.fsdb");
	$fsdbDumpvars(0,"+mda");
    $fsdbDumpvars();
  `endif
  `ifdef GATE
    $sdf_annotate("CC_SYN.sdf", My_CC);
    $fsdbDumpfile("CC_SYN.fsdb");
	$fsdbDumpvars(0,"+mda");
    $fsdbDumpvars();    
  `endif
end

CC My_CC(
.in_n0(in_n0),
.in_n1(in_n1),
.in_n2(in_n2),
.in_n3(in_n3),
.opt(opt),
.out_n(out_n)
);

PATTERN My_PATTERN(
.in_n0(in_n0),
.in_n1(in_n1),
.in_n2(in_n2),
.in_n3(in_n3),
.opt(opt),
.out_n(out_n)
);
  
 
endmodule
