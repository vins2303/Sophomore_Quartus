`define CYCLE_TIME 20.0
`timescale 1ns/10ps
module PATTERN(
// Output signals
  in_n0,
  in_n1,
  in_n2,
  in_n3,
  opt,
  // Input signals
  out_n
);
//================================================================
//   INPUT AND OUTPUT DECLARATION                         
//================================================================
output reg signed[3:0] in_n0, in_n1, in_n2, in_n3;
output reg[3:0] opt;

input signed[8:0] out_n;
//================================================================
// parameters & integer
//================================================================
reg clk;
real	CYCLE = `CYCLE_TIME;
integer PATNUM = 100;
integer seed;
integer total_latency;
integer patcount;
integer file_in, file_out, cnt_in, cnt_out;
integer lat;
//================================================================
// wire & registers 
//================================================================
reg	signed[3:0]  sort_n0, sort_n1, sort_n2, sort_n3;
reg	signed[4:0]  rm_n0, rm_n1, rm_n2, rm_n3;
integer avg;
reg	signed[8:0]  ANS;
//================================================================
// clock
//================================================================
always	#(CYCLE/2.0) clk = ~clk;
initial	clk = 0;
//================================================================
// initial
//================================================================
initial begin
    file_in =  $fopen("./inputs.txt", "r");
	file_out = $fopen("./outputs.txt", "r");
    if (file_in == 0 || file_out == 0)begin
		$display ("Error in opening the files");
		$finish;
	end

    in_n0 = 4'dx;
	in_n1 = 4'dx;
	in_n2 = 4'dx;
	in_n3 = 4'dx;
	opt = 3'dx;
	force clk = 0;
	release clk;
	total_latency = 0;
	seed = 32;

	for(patcount = 0; patcount < PATNUM; patcount = patcount + 1)
	begin		
		input_task;
		@(negedge clk);
		check_ans;
	end
	
	YOU_PASS_task;
	$fclose(file_in);
	$fclose(file_out);
end

//================================================================
// task
//================================================================
task input_task; begin
	//generate operation and inputs 
	cnt_in = $fscanf(file_in, "%d %d %d %d %d\n", in_n0, in_n1, in_n2, in_n3, opt);
	cnt_out = $fscanf(file_out,"%d\n", ANS);

end endtask

task check_ans; begin
	if( ANS !== out_n ) begin
		$display("**************************************************************");
		
		
		
	                                                                                     
                                                                                
                                                                                
                                                                                
$display("                                                                                 ");
$display("                                                                                 ");
$display("                                                                                 ");
$display("                         ,                                                       ");
$display("                     ## ]&                          0    ]8                      ");
$display("                     0' ]N         ]D       ]0      B    ]&                      ");
$display("                    ]#__d0gmQ#&    ]K       ]0   ypMMgg,_&H__                    ");
$display("                    ]M0M0F^^`~0    #M       ]M    ~##F~0MNNMN'                   ");
$display("                       _W`    01   #8       ]Q     0&   ]0                       ");
$display("                       p@     0T   0T___  __jM     01    #                       ");
$display("                      yQ      #0   #M00QN#0NN0     &&                            ");
$display("                     _0f    QMMf                   ^#Q0#0NQp                     ");
$display("                     0F        _,,gmgQmpggpayq,__     ``~^~^                     ");
$display("                  _____g,yggpQB00#~^^`7~~Z7#~~MMMMMp,___                         ");
$display("            ,p#000$M~~jpK@M~\~         -,        -^P#00H&###BN&&gp,_             ");
$display("            Nf~&6_  pNM0^            -                 ~MQ&q    _B#Mg            ");
$display("           4W    jN0~`                            -       ^0&mmM^  ^Nt           ");
$display("           06  _0#^               -  --   - -               ^M0qg   #M           ");
$display("          ]N  g0~  --         -  -       -                     M#&_  M1          ");
$display("          0Fp0C    ^7W0*NmLc --     -     -          vv#M0MM~    7&x K&          ");
$display("         _DW0 -   -         --     -     -                        ~D#j0          ");
$display("         [0X     -      -   -                               -     - MBQ6         ");
$display("         4f     _pawer&pvve*mv6_- --            ,a*awmmamgxmq_,_     70q         ");
$display("        ]#      6_            _J5               L,       `     ^k -   *M         ");
$display("        0'        `'~~~~~^^~^``        __         ^?~~~~~~~~~~~^       #&        ");
$display("       ]&                       ,r=~~M&NQ0@~~~*\,                -  -- ~#t       ");
$display("       #F                     j~       #~        ~c         -        \  0&       ");
$display("       NC  ,r                 '        f          `              'm   - /Nc      ");
$display("    _g0M  Nf \1              ]         1          _6               Mmg  1MB#_    ");
$display("   _0@0N0N$   __u             4,       _b_       p!                  ^Agg#M/0&   ");
$display("   Q!    ~QMES`                 ~!+*m*~^  YN**~~`                    \NM^``  4Q  ");
$display("  ]W       0n`                       ^*mao*`                     ~~0x#F       0  ");
$display("  0f       ]#~3!                                                    y0        B1 ");
$display("  #f      ;0& -                                                   -QM0g       y$ ");
$display("  #$      lE~04z                                                    pMB       #F ");
$display("  ]#      QQ:  -                    *n,____m!                     *T~^01      Q} ");
$display("   7&   gM#BMg:                                                     /y#0&,   ]0  ");
$display("    W&  ``   MNe_                                                  gM#  ~~  p@   ");
$display("    ]#      \^~RQNp_                                            ppN0T\      0f   ");
$display("     #&        -/~*N0gg_                                    _p##05  \  \w  K#    ");
$display("      Qp, ~   -      CPMN                                 *N@@^   ^     \/q#'    ");
$display("       Q1    ^   -                                                 ~    ^3#'     ");
$display("        0&_,w- \ #        -                              -     N&    -& ##`      ");
$display("         ~N#/t  00                                   -  -       &p ~^_q00        ");
$display("           00u_ 0S         --                               -   Q#  NMB'         ");
$display("             'M##,-                                         :  mB#Q0^            ");
$display("               0K\ /    \                                \   ^~ zNf              ");
$display("               0H&  ^     \                            -_     dE/B&              ");
$display("               #^    -    \                               -^   ~-*M              ");
$display("                                                                                 ");
$display("                                                                                 ");
$display("                                                                                 ");
$display("  ");    
                                                                                
                                                                                
		 
		
		
		
		$display("*                            PATTERN NO.%4d 	                ",patcount);
		$display("*                 Ans : %d,  Your output : %d  at %8t         ",ANS,out_n,$time);
		$display("**************************************************************");
		$finish;
	end
	else begin
		$display("*                            PATTERN NO.%4d  passed	                ",patcount);
	end
end endtask

task YOU_PASS_task;begin
                                                                               
                                                                                
                                                                                
                                                                                
$display ("                                                                                      ");
$display ("                                                                                      ");
$display ("                                                    _    _,__    _                    ");
$display ("                                              _pgN0MM00M0MMMMM0M000MNNpgpppq_         ");
$display ("                                              0M^'                     `^~7M0&        ");
$display ("                                              &                              0        ");
$display ("                                             ]#                              0        ");
$display ("                                             ]f                              0        ");
$display ("                                             4f                              0        ");
$display ("                                             0                              ]0        ");
$display ("                                             #                              ]0        ");
$display ("                                             #                              ]0        ");
$display ("                                            ]&                              4#        ");
$display ("                                            ]#                              ##        ");
$display ("                                            jA                              MA        ");
$display ("                                            05                              0f        ");
$display ("                                            M                               0         ");
$display ("                                            0                              ]0         ");
$display ("                                           ]0                              4#         ");
$display ("                                           j0                              Bf         ");
$display ("                                           #0                              B!         ");
$display ("                                           B&        _______,pqggpgpqpM0M0N0          ");
$display ("                                           000NMMM0MM000MMMM~~~~~~~'^`^```B0          ");
$display ("                                          ]0P~                            ]#          ");
$display ("                                          ]#                              MP          ");
$display ("                                          Q&                              0f          ");
$display ("                                          #&                             ]06  _       ");
$display ("                                          0f                         _,,p0000M00      ");
$display ("                                          0'            __,,gggp0MM00000000~~``       ");
$display ("                                      _ _j0q,gggpgp0MMM000MM00000000000000&           ");
$display ("                              00M00M000M000MM@M~~~^    ]0     ^~MM00000000f           ");
$display ("    __,      ,ggg_             ~~~0F~`]0~              ]0           '70000f           ");
$display ("   gMM0g   qMF~^'Mp               Q   Q0               ]#              ~#0            ");
$display ("  #'   M0p05     '0               #   #&               4#               ]0            ");
$display (" gf     MM'       0               #   Q#               0M               j&            ");
$display (" 0      ^^       _0               #   `0_             0@             _yQMc            ");
$display ("M&               #H               H    '0g          p#M           _y*^ J0             ");
$display ("4&              j#               ]&     '0MNgggpgg00@'         _p&~]  j0`             ");
$display (" 0             jM'               i6      0f~~~~'~~        _,g+~ E  ] p0f              ");
$display (" M&           p0'                0#      #6          __yaMP`    #  jM0'               ");
$display ("  Bp        _g0                 N00&     '0p___,ma#V'^    6     &g00~                 ");
$display ("   M&     _pMP                 00000&      M0#_   f       !  __p0M~                   ");
$display ("    '0gpgg0~                 _0000000&       ~M0Np&______gQp0MM^                      ");
$display ("      ~M7^                  _000000000A          `~~MMMMF~~                           ");
$display ("                            '~~'~~` `                                                 ");
$display ("                                                                                      ");
$display ("                                                                                      ");
                                                                                
                                                                                
                                                                                
                                                                                
	  $display ("-------------------------------------------------------------------");
	  $display ("                         Congratulations!                          ");
	  $display ("                  You have passed all patterns!                    ");
	  //$display ("                 Your execution cycles = %5d cycles                ", total_latency);
	 // $display ("                    Your clock period = %.1f ns                    ", CYCLE);
	 // $display ("                    Your total latency = %.1f ns                   ", total_latency*CYCLE);
	  $display ("-------------------------------------------------------------------");    
	  $finish;
end endtask
endmodule
