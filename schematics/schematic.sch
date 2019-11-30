# File saved with Nlview 7.0.19  2019-03-26 bk=1.5019 VDI=41 GEI=35 GUI=JA:9.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new bus_8bit work:bus_8bit:NOFILE -nosplit
load symbol ALU work:ALU:NOFILE HIERBOX pin clk input.left pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus opCode input.left [3:0] pinBus result output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol data_register work:data_register:NOFILE HIERBOX pin clk input.left pin load input.left pinBus data_in input.left [7:0] pinBus out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol data_register work:abstract:NOFILE HIERBOX pin clk input.left pin load input.left pinBus data_in input.left [7:0] pinBus out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol control_unit work:control_unit:NOFILE HIERBOX pin addr_en output.right pin clk input.left pin count_en output.right pin mem_write_en output.right pinBus count input.left [7:0] pinBus en output.right [7:0] pinBus instr input.left [3:0] pinBus load output.right [3:0] pinBus opCode output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol instruction_register work:instruction_register:NOFILE HIERBOX pin clk input.left pin load input.left pinBus data_in input.left [7:0] pinBus instr output.right [3:0] pinBus out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX26 work MUX pin S input.bot pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MUX1 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol prog_counter work:prog_counter:NOFILE HIERBOX pin clk input.left pin en input.left pin jump input.left pinBus count_in input.left [3:0] pinBus count_out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RAM work:RAM:NOFILE HIERBOX pin clk input.left pin write input.left pinBus addr input.left [3:0] pinBus mem_in input.left [7:0] pinBus mem_out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX21 work MUX pin S input.bot pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_MUX28 work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus I2 input.left [7:0] pinBus I3 input.left [7:0] pinBus I4 input.left [7:0] pinBus I5 input.left [7:0] pinBus I6 input.left [3:0] pinBus I7 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_ROM28 work GEN pin O output.right pinBus A input.left [7:0] fillcolor 1
load symbol RTL_LATCH work GEN pin G input.left pinBus D input.left [7:0] pinBus Q output.right [7:0] fillcolor 1
load symbol RTL_MUX29 work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_REG__BREG_2 work GEN pin C input.clk.left pin CE input.left pin D input.left pin Q output.right fillcolor 1
load symbol RTL_REG__BREG_2 work[7:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [7:0] pinBus Q output.right [7:0] fillcolor 1 sandwich 3 prop @bundle 8
load symbol RTL_REG__BREG_2 work[3:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [3:0] pinBus Q output.right [3:0] fillcolor 1 sandwich 3 prop @bundle 4
load symbol RTL_REG__BREG_1 work[7:0]sww GEN pin C input.clk.left pinBus D input.left [7:0] pinBus Q output.right [7:0] fillcolor 1 sandwich 3 prop @bundle 8
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_AND work AND pinBus I0 input [7:0] pinBus I1 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_OR work OR pinBus I0 input [7:0] pinBus I1 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_EQ work RTL(=) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [0:0] fillcolor 1
load symbol RTL_MUX work MUX pin I4 input.left pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus I2 input.left [7:0] pinBus I3 input.left [7:0] pinBus I5 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_ADD0 work RTL(+) pin I1 input.left pinBus I0 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_REG__BREG_3 work[7:0]swww GEN pin C input.clk.left pinBus CE input.left [7:0] pinBus D input.left [7:0] pinBus Q output.right [7:0] fillcolor 1 sandwich 3 prop @bundle 8
load symbol RTL_LATCH1 work GEN pin G input.left pinBus D input.left [3:0] pinBus Q output.right [3:0] fillcolor 1
load symbol RTL_MUX0 work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus I10 input.left [7:0] pinBus I11 input.left [7:0] pinBus I12 input.left [7:0] pinBus I13 input.left [7:0] pinBus I14 input.left [7:0] pinBus I15 input.left [7:0] pinBus I2 input.left [7:0] pinBus I3 input.left [7:0] pinBus I4 input.left [7:0] pinBus I5 input.left [7:0] pinBus I6 input.left [7:0] pinBus I7 input.left [7:0] pinBus I8 input.left [7:0] pinBus I9 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_ROM work GEN pin O output.right pinBus A input.left [3:0] fillcolor 1
load symbol RTL_ROM18 work GEN pin O output.right pinBus A input.left [6:0] fillcolor 1
load symbol RTL_ROM24 work GEN pin O output.right pinBus A input.left [2:0] fillcolor 1
load symbol RTL_REG_SYNC__BREG_10 workC GEN pin C input.neg.clk.left pin D input.left pin Q output.right pin RST input.top pin SET input.bot fillcolor 1
load symbol RTL_ADD1 work RTL(+) pin I1 input.left pinBus I0 input.left [2:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_EQ0 work RTL(=) pin O output.right pinBus I0 input.left [2:0] pinBus I1 input.left [2:0] fillcolor 1
load symbol RTL_REG_SYNC__BREG_4 workC GEN pin C input.neg.clk.left pin D input.left pin Q output.right pin RST input.top fillcolor 1
load symbol RTL_ROM15 work GEN pinBus A input.left [6:0] pinBus O output.right [4:0] fillcolor 1
load symbol RTL_ROM16 work GEN pinBus A input.left [2:0] pinBus O output.right [4:0] fillcolor 1
load symbol RTL_MUX17 work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [2:0] fillcolor 1
load symbol RTL_ROM21 work GEN pinBus A input.left [6:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_ROM22 work GEN pinBus A input.left [2:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_MUX18 work MUX pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] pinBus S input.bot [2:0] fillcolor 1
load symbol RTL_REG__BREG_1 workC GEN pin C input.neg.clk.left pin D input.left pin Q output.right fillcolor 1
load symbol RTL_ROM26 work GEN pinBus A input.left [6:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_ROM27 work GEN pinBus A input.left [2:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_REG_SYNC__BREG_5 workC[3:0]swwww GEN pin C input.neg.clk.left pinBus D input.left [3:0] pinBus Q output.right [3:0] pinBus RST input.top [3:0] pinBus SET input.bot [3:0] fillcolor 1 sandwich 3 prop @bundle 4
load symbol RTL_REG_SYNC__BREG_9 workC[3:0]swww GEN pin C input.neg.clk.left pinBus D input.left [3:0] pinBus Q output.right [3:0] pinBus RST input.top [3:0] fillcolor 1 sandwich 3 prop @bundle 4
load symbol RTL_REG_SYNC__BREG_6 workC[7:0]swwww GEN pin C input.neg.clk.left pinBus D input.left [7:0] pinBus Q output.right [7:0] pinBus RST input.top [7:0] pinBus SET input.bot [7:0] fillcolor 1 sandwich 3 prop @bundle 8
load symbol RTL_REG_SYNC__BREG_4 workC[2:0]swws GEN pin C input.neg.clk.left pinBus D input.left [2:0] pinBus Q output.right [2:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 3
load port clk input -pg 1 -lvl 0 -x -60 -y 60
load port write_prog input -pg 1 -lvl 0 -x -60 -y 760
load portBus addr_write_prog input [3:0] -attr @name addr_write_prog[3:0] -pg 1 -lvl 0 -x -60 -y 490
load portBus bus_reg output [7:0] -attr @name bus_reg[7:0] -pg 1 -lvl 9 -x 6680 -y 340
load portBus mem_read_data output [7:0] -attr @name mem_read_data[7:0] -pg 1 -lvl 9 -x 6680 -y 650
load portBus mem_write_data_prog input [7:0] -attr @name mem_write_data_prog[7:0] -pg 1 -lvl 0 -x -60 -y 730
load portBus out_DISP output [7:0] -attr @name out_DISP[7:0] -pg 1 -lvl 9 -x 6680 -y 460
load inst ALU0 ALU work:ALU:NOFILE -autohide -attr @cell(#000000) ALU -attr @fillcolor #fafafa -pinBusAttr A @name A[7:0] -pinBusAttr B @name B[7:0] -pinBusAttr opCode @name opCode[3:0] -pinBusAttr result @name result[7:0] -pg 1 -lvl 6 -x 4180 -y 298
load inst A_reg data_register work:data_register:NOFILE -autohide -attr @cell(#000000) data_register -attr @fillcolor #fafafa -pinBusAttr data_in @name data_in[7:0] -pinBusAttr out @name out[7:0] -pg 1 -lvl 5 -x 3660 -y 388
load inst B_reg data_register work:abstract:NOFILE -autohide -attr @cell(#000000) data_register -attr @fillcolor #fafafa -pinBusAttr data_in @name data_in[7:0] -pinBusAttr out @name out[7:0] -pg 1 -lvl 5 -x 3660 -y 204
load inst CTRL_UNIT control_unit work:control_unit:NOFILE -autohide -attr @cell(#000000) control_unit -attr @fillcolor #fafafa -pinBusAttr count @name count[7:0] -pinBusAttr en @name en[7:0] -pinBusAttr instr @name instr[3:0] -pinBusAttr load @name load[3:0] -pinBusAttr opCode @name opCode[3:0] -pg 1 -lvl 2 -x 1120 -y 298
load inst INSTR_REG instruction_register work:instruction_register:NOFILE -autohide -attr @cell(#000000) instruction_register -attr @fillcolor #fafafa -pinBusAttr data_in @name data_in[7:0] -pinBusAttr instr @name instr[3:0] -pinBusAttr out @name out[7:0] -pg 1 -lvl 1 -x 190 -y 72
load inst Mem_in_reg_i RTL_MUX26 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 4 -x 3320 -y 720
load inst Mem_in_reg_i__0 RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 4 -x 3320 -y 860
load inst P_Counter prog_counter work:prog_counter:NOFILE -unfold -autohide -attr @cell(#000000) prog_counter -attr @fillcolor #fafafa -pinBusAttr count_in @name count_in[3:0] -pinBusAttr count_out @name count_out[7:0] -pg 1 -lvl 1 -x 190 -y 382
load inst RAM0 RAM work:RAM:NOFILE -autohide -attr @cell(#000000) RAM -attr @fillcolor #fafafa -pinBusAttr addr @name addr[3:0] -pinBusAttr mem_in @name mem_in[7:0] -pinBusAttr mem_out @name mem_out[7:0] -pg 1 -lvl 6 -x 4180 -y 926
load inst addr_reg_i RTL_MUX21 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 3 -x 3000 -y 570
load inst addr_reg_i__0 RTL_MUX21 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 4 -x 3320 -y 480
load inst addr_reg_i__1 RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 3000 -y 810
load inst addr_reg_i__2 RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 4 -x 3320 -y 600
load inst bus_reg_i RTL_MUX28 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=8'b00000000 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=8'b00000001 -pinBusAttr I2 @name I2[7:0] -pinBusAttr I2 @attr S=8'b00000010 -pinBusAttr I3 @name I3[7:0] -pinBusAttr I3 @attr S=8'b00000011 -pinBusAttr I4 @name I4[7:0] -pinBusAttr I4 @attr S=8'b00000100 -pinBusAttr I5 @name I5[7:0] -pinBusAttr I5 @attr S=8'b00000101 -pinBusAttr I6 @name I6[3:0] -pinBusAttr I6 @attr S=8'b00000110 -pinBusAttr I7 @name I7[7:0] -pinBusAttr I7 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 7 -x 6301 -y 170
load inst bus_reg_i__0 RTL_ROM28 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[7:0] -pg 1 -lvl 7 -x 6301 -y 350
load inst bus_reg_reg RTL_LATCH work -attr @cell(#000000) RTL_LATCH -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 8 -x 6521 -y 340
load inst out_DISP_i RTL_MUX29 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=8'b00000111 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 7 -x 6301 -y 550
load inst out_DISP_i__0 RTL_ROM28 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[7:0] -pg 1 -lvl 7 -x 6301 -y 450
load inst out_DISP_reg RTL_LATCH work -attr @cell(#000000) RTL_LATCH -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 8 -x 6521 -y 460
load inst write_en_i RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 4 -x 3320 -y 1100
load inst write_en_i__0 RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 4 -x 3320 -y 980
load inst write_en_reg RTL_REG__BREG_2 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 5 -x 3660 -y 1088
load inst Mem_in_reg_reg[7:0] RTL_REG__BREG_2 work[7:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 5 -x 3660 -y 808
load inst addr_reg_reg[3:0] RTL_REG__BREG_2 work[3:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 5 -x 3660 -y 618
load inst mem_read_data_reg[7:0] RTL_REG__BREG_1 work[7:0]sww -attr @cell(#000000) RTL_REG -pg 1 -lvl 8 -x 6521 -y 650
load inst ALU0|result0_i RTL_ADD work -hier ALU0 -attr @cell(#000000) RTL_ADD -attr @name result0_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 4300 -y 418
load inst ALU0|result0_i__0 RTL_SUB work -hier ALU0 -attr @cell(#000000) RTL_SUB -attr @name result0_i__0 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 4300 -y 318
load inst ALU0|result0_i__1 RTL_AND work -hier ALU0 -attr @cell(#000000) RTL_AND -attr @name result0_i__1 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 4300 -y 498
load inst ALU0|result0_i__2 RTL_OR work -hier ALU0 -attr @cell(#000000) RTL_OR -attr @name result0_i__2 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 4300 -y 568
load inst ALU0|result0_i__3 RTL_EQ work -hier ALU0 -attr @cell(#000000) RTL_EQ -attr @name result0_i__3 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1 -pg 1 -lvl 1 -x 4300 -y 688
load inst ALU0|result_i RTL_MUX work -hier ALU0 -attr @cell(#000000) RTL_MUX -attr @name result_i -pinAttr I4 @attr S=4'b0101 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=4'b0001 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=4'b0010 -pinBusAttr I2 @name I2[7:0] -pinBusAttr I2 @attr S=4'b0011 -pinBusAttr I3 @name I3[7:0] -pinBusAttr I3 @attr S=4'b0100 -pinBusAttr I5 @name I5[7:0] -pinBusAttr I5 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 2 -x 4640 -y 488
load inst ALU0|result_reg[7:0] RTL_REG__BREG_1 work[7:0]sww -hier ALU0 -attr @cell(#000000) RTL_REG -attr @name result_reg[7:0] -pg 1 -lvl 3 -x 4810 -y 378
load inst A_reg|out_reg RTL_LATCH work -hier A_reg -attr @cell(#000000) RTL_LATCH -attr @name out_reg -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 1 -x 3740 -y 418
load inst B_reg|out_reg RTL_LATCH work -hier B_reg -attr @cell(#000000) RTL_LATCH -attr @name out_reg -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 1 -x 3740 -y 234
load inst P_Counter|count_out_reg0_i RTL_ADD0 work -hier P_Counter -attr @cell(#000000) RTL_ADD -attr @name count_out_reg0_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 290 -y 442
load inst P_Counter|count_out_reg[7:0] RTL_REG__BREG_2 work[7:0]ssww -hier P_Counter -attr @cell(#000000) RTL_REG -attr @name count_out_reg[7:0] -pg 1 -lvl 2 -x 580 -y 422
load inst P_Counter|count_out_reg__0[7:0] RTL_REG__BREG_3 work[7:0]swww -hier P_Counter -attr @cell(#000000) RTL_REG -attr @name count_out_reg__0[7:0] -pinBusAttr D @attr n/c -pg 1 -lvl 2 -x 580 -y 572
load inst INSTR_REG|instr_reg RTL_LATCH1 work -hier INSTR_REG -attr @cell(#000000) RTL_LATCH -attr @name instr_reg -pinBusAttr D @name D[3:0] -pinBusAttr Q @name Q[3:0] -pg 1 -lvl 1 -x 270 -y 102
load inst INSTR_REG|out_reg RTL_LATCH work -hier INSTR_REG -attr @cell(#000000) RTL_LATCH -attr @name out_reg -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 1 -x 270 -y 212
load inst RAM0|mem_i RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 2806
load inst RAM0|mem_i__0 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 956
load inst RAM0|mem_i__1 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__1 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 1086
load inst RAM0|mem_i__10 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__10 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 2206
load inst RAM0|mem_i__11 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__11 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 2326
load inst RAM0|mem_i__12 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__12 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 2446
load inst RAM0|mem_i__13 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__13 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 2566
load inst RAM0|mem_i__14 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__14 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 2686
load inst RAM0|mem_i__15 RTL_MUX0 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__15 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=4'b1111 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=4'b1110 -pinBusAttr I10 @name I10[7:0] -pinBusAttr I10 @attr S=4'b0101 -pinBusAttr I11 @name I11[7:0] -pinBusAttr I11 @attr S=4'b0100 -pinBusAttr I12 @name I12[7:0] -pinBusAttr I12 @attr S=4'b0011 -pinBusAttr I13 @name I13[7:0] -pinBusAttr I13 @attr S=4'b0010 -pinBusAttr I14 @name I14[7:0] -pinBusAttr I14 @attr S=4'b0001 -pinBusAttr I15 @name I15[7:0] -pinBusAttr I15 @attr S=4'b0000 -pinBusAttr I2 @name I2[7:0] -pinBusAttr I2 @attr S=4'b1101 -pinBusAttr I3 @name I3[7:0] -pinBusAttr I3 @attr S=4'b1100 -pinBusAttr I4 @name I4[7:0] -pinBusAttr I4 @attr S=4'b1011 -pinBusAttr I5 @name I5[7:0] -pinBusAttr I5 @attr S=4'b1010 -pinBusAttr I6 @name I6[7:0] -pinBusAttr I6 @attr S=4'b1001 -pinBusAttr I7 @name I7[7:0] -pinBusAttr I7 @attr S=4'b1000 -pinBusAttr I8 @name I8[7:0] -pinBusAttr I8 @attr S=4'b0111 -pinBusAttr I9 @name I9[7:0] -pinBusAttr I9 @attr S=4'b0110 -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 4 -x 5750 -y 1756
load inst RAM0|mem_i__2 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__2 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 1206
load inst RAM0|mem_i__3 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__3 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 1346
load inst RAM0|mem_i__4 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__4 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 1466
load inst RAM0|mem_i__5 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__5 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 1586
load inst RAM0|mem_i__6 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__6 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 1706
load inst RAM0|mem_i__7 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__7 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 1826
load inst RAM0|mem_i__8 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__8 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 1946
load inst RAM0|mem_i__9 RTL_MUX1 work -hier RAM0 -attr @cell(#000000) RTL_MUX -attr @name mem_i__9 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 4790 -y 2066
load inst RAM0|mem_reg[0] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[0] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 986
load inst RAM0|mem_reg[0]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[0]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 1386
load inst RAM0|mem_reg[10] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[10] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 2086
load inst RAM0|mem_reg[10]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[10]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 2296
load inst RAM0|mem_reg[11] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[11] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 2206
load inst RAM0|mem_reg[11]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[11]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 2386
load inst RAM0|mem_reg[12] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[12] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 2316
load inst RAM0|mem_reg[12]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[12]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 2476
load inst RAM0|mem_reg[13] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[13] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 2426
load inst RAM0|mem_reg[13]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[13]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 2576
load inst RAM0|mem_reg[14] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[14] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 2536
load inst RAM0|mem_reg[14]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[14]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 2666
load inst RAM0|mem_reg[15] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[15] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 2646
load inst RAM0|mem_reg[15]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[15]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 2796
load inst RAM0|mem_reg[1] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[1] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 1096
load inst RAM0|mem_reg[1]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[1]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 1476
load inst RAM0|mem_reg[2] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[2] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 1206
load inst RAM0|mem_reg[2]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[2]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 1566
load inst RAM0|mem_reg[3] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[3] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 1316
load inst RAM0|mem_reg[3]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[3]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 1656
load inst RAM0|mem_reg[4] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[4] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 1426
load inst RAM0|mem_reg[4]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[4]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 1746
load inst RAM0|mem_reg[5] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[5] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 1536
load inst RAM0|mem_reg[5]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[5]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 1836
load inst RAM0|mem_reg[6] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[6] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 1646
load inst RAM0|mem_reg[6]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[6]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 1936
load inst RAM0|mem_reg[7] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[7] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 1756
load inst RAM0|mem_reg[7]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[7]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 2026
load inst RAM0|mem_reg[8] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[8] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 1866
load inst RAM0|mem_reg[8]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[8]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 2116
load inst RAM0|mem_reg[9] RTL_LATCH work -hier RAM0 -attr @cell(#000000) RTL_LATCH -attr @name mem_reg[9] -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 3 -x 5260 -y 1976
load inst RAM0|mem_reg[9]_i RTL_ROM work -hier RAM0 -attr @cell(#000000) RTL_ROM -attr @name mem_reg[9]_i -pinBusAttr A @name A[3:0] -pg 1 -lvl 1 -x 4250 -y 2206
load inst CTRL_UNIT|addr_en_i RTL_ROM18 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name addr_en_i -pinBusAttr A @name A[6:0] -pg 1 -lvl 5 -x 2120 -y 498
load inst CTRL_UNIT|addr_en_i__0 RTL_ROM24 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name addr_en_i__0 -pinBusAttr A @name A[2:0] -pg 1 -lvl 5 -x 2120 -y 318
load inst CTRL_UNIT|addr_en_i__1 RTL_ROM24 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name addr_en_i__1 -pinBusAttr A @name A[2:0] -pg 1 -lvl 5 -x 2120 -y 408
load inst CTRL_UNIT|addr_en_reg RTL_REG_SYNC__BREG_10 workC -hier CTRL_UNIT -attr @cell(#000000) RTL_REG_SYNC -attr @name addr_en_reg -pg 1 -lvl 6 -x 2370 -y 468
load inst CTRL_UNIT|count20_i RTL_ADD1 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ADD -attr @name count20_i -pinBusAttr I0 @name I0[2:0] -pinBusAttr O @name O[2:0] -pg 1 -lvl 1 -x 1240 -y 1128
load inst CTRL_UNIT|count20_i__0 RTL_EQ0 work -hier CTRL_UNIT -attr @cell(#000000) RTL_EQ -attr @name count20_i__0 -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 2 -x 1440 -y 1128
load inst CTRL_UNIT|count_en_i RTL_ROM24 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name count_en_i -pinBusAttr A @name A[2:0] -pg 1 -lvl 5 -x 2120 -y 678
load inst CTRL_UNIT|count_en_i__0 RTL_ROM24 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name count_en_i__0 -pinBusAttr A @name A[2:0] -pg 1 -lvl 5 -x 2120 -y 588
load inst CTRL_UNIT|count_en_reg RTL_REG_SYNC__BREG_4 workC -hier CTRL_UNIT -attr @cell(#000000) RTL_REG_SYNC -attr @name count_en_reg -pg 1 -lvl 6 -x 2370 -y 668
load inst CTRL_UNIT|en_i RTL_ROM15 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name en_i -pinBusAttr A @name A[6:0] -pinBusAttr O @name O[4:0] -pg 1 -lvl 5 -x 2120 -y 898
load inst CTRL_UNIT|en_i__0 RTL_ROM16 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name en_i__0 -pinBusAttr A @name A[2:0] -pinBusAttr O @name O[4:0] -pg 1 -lvl 4 -x 1810 -y 798
load inst CTRL_UNIT|en_i__1 RTL_MUX17 work -hier CTRL_UNIT -attr @cell(#000000) RTL_MUX -attr @name en_i__1 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=3'b000 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[2:0] -pg 1 -lvl 5 -x 2120 -y 788
load inst CTRL_UNIT|en_i__2 RTL_ROM16 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name en_i__2 -pinBusAttr A @name A[2:0] -pinBusAttr O @name O[4:0] -pg 1 -lvl 5 -x 2120 -y 988
load inst CTRL_UNIT|load_i RTL_ROM21 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name load_i -pinBusAttr A @name A[6:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 5 -x 2120 -y 1228
load inst CTRL_UNIT|load_i__0 RTL_ROM22 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name load_i__0 -pinBusAttr A @name A[2:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 4 -x 1810 -y 1128
load inst CTRL_UNIT|load_i__1 RTL_MUX18 work -hier CTRL_UNIT -attr @cell(#000000) RTL_MUX -attr @name load_i__1 -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=3'b000 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pinBusAttr S @name S[2:0] -pg 1 -lvl 5 -x 2120 -y 1118
load inst CTRL_UNIT|load_i__2 RTL_ROM22 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name load_i__2 -pinBusAttr A @name A[2:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 5 -x 2120 -y 1318
load inst CTRL_UNIT|mem_write_en_reg RTL_REG__BREG_1 workC -hier CTRL_UNIT -attr @cell(#000000) RTL_REG -attr @name mem_write_en_reg -pg 1 -lvl 6 -x 2370 -y 1368
load inst CTRL_UNIT|opCode_i RTL_ROM26 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name opCode_i -pinBusAttr A @name A[6:0] -pinBusAttr O @name O[2:0] -pg 1 -lvl 5 -x 2120 -y 1538
load inst CTRL_UNIT|opCode_i__0 RTL_ROM27 work -hier CTRL_UNIT -attr @cell(#000000) RTL_ROM -attr @name opCode_i__0 -pinBusAttr A @name A[2:0] -pinBusAttr O @name O[2:0] -pg 1 -lvl 4 -x 1810 -y 1438
load inst CTRL_UNIT|opCode_i__1 RTL_MUX18 work -hier CTRL_UNIT -attr @cell(#000000) RTL_MUX -attr @name opCode_i__1 -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=3'b000 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pinBusAttr S @name S[2:0] -pg 1 -lvl 5 -x 2120 -y 1428
load inst CTRL_UNIT|load_reg[3:0] RTL_REG_SYNC__BREG_5 workC[3:0]swwww -hier CTRL_UNIT -attr @cell(#000000) RTL_REG_SYNC -attr @name load_reg[3:0] -pinBusAttr SET @attr n/c -pg 1 -lvl 6 -x 2370 -y 1218
load inst CTRL_UNIT|opCode_reg[3:0] RTL_REG_SYNC__BREG_9 workC[3:0]swww -hier CTRL_UNIT -attr @cell(#000000) RTL_REG_SYNC -attr @name opCode_reg[3:0] -pg 1 -lvl 6 -x 2370 -y 1488
load inst CTRL_UNIT|en_reg[7:0] RTL_REG_SYNC__BREG_6 workC[7:0]swwww -hier CTRL_UNIT -attr @cell(#000000) RTL_REG_SYNC -attr @name en_reg[7:0] -pinBusAttr SET @attr n/c -pg 1 -lvl 6 -x 2370 -y 888
load inst CTRL_UNIT|count2_reg[2:0] RTL_REG_SYNC__BREG_4 workC[2:0]swws -hier CTRL_UNIT -attr @cell(#000000) RTL_REG_SYNC -attr @name count2_reg[2:0] -pg 1 -lvl 3 -x 1610 -y 1188
load net <const0> -ground -pin bus_reg_i I7[7] -pin bus_reg_i I7[6] -pin bus_reg_i I7[5] -pin bus_reg_i I7[4] -pin bus_reg_i I7[3] -pin bus_reg_i I7[2] -pin bus_reg_i I7[1] -pin bus_reg_i I7[0] -pin out_DISP_i I1[7] -pin out_DISP_i I1[6] -pin out_DISP_i I1[5] -pin out_DISP_i I1[4] -pin out_DISP_i I1[3] -pin out_DISP_i I1[2] -pin out_DISP_i I1[1] -pin out_DISP_i I1[0]
load net <const1> -power -pin Mem_in_reg_i__0 I0 -pin addr_reg_i__1 I0 -pin write_en_i__0 I0
load net A_out[0] -attr @rip(#000000) out[0] -pin ALU0 A[0] -pin A_reg out[0] -pin bus_reg_i I0[0] -pin out_DISP_i I0[0]
load net A_out[1] -attr @rip(#000000) out[1] -pin ALU0 A[1] -pin A_reg out[1] -pin bus_reg_i I0[1] -pin out_DISP_i I0[1]
load net A_out[2] -attr @rip(#000000) out[2] -pin ALU0 A[2] -pin A_reg out[2] -pin bus_reg_i I0[2] -pin out_DISP_i I0[2]
load net A_out[3] -attr @rip(#000000) out[3] -pin ALU0 A[3] -pin A_reg out[3] -pin bus_reg_i I0[3] -pin out_DISP_i I0[3]
load net A_out[4] -attr @rip(#000000) out[4] -pin ALU0 A[4] -pin A_reg out[4] -pin bus_reg_i I0[4] -pin out_DISP_i I0[4]
load net A_out[5] -attr @rip(#000000) out[5] -pin ALU0 A[5] -pin A_reg out[5] -pin bus_reg_i I0[5] -pin out_DISP_i I0[5]
load net A_out[6] -attr @rip(#000000) out[6] -pin ALU0 A[6] -pin A_reg out[6] -pin bus_reg_i I0[6] -pin out_DISP_i I0[6]
load net A_out[7] -attr @rip(#000000) out[7] -pin ALU0 A[7] -pin A_reg out[7] -pin bus_reg_i I0[7] -pin out_DISP_i I0[7]
load net B_out[0] -attr @rip(#000000) out[0] -pin ALU0 B[0] -pin B_reg out[0] -pin bus_reg_i I1[0]
load net B_out[1] -attr @rip(#000000) out[1] -pin ALU0 B[1] -pin B_reg out[1] -pin bus_reg_i I1[1]
load net B_out[2] -attr @rip(#000000) out[2] -pin ALU0 B[2] -pin B_reg out[2] -pin bus_reg_i I1[2]
load net B_out[3] -attr @rip(#000000) out[3] -pin ALU0 B[3] -pin B_reg out[3] -pin bus_reg_i I1[3]
load net B_out[4] -attr @rip(#000000) out[4] -pin ALU0 B[4] -pin B_reg out[4] -pin bus_reg_i I1[4]
load net B_out[5] -attr @rip(#000000) out[5] -pin ALU0 B[5] -pin B_reg out[5] -pin bus_reg_i I1[5]
load net B_out[6] -attr @rip(#000000) out[6] -pin ALU0 B[6] -pin B_reg out[6] -pin bus_reg_i I1[6]
load net B_out[7] -attr @rip(#000000) out[7] -pin ALU0 B[7] -pin B_reg out[7] -pin bus_reg_i I1[7]
load net Instr_out[0] -attr @rip(#000000) out[0] -pin INSTR_REG out[0] -pin bus_reg_i I2[0]
load net Instr_out[1] -attr @rip(#000000) out[1] -pin INSTR_REG out[1] -pin bus_reg_i I2[1]
load net Instr_out[2] -attr @rip(#000000) out[2] -pin INSTR_REG out[2] -pin bus_reg_i I2[2]
load net Instr_out[3] -attr @rip(#000000) out[3] -pin INSTR_REG out[3] -pin bus_reg_i I2[3]
load net Instr_out[4] -attr @rip(#000000) out[4] -pin INSTR_REG out[4] -pin bus_reg_i I2[4]
load net Instr_out[5] -attr @rip(#000000) out[5] -pin INSTR_REG out[5] -pin bus_reg_i I2[5]
load net Instr_out[6] -attr @rip(#000000) out[6] -pin INSTR_REG out[6] -pin bus_reg_i I2[6]
load net Instr_out[7] -attr @rip(#000000) out[7] -pin INSTR_REG out[7] -pin bus_reg_i I2[7]
load net Mem_in_reg[0] -attr @rip(#000000) 0 -pin Mem_in_reg_reg[7:0] Q[0] -pin RAM0 mem_in[0]
load net Mem_in_reg[1] -attr @rip(#000000) 1 -pin Mem_in_reg_reg[7:0] Q[1] -pin RAM0 mem_in[1]
load net Mem_in_reg[2] -attr @rip(#000000) 2 -pin Mem_in_reg_reg[7:0] Q[2] -pin RAM0 mem_in[2]
load net Mem_in_reg[3] -attr @rip(#000000) 3 -pin Mem_in_reg_reg[7:0] Q[3] -pin RAM0 mem_in[3]
load net Mem_in_reg[4] -attr @rip(#000000) 4 -pin Mem_in_reg_reg[7:0] Q[4] -pin RAM0 mem_in[4]
load net Mem_in_reg[5] -attr @rip(#000000) 5 -pin Mem_in_reg_reg[7:0] Q[5] -pin RAM0 mem_in[5]
load net Mem_in_reg[6] -attr @rip(#000000) 6 -pin Mem_in_reg_reg[7:0] Q[6] -pin RAM0 mem_in[6]
load net Mem_in_reg[7] -attr @rip(#000000) 7 -pin Mem_in_reg_reg[7:0] Q[7] -pin RAM0 mem_in[7]
load net Mem_in_reg_i__0_n_0 -pin Mem_in_reg_i__0 O -pin Mem_in_reg_reg[7:0] CE
netloc Mem_in_reg_i__0_n_0 1 4 1 3520 808n
load net Mem_in_reg_i_n_0 -attr @rip(#000000) O[7] -pin Mem_in_reg_i O[7] -pin Mem_in_reg_reg[7:0] D[7]
load net Mem_in_reg_i_n_1 -attr @rip(#000000) O[6] -pin Mem_in_reg_i O[6] -pin Mem_in_reg_reg[7:0] D[6]
load net Mem_in_reg_i_n_2 -attr @rip(#000000) O[5] -pin Mem_in_reg_i O[5] -pin Mem_in_reg_reg[7:0] D[5]
load net Mem_in_reg_i_n_3 -attr @rip(#000000) O[4] -pin Mem_in_reg_i O[4] -pin Mem_in_reg_reg[7:0] D[4]
load net Mem_in_reg_i_n_4 -attr @rip(#000000) O[3] -pin Mem_in_reg_i O[3] -pin Mem_in_reg_reg[7:0] D[3]
load net Mem_in_reg_i_n_5 -attr @rip(#000000) O[2] -pin Mem_in_reg_i O[2] -pin Mem_in_reg_reg[7:0] D[2]
load net Mem_in_reg_i_n_6 -attr @rip(#000000) O[1] -pin Mem_in_reg_i O[1] -pin Mem_in_reg_reg[7:0] D[1]
load net Mem_in_reg_i_n_7 -attr @rip(#000000) O[0] -pin Mem_in_reg_i O[0] -pin Mem_in_reg_reg[7:0] D[0]
load net Mem_out[0] -attr @rip(#000000) mem_out[0] -pin RAM0 mem_out[0] -pin bus_reg_i I5[0] -pin mem_read_data_reg[7:0] D[0]
load net Mem_out[1] -attr @rip(#000000) mem_out[1] -pin RAM0 mem_out[1] -pin bus_reg_i I5[1] -pin mem_read_data_reg[7:0] D[1]
load net Mem_out[2] -attr @rip(#000000) mem_out[2] -pin RAM0 mem_out[2] -pin bus_reg_i I5[2] -pin mem_read_data_reg[7:0] D[2]
load net Mem_out[3] -attr @rip(#000000) mem_out[3] -pin RAM0 mem_out[3] -pin bus_reg_i I5[3] -pin mem_read_data_reg[7:0] D[3]
load net Mem_out[4] -attr @rip(#000000) mem_out[4] -pin RAM0 mem_out[4] -pin bus_reg_i I5[4] -pin mem_read_data_reg[7:0] D[4]
load net Mem_out[5] -attr @rip(#000000) mem_out[5] -pin RAM0 mem_out[5] -pin bus_reg_i I5[5] -pin mem_read_data_reg[7:0] D[5]
load net Mem_out[6] -attr @rip(#000000) mem_out[6] -pin RAM0 mem_out[6] -pin bus_reg_i I5[6] -pin mem_read_data_reg[7:0] D[6]
load net Mem_out[7] -attr @rip(#000000) mem_out[7] -pin RAM0 mem_out[7] -pin bus_reg_i I5[7] -pin mem_read_data_reg[7:0] D[7]
load net addr_en -pin CTRL_UNIT addr_en -pin addr_reg_i S -pin addr_reg_i__1 S
netloc addr_en 1 2 1 2760 468n
load net addr_reg[0] -attr @rip(#000000) 0 -pin RAM0 addr[0] -pin addr_reg_reg[3:0] Q[0] -pin bus_reg_i I6[0]
load net addr_reg[1] -attr @rip(#000000) 1 -pin RAM0 addr[1] -pin addr_reg_reg[3:0] Q[1] -pin bus_reg_i I6[1]
load net addr_reg[2] -attr @rip(#000000) 2 -pin RAM0 addr[2] -pin addr_reg_reg[3:0] Q[2] -pin bus_reg_i I6[2]
load net addr_reg[3] -attr @rip(#000000) 3 -pin RAM0 addr[3] -pin addr_reg_reg[3:0] Q[3] -pin bus_reg_i I6[3]
load net addr_reg_i__0_n_0 -attr @rip(#000000) O[3] -pin addr_reg_i__0 O[3] -pin addr_reg_reg[3:0] D[3]
load net addr_reg_i__0_n_1 -attr @rip(#000000) O[2] -pin addr_reg_i__0 O[2] -pin addr_reg_reg[3:0] D[2]
load net addr_reg_i__0_n_2 -attr @rip(#000000) O[1] -pin addr_reg_i__0 O[1] -pin addr_reg_reg[3:0] D[1]
load net addr_reg_i__0_n_3 -attr @rip(#000000) O[0] -pin addr_reg_i__0 O[0] -pin addr_reg_reg[3:0] D[0]
load net addr_reg_i__1_n_0 -pin addr_reg_i__1 O -pin addr_reg_i__2 I0
netloc addr_reg_i__1_n_0 1 3 1 3180 590n
load net addr_reg_i__2_n_0 -pin addr_reg_i__2 O -pin addr_reg_reg[3:0] CE
netloc addr_reg_i__2_n_0 1 4 1 3440 600n
load net addr_reg_i_n_0 -attr @rip(#000000) O[3] -pin addr_reg_i O[3] -pin addr_reg_i__0 I0[3]
load net addr_reg_i_n_1 -attr @rip(#000000) O[2] -pin addr_reg_i O[2] -pin addr_reg_i__0 I0[2]
load net addr_reg_i_n_2 -attr @rip(#000000) O[1] -pin addr_reg_i O[1] -pin addr_reg_i__0 I0[1]
load net addr_reg_i_n_3 -attr @rip(#000000) O[0] -pin addr_reg_i O[0] -pin addr_reg_i__0 I0[0]
load net addr_write_prog[0] -attr @rip(#000000) addr_write_prog[0] -pin addr_reg_i I1[0] -pin addr_reg_i__0 I1[0] -port addr_write_prog[0]
load net addr_write_prog[1] -attr @rip(#000000) addr_write_prog[1] -pin addr_reg_i I1[1] -pin addr_reg_i__0 I1[1] -port addr_write_prog[1]
load net addr_write_prog[2] -attr @rip(#000000) addr_write_prog[2] -pin addr_reg_i I1[2] -pin addr_reg_i__0 I1[2] -port addr_write_prog[2]
load net addr_write_prog[3] -attr @rip(#000000) addr_write_prog[3] -pin addr_reg_i I1[3] -pin addr_reg_i__0 I1[3] -port addr_write_prog[3]
load net bus_reg[0] -attr @rip(#000000) Q[0] -pin A_reg data_in[0] -pin B_reg data_in[0] -pin INSTR_REG data_in[0] -pin Mem_in_reg_i I0[0] -pin P_Counter count_in[0] -pin addr_reg_i I0[0] -port bus_reg[0] -pin bus_reg_reg Q[0]
load net bus_reg[1] -attr @rip(#000000) Q[1] -pin A_reg data_in[1] -pin B_reg data_in[1] -pin INSTR_REG data_in[1] -pin Mem_in_reg_i I0[1] -pin P_Counter count_in[1] -pin addr_reg_i I0[1] -port bus_reg[1] -pin bus_reg_reg Q[1]
load net bus_reg[2] -attr @rip(#000000) Q[2] -pin A_reg data_in[2] -pin B_reg data_in[2] -pin INSTR_REG data_in[2] -pin Mem_in_reg_i I0[2] -pin P_Counter count_in[2] -pin addr_reg_i I0[2] -port bus_reg[2] -pin bus_reg_reg Q[2]
load net bus_reg[3] -attr @rip(#000000) Q[3] -pin A_reg data_in[3] -pin B_reg data_in[3] -pin INSTR_REG data_in[3] -pin Mem_in_reg_i I0[3] -pin P_Counter count_in[3] -pin addr_reg_i I0[3] -port bus_reg[3] -pin bus_reg_reg Q[3]
load net bus_reg[4] -attr @rip(#000000) Q[4] -pin A_reg data_in[4] -pin B_reg data_in[4] -pin INSTR_REG data_in[4] -pin Mem_in_reg_i I0[4] -port bus_reg[4] -pin bus_reg_reg Q[4]
load net bus_reg[5] -attr @rip(#000000) Q[5] -pin A_reg data_in[5] -pin B_reg data_in[5] -pin INSTR_REG data_in[5] -pin Mem_in_reg_i I0[5] -port bus_reg[5] -pin bus_reg_reg Q[5]
load net bus_reg[6] -attr @rip(#000000) Q[6] -pin A_reg data_in[6] -pin B_reg data_in[6] -pin INSTR_REG data_in[6] -pin Mem_in_reg_i I0[6] -port bus_reg[6] -pin bus_reg_reg Q[6]
load net bus_reg[7] -attr @rip(#000000) Q[7] -pin A_reg data_in[7] -pin B_reg data_in[7] -pin INSTR_REG data_in[7] -pin Mem_in_reg_i I0[7] -port bus_reg[7] -pin bus_reg_reg Q[7]
load net bus_reg_i__0_n_0 -pin bus_reg_i__0 O -pin bus_reg_reg G
netloc bus_reg_i__0_n_0 1 7 1 6420J 330n
load net bus_reg_i_n_0 -attr @rip(#000000) O[7] -pin bus_reg_i O[7] -pin bus_reg_reg D[7]
load net bus_reg_i_n_1 -attr @rip(#000000) O[6] -pin bus_reg_i O[6] -pin bus_reg_reg D[6]
load net bus_reg_i_n_2 -attr @rip(#000000) O[5] -pin bus_reg_i O[5] -pin bus_reg_reg D[5]
load net bus_reg_i_n_3 -attr @rip(#000000) O[4] -pin bus_reg_i O[4] -pin bus_reg_reg D[4]
load net bus_reg_i_n_4 -attr @rip(#000000) O[3] -pin bus_reg_i O[3] -pin bus_reg_reg D[3]
load net bus_reg_i_n_5 -attr @rip(#000000) O[2] -pin bus_reg_i O[2] -pin bus_reg_reg D[2]
load net bus_reg_i_n_6 -attr @rip(#000000) O[1] -pin bus_reg_i O[1] -pin bus_reg_reg D[1]
load net bus_reg_i_n_7 -attr @rip(#000000) O[0] -pin bus_reg_i O[0] -pin bus_reg_reg D[0]
load net clk -pin ALU0 clk -pin A_reg clk -pin B_reg clk -pin CTRL_UNIT clk -pin INSTR_REG clk -pin Mem_in_reg_reg[7:0] C -pin P_Counter clk -pin RAM0 clk -pin addr_reg_reg[3:0] C -port clk -pin mem_read_data_reg[7:0] C -pin write_en_reg C
netloc clk 1 0 8 20 722 930 1618 2740J 440 3120J 420 3480 698 4060 2926 6150J 640 NJ
load net count[0] -attr @rip(#000000) count_out[0] -pin CTRL_UNIT count[0] -pin P_Counter count_out[0] -pin bus_reg_i I4[0]
load net count[1] -attr @rip(#000000) count_out[1] -pin CTRL_UNIT count[1] -pin P_Counter count_out[1] -pin bus_reg_i I4[1]
load net count[2] -attr @rip(#000000) count_out[2] -pin CTRL_UNIT count[2] -pin P_Counter count_out[2] -pin bus_reg_i I4[2]
load net count[3] -attr @rip(#000000) count_out[3] -pin CTRL_UNIT count[3] -pin P_Counter count_out[3] -pin bus_reg_i I4[3]
load net count[4] -attr @rip(#000000) count_out[4] -pin CTRL_UNIT count[4] -pin P_Counter count_out[4] -pin bus_reg_i I4[4]
load net count[5] -attr @rip(#000000) count_out[5] -pin CTRL_UNIT count[5] -pin P_Counter count_out[5] -pin bus_reg_i I4[5]
load net count[6] -attr @rip(#000000) count_out[6] -pin CTRL_UNIT count[6] -pin P_Counter count_out[6] -pin bus_reg_i I4[6]
load net count[7] -attr @rip(#000000) count_out[7] -pin CTRL_UNIT count[7] -pin P_Counter count_out[7] -pin bus_reg_i I4[7]
load net count_en -pin CTRL_UNIT count_en -pin P_Counter en
netloc count_en 1 0 3 80 702 930J 238 2660
load net en[0] -attr @rip(#000000) en[0] -pin CTRL_UNIT en[0] -pin bus_reg_i S[0] -pin bus_reg_i__0 A[0] -pin out_DISP_i S[0] -pin out_DISP_i__0 A[0]
load net en[1] -attr @rip(#000000) en[1] -pin CTRL_UNIT en[1] -pin bus_reg_i S[1] -pin bus_reg_i__0 A[1] -pin out_DISP_i S[1] -pin out_DISP_i__0 A[1]
load net en[2] -attr @rip(#000000) en[2] -pin CTRL_UNIT en[2] -pin bus_reg_i S[2] -pin bus_reg_i__0 A[2] -pin out_DISP_i S[2] -pin out_DISP_i__0 A[2]
load net en[3] -attr @rip(#000000) en[3] -pin CTRL_UNIT en[3] -pin bus_reg_i S[3] -pin bus_reg_i__0 A[3] -pin out_DISP_i S[3] -pin out_DISP_i__0 A[3]
load net en[4] -attr @rip(#000000) en[4] -pin CTRL_UNIT en[4] -pin bus_reg_i S[4] -pin bus_reg_i__0 A[4] -pin out_DISP_i S[4] -pin out_DISP_i__0 A[4]
load net en[5] -attr @rip(#000000) en[5] -pin CTRL_UNIT en[5] -pin bus_reg_i S[5] -pin bus_reg_i__0 A[5] -pin out_DISP_i S[5] -pin out_DISP_i__0 A[5]
load net en[6] -attr @rip(#000000) en[6] -pin CTRL_UNIT en[6] -pin bus_reg_i S[6] -pin bus_reg_i__0 A[6] -pin out_DISP_i S[6] -pin out_DISP_i__0 A[6]
load net en[7] -attr @rip(#000000) en[7] -pin CTRL_UNIT en[7] -pin bus_reg_i S[7] -pin bus_reg_i__0 A[7] -pin out_DISP_i S[7] -pin out_DISP_i__0 A[7]
load net instr[0] -attr @rip(#000000) instr[0] -pin CTRL_UNIT instr[0] -pin INSTR_REG instr[0]
load net instr[1] -attr @rip(#000000) instr[1] -pin CTRL_UNIT instr[1] -pin INSTR_REG instr[1]
load net instr[2] -attr @rip(#000000) instr[2] -pin CTRL_UNIT instr[2] -pin INSTR_REG instr[2]
load net instr[3] -attr @rip(#000000) instr[3] -pin CTRL_UNIT instr[3] -pin INSTR_REG instr[3]
load net load[0] -attr @rip(#000000) load[0] -pin A_reg load -pin CTRL_UNIT load[0]
load net load[1] -attr @rip(#000000) load[1] -pin B_reg load -pin CTRL_UNIT load[1]
load net load[2] -attr @rip(#000000) load[2] -pin CTRL_UNIT load[2] -pin INSTR_REG load
load net load[3] -attr @rip(#000000) load[3] -pin CTRL_UNIT load[3] -pin P_Counter jump
load net mem_read_data[0] -attr @rip(#000000) 0 -port mem_read_data[0] -pin mem_read_data_reg[7:0] Q[0]
load net mem_read_data[1] -attr @rip(#000000) 1 -port mem_read_data[1] -pin mem_read_data_reg[7:0] Q[1]
load net mem_read_data[2] -attr @rip(#000000) 2 -port mem_read_data[2] -pin mem_read_data_reg[7:0] Q[2]
load net mem_read_data[3] -attr @rip(#000000) 3 -port mem_read_data[3] -pin mem_read_data_reg[7:0] Q[3]
load net mem_read_data[4] -attr @rip(#000000) 4 -port mem_read_data[4] -pin mem_read_data_reg[7:0] Q[4]
load net mem_read_data[5] -attr @rip(#000000) 5 -port mem_read_data[5] -pin mem_read_data_reg[7:0] Q[5]
load net mem_read_data[6] -attr @rip(#000000) 6 -port mem_read_data[6] -pin mem_read_data_reg[7:0] Q[6]
load net mem_read_data[7] -attr @rip(#000000) 7 -port mem_read_data[7] -pin mem_read_data_reg[7:0] Q[7]
load net mem_write_data_prog[0] -attr @rip(#000000) mem_write_data_prog[0] -pin Mem_in_reg_i I1[0] -port mem_write_data_prog[0]
load net mem_write_data_prog[1] -attr @rip(#000000) mem_write_data_prog[1] -pin Mem_in_reg_i I1[1] -port mem_write_data_prog[1]
load net mem_write_data_prog[2] -attr @rip(#000000) mem_write_data_prog[2] -pin Mem_in_reg_i I1[2] -port mem_write_data_prog[2]
load net mem_write_data_prog[3] -attr @rip(#000000) mem_write_data_prog[3] -pin Mem_in_reg_i I1[3] -port mem_write_data_prog[3]
load net mem_write_data_prog[4] -attr @rip(#000000) mem_write_data_prog[4] -pin Mem_in_reg_i I1[4] -port mem_write_data_prog[4]
load net mem_write_data_prog[5] -attr @rip(#000000) mem_write_data_prog[5] -pin Mem_in_reg_i I1[5] -port mem_write_data_prog[5]
load net mem_write_data_prog[6] -attr @rip(#000000) mem_write_data_prog[6] -pin Mem_in_reg_i I1[6] -port mem_write_data_prog[6]
load net mem_write_data_prog[7] -attr @rip(#000000) mem_write_data_prog[7] -pin Mem_in_reg_i I1[7] -port mem_write_data_prog[7]
load net mem_write_en -pin CTRL_UNIT mem_write_en -pin write_en_i I0
netloc mem_write_en 1 2 2 2820 1090 NJ
load net opCode[0] -attr @rip(#000000) opCode[0] -pin ALU0 opCode[0] -pin CTRL_UNIT opCode[0]
load net opCode[1] -attr @rip(#000000) opCode[1] -pin ALU0 opCode[1] -pin CTRL_UNIT opCode[1]
load net opCode[2] -attr @rip(#000000) opCode[2] -pin ALU0 opCode[2] -pin CTRL_UNIT opCode[2]
load net opCode[3] -attr @rip(#000000) opCode[3] -pin ALU0 opCode[3] -pin CTRL_UNIT opCode[3]
load net out_DISP[0] -attr @rip(#000000) Q[0] -port out_DISP[0] -pin out_DISP_reg Q[0]
load net out_DISP[1] -attr @rip(#000000) Q[1] -port out_DISP[1] -pin out_DISP_reg Q[1]
load net out_DISP[2] -attr @rip(#000000) Q[2] -port out_DISP[2] -pin out_DISP_reg Q[2]
load net out_DISP[3] -attr @rip(#000000) Q[3] -port out_DISP[3] -pin out_DISP_reg Q[3]
load net out_DISP[4] -attr @rip(#000000) Q[4] -port out_DISP[4] -pin out_DISP_reg Q[4]
load net out_DISP[5] -attr @rip(#000000) Q[5] -port out_DISP[5] -pin out_DISP_reg Q[5]
load net out_DISP[6] -attr @rip(#000000) Q[6] -port out_DISP[6] -pin out_DISP_reg Q[6]
load net out_DISP[7] -attr @rip(#000000) Q[7] -port out_DISP[7] -pin out_DISP_reg Q[7]
load net out_DISP_i__0_n_0 -pin out_DISP_i__0 O -pin out_DISP_reg G
netloc out_DISP_i__0_n_0 1 7 1 NJ 450
load net out_DISP_i_n_0 -attr @rip(#000000) O[7] -pin out_DISP_i O[7] -pin out_DISP_reg D[7]
load net out_DISP_i_n_1 -attr @rip(#000000) O[6] -pin out_DISP_i O[6] -pin out_DISP_reg D[6]
load net out_DISP_i_n_2 -attr @rip(#000000) O[5] -pin out_DISP_i O[5] -pin out_DISP_reg D[5]
load net out_DISP_i_n_3 -attr @rip(#000000) O[4] -pin out_DISP_i O[4] -pin out_DISP_reg D[4]
load net out_DISP_i_n_4 -attr @rip(#000000) O[3] -pin out_DISP_i O[3] -pin out_DISP_reg D[3]
load net out_DISP_i_n_5 -attr @rip(#000000) O[2] -pin out_DISP_i O[2] -pin out_DISP_reg D[2]
load net out_DISP_i_n_6 -attr @rip(#000000) O[1] -pin out_DISP_i O[1] -pin out_DISP_reg D[1]
load net out_DISP_i_n_7 -attr @rip(#000000) O[0] -pin out_DISP_i O[0] -pin out_DISP_reg D[0]
load net result_ALU[0] -attr @rip(#000000) result[0] -pin ALU0 result[0] -pin bus_reg_i I3[0]
load net result_ALU[1] -attr @rip(#000000) result[1] -pin ALU0 result[1] -pin bus_reg_i I3[1]
load net result_ALU[2] -attr @rip(#000000) result[2] -pin ALU0 result[2] -pin bus_reg_i I3[2]
load net result_ALU[3] -attr @rip(#000000) result[3] -pin ALU0 result[3] -pin bus_reg_i I3[3]
load net result_ALU[4] -attr @rip(#000000) result[4] -pin ALU0 result[4] -pin bus_reg_i I3[4]
load net result_ALU[5] -attr @rip(#000000) result[5] -pin ALU0 result[5] -pin bus_reg_i I3[5]
load net result_ALU[6] -attr @rip(#000000) result[6] -pin ALU0 result[6] -pin bus_reg_i I3[6]
load net result_ALU[7] -attr @rip(#000000) result[7] -pin ALU0 result[7] -pin bus_reg_i I3[7]
load net write_en -pin RAM0 write -pin write_en_reg Q
netloc write_en 1 5 1 3960 1088n
load net write_en_i__0_n_0 -pin write_en_i__0 O -pin write_en_reg CE
netloc write_en_i__0_n_0 1 4 1 3460 980n
load net write_en_i_n_0 -pin write_en_i O -pin write_en_reg D
netloc write_en_i_n_0 1 4 1 3440 1100n
load net write_prog -pin Mem_in_reg_i S -pin Mem_in_reg_i__0 I1 -pin Mem_in_reg_i__0 S -pin addr_reg_i__0 S -pin addr_reg_i__1 I1 -pin addr_reg_i__2 I1 -pin addr_reg_i__2 S -pin write_en_i I1 -pin write_en_i S -pin write_en_i__0 I1 -pin write_en_i__0 S -port write_prog
netloc write_prog 1 0 4 -40J 1162 850J 1938 2840 710 3140
load net ALU0|<const0> -ground -attr @rip(#000000) 0 -attr @name <const0> -pin ALU0|result0_i__3 I1[0]
load net ALU0|A[0] -attr @rip(#000000) A[0] -attr @name A[0] -hierPin ALU0 A[0] -pin ALU0|result0_i I0[0] -pin ALU0|result0_i__0 I0[0] -pin ALU0|result0_i__1 I0[0] -pin ALU0|result0_i__2 I0[0] -pin ALU0|result0_i__3 I0[0] -pin ALU0|result_i I5[0]
load net ALU0|A[1] -attr @rip(#000000) A[1] -attr @name A[1] -hierPin ALU0 A[1] -pin ALU0|result0_i I0[1] -pin ALU0|result0_i__0 I0[1] -pin ALU0|result0_i__1 I0[1] -pin ALU0|result0_i__2 I0[1] -pin ALU0|result0_i__3 I0[1] -pin ALU0|result_i I5[1]
load net ALU0|A[2] -attr @rip(#000000) A[2] -attr @name A[2] -hierPin ALU0 A[2] -pin ALU0|result0_i I0[2] -pin ALU0|result0_i__0 I0[2] -pin ALU0|result0_i__1 I0[2] -pin ALU0|result0_i__2 I0[2] -pin ALU0|result0_i__3 I0[2] -pin ALU0|result_i I5[2]
load net ALU0|A[3] -attr @rip(#000000) A[3] -attr @name A[3] -hierPin ALU0 A[3] -pin ALU0|result0_i I0[3] -pin ALU0|result0_i__0 I0[3] -pin ALU0|result0_i__1 I0[3] -pin ALU0|result0_i__2 I0[3] -pin ALU0|result0_i__3 I0[3] -pin ALU0|result_i I5[3]
load net ALU0|A[4] -attr @rip(#000000) A[4] -attr @name A[4] -hierPin ALU0 A[4] -pin ALU0|result0_i I0[4] -pin ALU0|result0_i__0 I0[4] -pin ALU0|result0_i__1 I0[4] -pin ALU0|result0_i__2 I0[4] -pin ALU0|result0_i__3 I0[4] -pin ALU0|result_i I5[4]
load net ALU0|A[5] -attr @rip(#000000) A[5] -attr @name A[5] -hierPin ALU0 A[5] -pin ALU0|result0_i I0[5] -pin ALU0|result0_i__0 I0[5] -pin ALU0|result0_i__1 I0[5] -pin ALU0|result0_i__2 I0[5] -pin ALU0|result0_i__3 I0[5] -pin ALU0|result_i I5[5]
load net ALU0|A[6] -attr @rip(#000000) A[6] -attr @name A[6] -hierPin ALU0 A[6] -pin ALU0|result0_i I0[6] -pin ALU0|result0_i__0 I0[6] -pin ALU0|result0_i__1 I0[6] -pin ALU0|result0_i__2 I0[6] -pin ALU0|result0_i__3 I0[6] -pin ALU0|result_i I5[6]
load net ALU0|A[7] -attr @rip(#000000) A[7] -attr @name A[7] -hierPin ALU0 A[7] -pin ALU0|result0_i I0[7] -pin ALU0|result0_i__0 I0[7] -pin ALU0|result0_i__1 I0[7] -pin ALU0|result0_i__2 I0[7] -pin ALU0|result0_i__3 I0[7] -pin ALU0|result_i I5[7]
load net ALU0|B[0] -attr @rip(#000000) B[0] -attr @name B[0] -hierPin ALU0 B[0] -pin ALU0|result0_i I1[0] -pin ALU0|result0_i__0 I1[0] -pin ALU0|result0_i__1 I1[0] -pin ALU0|result0_i__2 I1[0]
load net ALU0|B[1] -attr @rip(#000000) B[1] -attr @name B[1] -hierPin ALU0 B[1] -pin ALU0|result0_i I1[1] -pin ALU0|result0_i__0 I1[1] -pin ALU0|result0_i__1 I1[1] -pin ALU0|result0_i__2 I1[1]
load net ALU0|B[2] -attr @rip(#000000) B[2] -attr @name B[2] -hierPin ALU0 B[2] -pin ALU0|result0_i I1[2] -pin ALU0|result0_i__0 I1[2] -pin ALU0|result0_i__1 I1[2] -pin ALU0|result0_i__2 I1[2]
load net ALU0|B[3] -attr @rip(#000000) B[3] -attr @name B[3] -hierPin ALU0 B[3] -pin ALU0|result0_i I1[3] -pin ALU0|result0_i__0 I1[3] -pin ALU0|result0_i__1 I1[3] -pin ALU0|result0_i__2 I1[3]
load net ALU0|B[4] -attr @rip(#000000) B[4] -attr @name B[4] -hierPin ALU0 B[4] -pin ALU0|result0_i I1[4] -pin ALU0|result0_i__0 I1[4] -pin ALU0|result0_i__1 I1[4] -pin ALU0|result0_i__2 I1[4]
load net ALU0|B[5] -attr @rip(#000000) B[5] -attr @name B[5] -hierPin ALU0 B[5] -pin ALU0|result0_i I1[5] -pin ALU0|result0_i__0 I1[5] -pin ALU0|result0_i__1 I1[5] -pin ALU0|result0_i__2 I1[5]
load net ALU0|B[6] -attr @rip(#000000) B[6] -attr @name B[6] -hierPin ALU0 B[6] -pin ALU0|result0_i I1[6] -pin ALU0|result0_i__0 I1[6] -pin ALU0|result0_i__1 I1[6] -pin ALU0|result0_i__2 I1[6]
load net ALU0|B[7] -attr @rip(#000000) B[7] -attr @name B[7] -hierPin ALU0 B[7] -pin ALU0|result0_i I1[7] -pin ALU0|result0_i__0 I1[7] -pin ALU0|result0_i__1 I1[7] -pin ALU0|result0_i__2 I1[7]
load net ALU0|clk -attr @name clk -hierPin ALU0 clk -pin ALU0|result_reg[7:0] C
netloc ALU0|clk 1 0 3 NJ 368 NJ 368 N
load net ALU0|opCode[0] -attr @rip(#000000) opCode[0] -attr @name opCode[0] -hierPin ALU0 opCode[0] -pin ALU0|result_i S[0]
load net ALU0|opCode[1] -attr @rip(#000000) opCode[1] -attr @name opCode[1] -hierPin ALU0 opCode[1] -pin ALU0|result_i S[1]
load net ALU0|opCode[2] -attr @rip(#000000) opCode[2] -attr @name opCode[2] -hierPin ALU0 opCode[2] -pin ALU0|result_i S[2]
load net ALU0|opCode[3] -attr @rip(#000000) opCode[3] -attr @name opCode[3] -hierPin ALU0 opCode[3] -pin ALU0|result_i S[3]
load net ALU0|result0 -attr @name result0 -pin ALU0|result0_i__3 O -pin ALU0|result_i I4
netloc ALU0|result0 1 1 1 4470 438n
load net ALU0|result0_i__0_n_0 -attr @rip(#000000) O[7] -attr @name result0_i__0_n_0 -pin ALU0|result0_i__0 O[7] -pin ALU0|result_i I1[7]
load net ALU0|result0_i__0_n_1 -attr @rip(#000000) O[6] -attr @name result0_i__0_n_1 -pin ALU0|result0_i__0 O[6] -pin ALU0|result_i I1[6]
load net ALU0|result0_i__0_n_2 -attr @rip(#000000) O[5] -attr @name result0_i__0_n_2 -pin ALU0|result0_i__0 O[5] -pin ALU0|result_i I1[5]
load net ALU0|result0_i__0_n_3 -attr @rip(#000000) O[4] -attr @name result0_i__0_n_3 -pin ALU0|result0_i__0 O[4] -pin ALU0|result_i I1[4]
load net ALU0|result0_i__0_n_4 -attr @rip(#000000) O[3] -attr @name result0_i__0_n_4 -pin ALU0|result0_i__0 O[3] -pin ALU0|result_i I1[3]
load net ALU0|result0_i__0_n_5 -attr @rip(#000000) O[2] -attr @name result0_i__0_n_5 -pin ALU0|result0_i__0 O[2] -pin ALU0|result_i I1[2]
load net ALU0|result0_i__0_n_6 -attr @rip(#000000) O[1] -attr @name result0_i__0_n_6 -pin ALU0|result0_i__0 O[1] -pin ALU0|result_i I1[1]
load net ALU0|result0_i__0_n_7 -attr @rip(#000000) O[0] -attr @name result0_i__0_n_7 -pin ALU0|result0_i__0 O[0] -pin ALU0|result_i I1[0]
load net ALU0|result0_i__1_n_0 -attr @rip(#000000) O[7] -attr @name result0_i__1_n_0 -pin ALU0|result0_i__1 O[7] -pin ALU0|result_i I2[7]
load net ALU0|result0_i__1_n_1 -attr @rip(#000000) O[6] -attr @name result0_i__1_n_1 -pin ALU0|result0_i__1 O[6] -pin ALU0|result_i I2[6]
load net ALU0|result0_i__1_n_2 -attr @rip(#000000) O[5] -attr @name result0_i__1_n_2 -pin ALU0|result0_i__1 O[5] -pin ALU0|result_i I2[5]
load net ALU0|result0_i__1_n_3 -attr @rip(#000000) O[4] -attr @name result0_i__1_n_3 -pin ALU0|result0_i__1 O[4] -pin ALU0|result_i I2[4]
load net ALU0|result0_i__1_n_4 -attr @rip(#000000) O[3] -attr @name result0_i__1_n_4 -pin ALU0|result0_i__1 O[3] -pin ALU0|result_i I2[3]
load net ALU0|result0_i__1_n_5 -attr @rip(#000000) O[2] -attr @name result0_i__1_n_5 -pin ALU0|result0_i__1 O[2] -pin ALU0|result_i I2[2]
load net ALU0|result0_i__1_n_6 -attr @rip(#000000) O[1] -attr @name result0_i__1_n_6 -pin ALU0|result0_i__1 O[1] -pin ALU0|result_i I2[1]
load net ALU0|result0_i__1_n_7 -attr @rip(#000000) O[0] -attr @name result0_i__1_n_7 -pin ALU0|result0_i__1 O[0] -pin ALU0|result_i I2[0]
load net ALU0|result0_i__2_n_0 -attr @rip(#000000) O[7] -attr @name result0_i__2_n_0 -pin ALU0|result0_i__2 O[7] -pin ALU0|result_i I3[7]
load net ALU0|result0_i__2_n_1 -attr @rip(#000000) O[6] -attr @name result0_i__2_n_1 -pin ALU0|result0_i__2 O[6] -pin ALU0|result_i I3[6]
load net ALU0|result0_i__2_n_2 -attr @rip(#000000) O[5] -attr @name result0_i__2_n_2 -pin ALU0|result0_i__2 O[5] -pin ALU0|result_i I3[5]
load net ALU0|result0_i__2_n_3 -attr @rip(#000000) O[4] -attr @name result0_i__2_n_3 -pin ALU0|result0_i__2 O[4] -pin ALU0|result_i I3[4]
load net ALU0|result0_i__2_n_4 -attr @rip(#000000) O[3] -attr @name result0_i__2_n_4 -pin ALU0|result0_i__2 O[3] -pin ALU0|result_i I3[3]
load net ALU0|result0_i__2_n_5 -attr @rip(#000000) O[2] -attr @name result0_i__2_n_5 -pin ALU0|result0_i__2 O[2] -pin ALU0|result_i I3[2]
load net ALU0|result0_i__2_n_6 -attr @rip(#000000) O[1] -attr @name result0_i__2_n_6 -pin ALU0|result0_i__2 O[1] -pin ALU0|result_i I3[1]
load net ALU0|result0_i__2_n_7 -attr @rip(#000000) O[0] -attr @name result0_i__2_n_7 -pin ALU0|result0_i__2 O[0] -pin ALU0|result_i I3[0]
load net ALU0|result0_i_n_0 -attr @rip(#000000) O[7] -attr @name result0_i_n_0 -pin ALU0|result0_i O[7] -pin ALU0|result_i I0[7]
load net ALU0|result0_i_n_1 -attr @rip(#000000) O[6] -attr @name result0_i_n_1 -pin ALU0|result0_i O[6] -pin ALU0|result_i I0[6]
load net ALU0|result0_i_n_2 -attr @rip(#000000) O[5] -attr @name result0_i_n_2 -pin ALU0|result0_i O[5] -pin ALU0|result_i I0[5]
load net ALU0|result0_i_n_3 -attr @rip(#000000) O[4] -attr @name result0_i_n_3 -pin ALU0|result0_i O[4] -pin ALU0|result_i I0[4]
load net ALU0|result0_i_n_4 -attr @rip(#000000) O[3] -attr @name result0_i_n_4 -pin ALU0|result0_i O[3] -pin ALU0|result_i I0[3]
load net ALU0|result0_i_n_5 -attr @rip(#000000) O[2] -attr @name result0_i_n_5 -pin ALU0|result0_i O[2] -pin ALU0|result_i I0[2]
load net ALU0|result0_i_n_6 -attr @rip(#000000) O[1] -attr @name result0_i_n_6 -pin ALU0|result0_i O[1] -pin ALU0|result_i I0[1]
load net ALU0|result0_i_n_7 -attr @rip(#000000) O[0] -attr @name result0_i_n_7 -pin ALU0|result0_i O[0] -pin ALU0|result_i I0[0]
load net ALU0|result[0] -attr @rip(#000000) 0 -attr @name result[0] -hierPin ALU0 result[0] -pin ALU0|result_reg[7:0] Q[0]
load net ALU0|result[1] -attr @rip(#000000) 1 -attr @name result[1] -hierPin ALU0 result[1] -pin ALU0|result_reg[7:0] Q[1]
load net ALU0|result[2] -attr @rip(#000000) 2 -attr @name result[2] -hierPin ALU0 result[2] -pin ALU0|result_reg[7:0] Q[2]
load net ALU0|result[3] -attr @rip(#000000) 3 -attr @name result[3] -hierPin ALU0 result[3] -pin ALU0|result_reg[7:0] Q[3]
load net ALU0|result[4] -attr @rip(#000000) 4 -attr @name result[4] -hierPin ALU0 result[4] -pin ALU0|result_reg[7:0] Q[4]
load net ALU0|result[5] -attr @rip(#000000) 5 -attr @name result[5] -hierPin ALU0 result[5] -pin ALU0|result_reg[7:0] Q[5]
load net ALU0|result[6] -attr @rip(#000000) 6 -attr @name result[6] -hierPin ALU0 result[6] -pin ALU0|result_reg[7:0] Q[6]
load net ALU0|result[7] -attr @rip(#000000) 7 -attr @name result[7] -hierPin ALU0 result[7] -pin ALU0|result_reg[7:0] Q[7]
load net ALU0|result_i_n_0 -attr @rip(#000000) O[7] -attr @name result_i_n_0 -pin ALU0|result_i O[7] -pin ALU0|result_reg[7:0] D[7]
load net ALU0|result_i_n_1 -attr @rip(#000000) O[6] -attr @name result_i_n_1 -pin ALU0|result_i O[6] -pin ALU0|result_reg[7:0] D[6]
load net ALU0|result_i_n_2 -attr @rip(#000000) O[5] -attr @name result_i_n_2 -pin ALU0|result_i O[5] -pin ALU0|result_reg[7:0] D[5]
load net ALU0|result_i_n_3 -attr @rip(#000000) O[4] -attr @name result_i_n_3 -pin ALU0|result_i O[4] -pin ALU0|result_reg[7:0] D[4]
load net ALU0|result_i_n_4 -attr @rip(#000000) O[3] -attr @name result_i_n_4 -pin ALU0|result_i O[3] -pin ALU0|result_reg[7:0] D[3]
load net ALU0|result_i_n_5 -attr @rip(#000000) O[2] -attr @name result_i_n_5 -pin ALU0|result_i O[2] -pin ALU0|result_reg[7:0] D[2]
load net ALU0|result_i_n_6 -attr @rip(#000000) O[1] -attr @name result_i_n_6 -pin ALU0|result_i O[1] -pin ALU0|result_reg[7:0] D[1]
load net ALU0|result_i_n_7 -attr @rip(#000000) O[0] -attr @name result_i_n_7 -pin ALU0|result_i O[0] -pin ALU0|result_reg[7:0] D[0]
load net A_reg|data_in[0] -attr @rip data_in[0] -attr @name data_in[0] -hierPin A_reg data_in[0] -pin A_reg|out_reg D[0]
load net A_reg|data_in[1] -attr @rip data_in[1] -attr @name data_in[1] -hierPin A_reg data_in[1] -pin A_reg|out_reg D[1]
load net A_reg|data_in[2] -attr @rip data_in[2] -attr @name data_in[2] -hierPin A_reg data_in[2] -pin A_reg|out_reg D[2]
load net A_reg|data_in[3] -attr @rip data_in[3] -attr @name data_in[3] -hierPin A_reg data_in[3] -pin A_reg|out_reg D[3]
load net A_reg|data_in[4] -attr @rip data_in[4] -attr @name data_in[4] -hierPin A_reg data_in[4] -pin A_reg|out_reg D[4]
load net A_reg|data_in[5] -attr @rip data_in[5] -attr @name data_in[5] -hierPin A_reg data_in[5] -pin A_reg|out_reg D[5]
load net A_reg|data_in[6] -attr @rip data_in[6] -attr @name data_in[6] -hierPin A_reg data_in[6] -pin A_reg|out_reg D[6]
load net A_reg|data_in[7] -attr @rip data_in[7] -attr @name data_in[7] -hierPin A_reg data_in[7] -pin A_reg|out_reg D[7]
load net A_reg|load -attr @name load -hierPin A_reg load -pin A_reg|out_reg G
netloc A_reg|load 1 0 1 3710 408n
load net A_reg|out[0] -attr @rip Q[0] -attr @name out[0] -hierPin A_reg out[0] -pin A_reg|out_reg Q[0]
load net A_reg|out[1] -attr @rip Q[1] -attr @name out[1] -hierPin A_reg out[1] -pin A_reg|out_reg Q[1]
load net A_reg|out[2] -attr @rip Q[2] -attr @name out[2] -hierPin A_reg out[2] -pin A_reg|out_reg Q[2]
load net A_reg|out[3] -attr @rip Q[3] -attr @name out[3] -hierPin A_reg out[3] -pin A_reg|out_reg Q[3]
load net A_reg|out[4] -attr @rip Q[4] -attr @name out[4] -hierPin A_reg out[4] -pin A_reg|out_reg Q[4]
load net A_reg|out[5] -attr @rip Q[5] -attr @name out[5] -hierPin A_reg out[5] -pin A_reg|out_reg Q[5]
load net A_reg|out[6] -attr @rip Q[6] -attr @name out[6] -hierPin A_reg out[6] -pin A_reg|out_reg Q[6]
load net A_reg|out[7] -attr @rip Q[7] -attr @name out[7] -hierPin A_reg out[7] -pin A_reg|out_reg Q[7]
load net B_reg|data_in[0] -attr @rip data_in[0] -attr @name data_in[0] -hierPin B_reg data_in[0] -pin B_reg|out_reg D[0]
load net B_reg|data_in[1] -attr @rip data_in[1] -attr @name data_in[1] -hierPin B_reg data_in[1] -pin B_reg|out_reg D[1]
load net B_reg|data_in[2] -attr @rip data_in[2] -attr @name data_in[2] -hierPin B_reg data_in[2] -pin B_reg|out_reg D[2]
load net B_reg|data_in[3] -attr @rip data_in[3] -attr @name data_in[3] -hierPin B_reg data_in[3] -pin B_reg|out_reg D[3]
load net B_reg|data_in[4] -attr @rip data_in[4] -attr @name data_in[4] -hierPin B_reg data_in[4] -pin B_reg|out_reg D[4]
load net B_reg|data_in[5] -attr @rip data_in[5] -attr @name data_in[5] -hierPin B_reg data_in[5] -pin B_reg|out_reg D[5]
load net B_reg|data_in[6] -attr @rip data_in[6] -attr @name data_in[6] -hierPin B_reg data_in[6] -pin B_reg|out_reg D[6]
load net B_reg|data_in[7] -attr @rip data_in[7] -attr @name data_in[7] -hierPin B_reg data_in[7] -pin B_reg|out_reg D[7]
load net B_reg|load -attr @name load -hierPin B_reg load -pin B_reg|out_reg G
netloc B_reg|load 1 0 1 3710 224n
load net B_reg|out[0] -attr @rip Q[0] -attr @name out[0] -hierPin B_reg out[0] -pin B_reg|out_reg Q[0]
load net B_reg|out[1] -attr @rip Q[1] -attr @name out[1] -hierPin B_reg out[1] -pin B_reg|out_reg Q[1]
load net B_reg|out[2] -attr @rip Q[2] -attr @name out[2] -hierPin B_reg out[2] -pin B_reg|out_reg Q[2]
load net B_reg|out[3] -attr @rip Q[3] -attr @name out[3] -hierPin B_reg out[3] -pin B_reg|out_reg Q[3]
load net B_reg|out[4] -attr @rip Q[4] -attr @name out[4] -hierPin B_reg out[4] -pin B_reg|out_reg Q[4]
load net B_reg|out[5] -attr @rip Q[5] -attr @name out[5] -hierPin B_reg out[5] -pin B_reg|out_reg Q[5]
load net B_reg|out[6] -attr @rip Q[6] -attr @name out[6] -hierPin B_reg out[6] -pin B_reg|out_reg Q[6]
load net B_reg|out[7] -attr @rip Q[7] -attr @name out[7] -hierPin B_reg out[7] -pin B_reg|out_reg Q[7]
load net P_Counter|<const0> -ground -attr @name <const0> -pin P_Counter|count_out_reg__0[7:0] CE[7] -pin P_Counter|count_out_reg__0[7:0] CE[6] -pin P_Counter|count_out_reg__0[7:0] CE[5] -pin P_Counter|count_out_reg__0[7:0] CE[4]
load net P_Counter|<const1> -power -attr @name <const1> -pin P_Counter|count_out_reg0_i I1
load net P_Counter|clk -attr @name clk -hierPin P_Counter clk -pin P_Counter|count_out_reg[7:0] C -pin P_Counter|count_out_reg__0[7:0] C
netloc P_Counter|clk 1 0 2 NJ 522 510
load net P_Counter|count_in[0] -attr @rip count_in[0] -attr @name count_in[0] -hierPin P_Counter count_in[0] -pin P_Counter|count_out_reg__0[7:0] D[0]
load net P_Counter|count_in[1] -attr @rip count_in[1] -attr @name count_in[1] -hierPin P_Counter count_in[1] -pin P_Counter|count_out_reg__0[7:0] D[1]
load net P_Counter|count_in[2] -attr @rip count_in[2] -attr @name count_in[2] -hierPin P_Counter count_in[2] -pin P_Counter|count_out_reg__0[7:0] D[2]
load net P_Counter|count_in[3] -attr @rip count_in[3] -attr @name count_in[3] -hierPin P_Counter count_in[3] -pin P_Counter|count_out_reg__0[7:0] D[3]
load net P_Counter|count_out[0] -attr @rip 0 -attr @name count_out[0] -hierPin P_Counter count_out[0] -pin P_Counter|count_out_reg0_i I0[0] -pin P_Counter|count_out_reg[7:0] Q[0] -pin P_Counter|count_out_reg__0[7:0] Q[0]
load net P_Counter|count_out[1] -attr @rip 1 -attr @name count_out[1] -hierPin P_Counter count_out[1] -pin P_Counter|count_out_reg0_i I0[1] -pin P_Counter|count_out_reg[7:0] Q[1] -pin P_Counter|count_out_reg__0[7:0] Q[1]
load net P_Counter|count_out[2] -attr @rip 2 -attr @name count_out[2] -hierPin P_Counter count_out[2] -pin P_Counter|count_out_reg0_i I0[2] -pin P_Counter|count_out_reg[7:0] Q[2] -pin P_Counter|count_out_reg__0[7:0] Q[2]
load net P_Counter|count_out[3] -attr @rip 3 -attr @name count_out[3] -hierPin P_Counter count_out[3] -pin P_Counter|count_out_reg0_i I0[3] -pin P_Counter|count_out_reg[7:0] Q[3] -pin P_Counter|count_out_reg__0[7:0] Q[3]
load net P_Counter|count_out[4] -attr @rip 4 -attr @name count_out[4] -hierPin P_Counter count_out[4] -pin P_Counter|count_out_reg0_i I0[4] -pin P_Counter|count_out_reg[7:0] Q[4] -pin P_Counter|count_out_reg__0[7:0] Q[4]
load net P_Counter|count_out[5] -attr @rip 5 -attr @name count_out[5] -hierPin P_Counter count_out[5] -pin P_Counter|count_out_reg0_i I0[5] -pin P_Counter|count_out_reg[7:0] Q[5] -pin P_Counter|count_out_reg__0[7:0] Q[5]
load net P_Counter|count_out[6] -attr @rip 6 -attr @name count_out[6] -hierPin P_Counter count_out[6] -pin P_Counter|count_out_reg0_i I0[6] -pin P_Counter|count_out_reg[7:0] Q[6] -pin P_Counter|count_out_reg__0[7:0] Q[6]
load net P_Counter|count_out[7] -attr @rip 7 -attr @name count_out[7] -hierPin P_Counter count_out[7] -pin P_Counter|count_out_reg0_i I0[7] -pin P_Counter|count_out_reg[7:0] Q[7] -pin P_Counter|count_out_reg__0[7:0] Q[7]
load net P_Counter|count_out_reg0[0] -attr @rip O[0] -attr @name count_out_reg0[0] -pin P_Counter|count_out_reg0_i O[0] -pin P_Counter|count_out_reg[7:0] D[0]
load net P_Counter|count_out_reg0[1] -attr @rip O[1] -attr @name count_out_reg0[1] -pin P_Counter|count_out_reg0_i O[1] -pin P_Counter|count_out_reg[7:0] D[1]
load net P_Counter|count_out_reg0[2] -attr @rip O[2] -attr @name count_out_reg0[2] -pin P_Counter|count_out_reg0_i O[2] -pin P_Counter|count_out_reg[7:0] D[2]
load net P_Counter|count_out_reg0[3] -attr @rip O[3] -attr @name count_out_reg0[3] -pin P_Counter|count_out_reg0_i O[3] -pin P_Counter|count_out_reg[7:0] D[3]
load net P_Counter|count_out_reg0[4] -attr @rip O[4] -attr @name count_out_reg0[4] -pin P_Counter|count_out_reg0_i O[4] -pin P_Counter|count_out_reg[7:0] D[4]
load net P_Counter|count_out_reg0[5] -attr @rip O[5] -attr @name count_out_reg0[5] -pin P_Counter|count_out_reg0_i O[5] -pin P_Counter|count_out_reg[7:0] D[5]
load net P_Counter|count_out_reg0[6] -attr @rip O[6] -attr @name count_out_reg0[6] -pin P_Counter|count_out_reg0_i O[6] -pin P_Counter|count_out_reg[7:0] D[6]
load net P_Counter|count_out_reg0[7] -attr @rip O[7] -attr @name count_out_reg0[7] -pin P_Counter|count_out_reg0_i O[7] -pin P_Counter|count_out_reg[7:0] D[7]
load net P_Counter|en -attr @name en -hierPin P_Counter en -pin P_Counter|count_out_reg[7:0] CE
netloc P_Counter|en 1 0 2 NJ 562 450
load net P_Counter|jump -attr @name jump -hierPin P_Counter jump -pin P_Counter|count_out_reg__0[7:0] CE[3] -pin P_Counter|count_out_reg__0[7:0] CE[2] -pin P_Counter|count_out_reg__0[7:0] CE[1] -pin P_Counter|count_out_reg__0[7:0] CE[0]
netloc P_Counter|jump 1 0 2 NJ 582 470
load net INSTR_REG|<const0> -ground -attr @name <const0> -pin INSTR_REG|out_reg D[7] -pin INSTR_REG|out_reg D[6] -pin INSTR_REG|out_reg D[5] -pin INSTR_REG|out_reg D[4]
load net INSTR_REG|data_in[0] -attr @rip data_in[0] -attr @name data_in[0] -hierPin INSTR_REG data_in[0] -pin INSTR_REG|out_reg D[0]
load net INSTR_REG|data_in[1] -attr @rip data_in[1] -attr @name data_in[1] -hierPin INSTR_REG data_in[1] -pin INSTR_REG|out_reg D[1]
load net INSTR_REG|data_in[2] -attr @rip data_in[2] -attr @name data_in[2] -hierPin INSTR_REG data_in[2] -pin INSTR_REG|out_reg D[2]
load net INSTR_REG|data_in[3] -attr @rip data_in[3] -attr @name data_in[3] -hierPin INSTR_REG data_in[3] -pin INSTR_REG|out_reg D[3]
load net INSTR_REG|data_in[4] -attr @rip data_in[4] -attr @name data_in[4] -hierPin INSTR_REG data_in[4] -pin INSTR_REG|instr_reg D[0]
load net INSTR_REG|data_in[5] -attr @rip data_in[5] -attr @name data_in[5] -hierPin INSTR_REG data_in[5] -pin INSTR_REG|instr_reg D[1]
load net INSTR_REG|data_in[6] -attr @rip data_in[6] -attr @name data_in[6] -hierPin INSTR_REG data_in[6] -pin INSTR_REG|instr_reg D[2]
load net INSTR_REG|data_in[7] -attr @rip data_in[7] -attr @name data_in[7] -hierPin INSTR_REG data_in[7] -pin INSTR_REG|instr_reg D[3]
load net INSTR_REG|instr[0] -attr @rip Q[0] -attr @name instr[0] -hierPin INSTR_REG instr[0] -pin INSTR_REG|instr_reg Q[0]
load net INSTR_REG|instr[1] -attr @rip Q[1] -attr @name instr[1] -hierPin INSTR_REG instr[1] -pin INSTR_REG|instr_reg Q[1]
load net INSTR_REG|instr[2] -attr @rip Q[2] -attr @name instr[2] -hierPin INSTR_REG instr[2] -pin INSTR_REG|instr_reg Q[2]
load net INSTR_REG|instr[3] -attr @rip Q[3] -attr @name instr[3] -hierPin INSTR_REG instr[3] -pin INSTR_REG|instr_reg Q[3]
load net INSTR_REG|load -attr @name load -hierPin INSTR_REG load -pin INSTR_REG|instr_reg G -pin INSTR_REG|out_reg G
netloc INSTR_REG|load 1 0 1 240 92n
load net INSTR_REG|out[0] -attr @rip Q[0] -attr @name out[0] -hierPin INSTR_REG out[0] -pin INSTR_REG|out_reg Q[0]
load net INSTR_REG|out[1] -attr @rip Q[1] -attr @name out[1] -hierPin INSTR_REG out[1] -pin INSTR_REG|out_reg Q[1]
load net INSTR_REG|out[2] -attr @rip Q[2] -attr @name out[2] -hierPin INSTR_REG out[2] -pin INSTR_REG|out_reg Q[2]
load net INSTR_REG|out[3] -attr @rip Q[3] -attr @name out[3] -hierPin INSTR_REG out[3] -pin INSTR_REG|out_reg Q[3]
load net INSTR_REG|out[4] -attr @rip Q[4] -attr @name out[4] -hierPin INSTR_REG out[4] -pin INSTR_REG|out_reg Q[4]
load net INSTR_REG|out[5] -attr @rip Q[5] -attr @name out[5] -hierPin INSTR_REG out[5] -pin INSTR_REG|out_reg Q[5]
load net INSTR_REG|out[6] -attr @rip Q[6] -attr @name out[6] -hierPin INSTR_REG out[6] -pin INSTR_REG|out_reg Q[6]
load net INSTR_REG|out[7] -attr @rip Q[7] -attr @name out[7] -hierPin INSTR_REG out[7] -pin INSTR_REG|out_reg Q[7]
load net RAM0|<const0> -ground -attr @name <const0> -pin RAM0|mem_i I1 -pin RAM0|mem_i__0 I1 -pin RAM0|mem_i__1 I1 -pin RAM0|mem_i__10 I1 -pin RAM0|mem_i__11 I1 -pin RAM0|mem_i__12 I1 -pin RAM0|mem_i__13 I1 -pin RAM0|mem_i__14 I1 -pin RAM0|mem_i__2 I1 -pin RAM0|mem_i__3 I1 -pin RAM0|mem_i__4 I1 -pin RAM0|mem_i__5 I1 -pin RAM0|mem_i__6 I1 -pin RAM0|mem_i__7 I1 -pin RAM0|mem_i__8 I1 -pin RAM0|mem_i__9 I1
load net RAM0|addr[0] -attr @rip addr[0] -attr @name addr[0] -hierPin RAM0 addr[0] -pin RAM0|mem_i__15 S[0] -pin RAM0|mem_reg[0]_i A[0] -pin RAM0|mem_reg[10]_i A[0] -pin RAM0|mem_reg[11]_i A[0] -pin RAM0|mem_reg[12]_i A[0] -pin RAM0|mem_reg[13]_i A[0] -pin RAM0|mem_reg[14]_i A[0] -pin RAM0|mem_reg[15]_i A[0] -pin RAM0|mem_reg[1]_i A[0] -pin RAM0|mem_reg[2]_i A[0] -pin RAM0|mem_reg[3]_i A[0] -pin RAM0|mem_reg[4]_i A[0] -pin RAM0|mem_reg[5]_i A[0] -pin RAM0|mem_reg[6]_i A[0] -pin RAM0|mem_reg[7]_i A[0] -pin RAM0|mem_reg[8]_i A[0] -pin RAM0|mem_reg[9]_i A[0]
load net RAM0|addr[1] -attr @rip addr[1] -attr @name addr[1] -hierPin RAM0 addr[1] -pin RAM0|mem_i__15 S[1] -pin RAM0|mem_reg[0]_i A[1] -pin RAM0|mem_reg[10]_i A[1] -pin RAM0|mem_reg[11]_i A[1] -pin RAM0|mem_reg[12]_i A[1] -pin RAM0|mem_reg[13]_i A[1] -pin RAM0|mem_reg[14]_i A[1] -pin RAM0|mem_reg[15]_i A[1] -pin RAM0|mem_reg[1]_i A[1] -pin RAM0|mem_reg[2]_i A[1] -pin RAM0|mem_reg[3]_i A[1] -pin RAM0|mem_reg[4]_i A[1] -pin RAM0|mem_reg[5]_i A[1] -pin RAM0|mem_reg[6]_i A[1] -pin RAM0|mem_reg[7]_i A[1] -pin RAM0|mem_reg[8]_i A[1] -pin RAM0|mem_reg[9]_i A[1]
load net RAM0|addr[2] -attr @rip addr[2] -attr @name addr[2] -hierPin RAM0 addr[2] -pin RAM0|mem_i__15 S[2] -pin RAM0|mem_reg[0]_i A[2] -pin RAM0|mem_reg[10]_i A[2] -pin RAM0|mem_reg[11]_i A[2] -pin RAM0|mem_reg[12]_i A[2] -pin RAM0|mem_reg[13]_i A[2] -pin RAM0|mem_reg[14]_i A[2] -pin RAM0|mem_reg[15]_i A[2] -pin RAM0|mem_reg[1]_i A[2] -pin RAM0|mem_reg[2]_i A[2] -pin RAM0|mem_reg[3]_i A[2] -pin RAM0|mem_reg[4]_i A[2] -pin RAM0|mem_reg[5]_i A[2] -pin RAM0|mem_reg[6]_i A[2] -pin RAM0|mem_reg[7]_i A[2] -pin RAM0|mem_reg[8]_i A[2] -pin RAM0|mem_reg[9]_i A[2]
load net RAM0|addr[3] -attr @rip addr[3] -attr @name addr[3] -hierPin RAM0 addr[3] -pin RAM0|mem_i__15 S[3] -pin RAM0|mem_reg[0]_i A[3] -pin RAM0|mem_reg[10]_i A[3] -pin RAM0|mem_reg[11]_i A[3] -pin RAM0|mem_reg[12]_i A[3] -pin RAM0|mem_reg[13]_i A[3] -pin RAM0|mem_reg[14]_i A[3] -pin RAM0|mem_reg[15]_i A[3] -pin RAM0|mem_reg[1]_i A[3] -pin RAM0|mem_reg[2]_i A[3] -pin RAM0|mem_reg[3]_i A[3] -pin RAM0|mem_reg[4]_i A[3] -pin RAM0|mem_reg[5]_i A[3] -pin RAM0|mem_reg[6]_i A[3] -pin RAM0|mem_reg[7]_i A[3] -pin RAM0|mem_reg[8]_i A[3] -pin RAM0|mem_reg[9]_i A[3]
load net RAM0|mem -attr @name mem -pin RAM0|mem_i O -pin RAM0|mem_reg[15] G
netloc RAM0|mem 1 2 1 5230 2636n
load net RAM0|mem_i__0_n_0 -attr @name mem_i__0_n_0 -pin RAM0|mem_i__0 O -pin RAM0|mem_reg[14] G
netloc RAM0|mem_i__0_n_0 1 2 1 5190 956n
load net RAM0|mem_i__10_n_0 -attr @name mem_i__10_n_0 -pin RAM0|mem_i__10 O -pin RAM0|mem_reg[4] G
netloc RAM0|mem_i__10_n_0 1 2 1 5030 1416n
load net RAM0|mem_i__11_n_0 -attr @name mem_i__11_n_0 -pin RAM0|mem_i__11 O -pin RAM0|mem_reg[3] G
netloc RAM0|mem_i__11_n_0 1 2 1 5010 1306n
load net RAM0|mem_i__12_n_0 -attr @name mem_i__12_n_0 -pin RAM0|mem_i__12 O -pin RAM0|mem_reg[2] G
netloc RAM0|mem_i__12_n_0 1 2 1 4990 1196n
load net RAM0|mem_i__13_n_0 -attr @name mem_i__13_n_0 -pin RAM0|mem_i__13 O -pin RAM0|mem_reg[1] G
netloc RAM0|mem_i__13_n_0 1 2 1 4950 1086n
load net RAM0|mem_i__14_n_0 -attr @name mem_i__14_n_0 -pin RAM0|mem_i__14 O -pin RAM0|mem_reg[0] G
netloc RAM0|mem_i__14_n_0 1 2 1 4910 976n
load net RAM0|mem_i__1_n_0 -attr @name mem_i__1_n_0 -pin RAM0|mem_i__1 O -pin RAM0|mem_reg[13] G
netloc RAM0|mem_i__1_n_0 1 2 1 4930 1086n
load net RAM0|mem_i__2_n_0 -attr @name mem_i__2_n_0 -pin RAM0|mem_i__2 O -pin RAM0|mem_reg[12] G
netloc RAM0|mem_i__2_n_0 1 2 1 4970 1206n
load net RAM0|mem_i__3_n_0 -attr @name mem_i__3_n_0 -pin RAM0|mem_i__3 O -pin RAM0|mem_reg[11] G
netloc RAM0|mem_i__3_n_0 1 2 1 5170 1346n
load net RAM0|mem_i__4_n_0 -attr @name mem_i__4_n_0 -pin RAM0|mem_i__4 O -pin RAM0|mem_reg[10] G
netloc RAM0|mem_i__4_n_0 1 2 1 5150 1466n
load net RAM0|mem_i__5_n_0 -attr @name mem_i__5_n_0 -pin RAM0|mem_i__5 O -pin RAM0|mem_reg[9] G
netloc RAM0|mem_i__5_n_0 1 2 1 5130 1586n
load net RAM0|mem_i__6_n_0 -attr @name mem_i__6_n_0 -pin RAM0|mem_i__6 O -pin RAM0|mem_reg[8] G
netloc RAM0|mem_i__6_n_0 1 2 1 5110 1706n
load net RAM0|mem_i__7_n_0 -attr @name mem_i__7_n_0 -pin RAM0|mem_i__7 O -pin RAM0|mem_reg[7] G
netloc RAM0|mem_i__7_n_0 1 2 1 5090 1746n
load net RAM0|mem_i__8_n_0 -attr @name mem_i__8_n_0 -pin RAM0|mem_i__8 O -pin RAM0|mem_reg[6] G
netloc RAM0|mem_i__8_n_0 1 2 1 5070 1636n
load net RAM0|mem_i__9_n_0 -attr @name mem_i__9_n_0 -pin RAM0|mem_i__9 O -pin RAM0|mem_reg[5] G
netloc RAM0|mem_i__9_n_0 1 2 1 5050 1526n
load net RAM0|mem_in[0] -attr @rip mem_in[0] -attr @name mem_in[0] -hierPin RAM0 mem_in[0] -pin RAM0|mem_reg[0] D[0] -pin RAM0|mem_reg[10] D[0] -pin RAM0|mem_reg[11] D[0] -pin RAM0|mem_reg[12] D[0] -pin RAM0|mem_reg[13] D[0] -pin RAM0|mem_reg[14] D[0] -pin RAM0|mem_reg[15] D[0] -pin RAM0|mem_reg[1] D[0] -pin RAM0|mem_reg[2] D[0] -pin RAM0|mem_reg[3] D[0] -pin RAM0|mem_reg[4] D[0] -pin RAM0|mem_reg[5] D[0] -pin RAM0|mem_reg[6] D[0] -pin RAM0|mem_reg[7] D[0] -pin RAM0|mem_reg[8] D[0] -pin RAM0|mem_reg[9] D[0]
load net RAM0|mem_in[1] -attr @rip mem_in[1] -attr @name mem_in[1] -hierPin RAM0 mem_in[1] -pin RAM0|mem_reg[0] D[1] -pin RAM0|mem_reg[10] D[1] -pin RAM0|mem_reg[11] D[1] -pin RAM0|mem_reg[12] D[1] -pin RAM0|mem_reg[13] D[1] -pin RAM0|mem_reg[14] D[1] -pin RAM0|mem_reg[15] D[1] -pin RAM0|mem_reg[1] D[1] -pin RAM0|mem_reg[2] D[1] -pin RAM0|mem_reg[3] D[1] -pin RAM0|mem_reg[4] D[1] -pin RAM0|mem_reg[5] D[1] -pin RAM0|mem_reg[6] D[1] -pin RAM0|mem_reg[7] D[1] -pin RAM0|mem_reg[8] D[1] -pin RAM0|mem_reg[9] D[1]
load net RAM0|mem_in[2] -attr @rip mem_in[2] -attr @name mem_in[2] -hierPin RAM0 mem_in[2] -pin RAM0|mem_reg[0] D[2] -pin RAM0|mem_reg[10] D[2] -pin RAM0|mem_reg[11] D[2] -pin RAM0|mem_reg[12] D[2] -pin RAM0|mem_reg[13] D[2] -pin RAM0|mem_reg[14] D[2] -pin RAM0|mem_reg[15] D[2] -pin RAM0|mem_reg[1] D[2] -pin RAM0|mem_reg[2] D[2] -pin RAM0|mem_reg[3] D[2] -pin RAM0|mem_reg[4] D[2] -pin RAM0|mem_reg[5] D[2] -pin RAM0|mem_reg[6] D[2] -pin RAM0|mem_reg[7] D[2] -pin RAM0|mem_reg[8] D[2] -pin RAM0|mem_reg[9] D[2]
load net RAM0|mem_in[3] -attr @rip mem_in[3] -attr @name mem_in[3] -hierPin RAM0 mem_in[3] -pin RAM0|mem_reg[0] D[3] -pin RAM0|mem_reg[10] D[3] -pin RAM0|mem_reg[11] D[3] -pin RAM0|mem_reg[12] D[3] -pin RAM0|mem_reg[13] D[3] -pin RAM0|mem_reg[14] D[3] -pin RAM0|mem_reg[15] D[3] -pin RAM0|mem_reg[1] D[3] -pin RAM0|mem_reg[2] D[3] -pin RAM0|mem_reg[3] D[3] -pin RAM0|mem_reg[4] D[3] -pin RAM0|mem_reg[5] D[3] -pin RAM0|mem_reg[6] D[3] -pin RAM0|mem_reg[7] D[3] -pin RAM0|mem_reg[8] D[3] -pin RAM0|mem_reg[9] D[3]
load net RAM0|mem_in[4] -attr @rip mem_in[4] -attr @name mem_in[4] -hierPin RAM0 mem_in[4] -pin RAM0|mem_reg[0] D[4] -pin RAM0|mem_reg[10] D[4] -pin RAM0|mem_reg[11] D[4] -pin RAM0|mem_reg[12] D[4] -pin RAM0|mem_reg[13] D[4] -pin RAM0|mem_reg[14] D[4] -pin RAM0|mem_reg[15] D[4] -pin RAM0|mem_reg[1] D[4] -pin RAM0|mem_reg[2] D[4] -pin RAM0|mem_reg[3] D[4] -pin RAM0|mem_reg[4] D[4] -pin RAM0|mem_reg[5] D[4] -pin RAM0|mem_reg[6] D[4] -pin RAM0|mem_reg[7] D[4] -pin RAM0|mem_reg[8] D[4] -pin RAM0|mem_reg[9] D[4]
load net RAM0|mem_in[5] -attr @rip mem_in[5] -attr @name mem_in[5] -hierPin RAM0 mem_in[5] -pin RAM0|mem_reg[0] D[5] -pin RAM0|mem_reg[10] D[5] -pin RAM0|mem_reg[11] D[5] -pin RAM0|mem_reg[12] D[5] -pin RAM0|mem_reg[13] D[5] -pin RAM0|mem_reg[14] D[5] -pin RAM0|mem_reg[15] D[5] -pin RAM0|mem_reg[1] D[5] -pin RAM0|mem_reg[2] D[5] -pin RAM0|mem_reg[3] D[5] -pin RAM0|mem_reg[4] D[5] -pin RAM0|mem_reg[5] D[5] -pin RAM0|mem_reg[6] D[5] -pin RAM0|mem_reg[7] D[5] -pin RAM0|mem_reg[8] D[5] -pin RAM0|mem_reg[9] D[5]
load net RAM0|mem_in[6] -attr @rip mem_in[6] -attr @name mem_in[6] -hierPin RAM0 mem_in[6] -pin RAM0|mem_reg[0] D[6] -pin RAM0|mem_reg[10] D[6] -pin RAM0|mem_reg[11] D[6] -pin RAM0|mem_reg[12] D[6] -pin RAM0|mem_reg[13] D[6] -pin RAM0|mem_reg[14] D[6] -pin RAM0|mem_reg[15] D[6] -pin RAM0|mem_reg[1] D[6] -pin RAM0|mem_reg[2] D[6] -pin RAM0|mem_reg[3] D[6] -pin RAM0|mem_reg[4] D[6] -pin RAM0|mem_reg[5] D[6] -pin RAM0|mem_reg[6] D[6] -pin RAM0|mem_reg[7] D[6] -pin RAM0|mem_reg[8] D[6] -pin RAM0|mem_reg[9] D[6]
load net RAM0|mem_in[7] -attr @rip mem_in[7] -attr @name mem_in[7] -hierPin RAM0 mem_in[7] -pin RAM0|mem_reg[0] D[7] -pin RAM0|mem_reg[10] D[7] -pin RAM0|mem_reg[11] D[7] -pin RAM0|mem_reg[12] D[7] -pin RAM0|mem_reg[13] D[7] -pin RAM0|mem_reg[14] D[7] -pin RAM0|mem_reg[15] D[7] -pin RAM0|mem_reg[1] D[7] -pin RAM0|mem_reg[2] D[7] -pin RAM0|mem_reg[3] D[7] -pin RAM0|mem_reg[4] D[7] -pin RAM0|mem_reg[5] D[7] -pin RAM0|mem_reg[6] D[7] -pin RAM0|mem_reg[7] D[7] -pin RAM0|mem_reg[8] D[7] -pin RAM0|mem_reg[9] D[7]
load net RAM0|mem_out[0] -attr @rip O[0] -attr @name mem_out[0] -hierPin RAM0 mem_out[0] -pin RAM0|mem_i__15 O[0]
load net RAM0|mem_out[1] -attr @rip O[1] -attr @name mem_out[1] -hierPin RAM0 mem_out[1] -pin RAM0|mem_i__15 O[1]
load net RAM0|mem_out[2] -attr @rip O[2] -attr @name mem_out[2] -hierPin RAM0 mem_out[2] -pin RAM0|mem_i__15 O[2]
load net RAM0|mem_out[3] -attr @rip O[3] -attr @name mem_out[3] -hierPin RAM0 mem_out[3] -pin RAM0|mem_i__15 O[3]
load net RAM0|mem_out[4] -attr @rip O[4] -attr @name mem_out[4] -hierPin RAM0 mem_out[4] -pin RAM0|mem_i__15 O[4]
load net RAM0|mem_out[5] -attr @rip O[5] -attr @name mem_out[5] -hierPin RAM0 mem_out[5] -pin RAM0|mem_i__15 O[5]
load net RAM0|mem_out[6] -attr @rip O[6] -attr @name mem_out[6] -hierPin RAM0 mem_out[6] -pin RAM0|mem_i__15 O[6]
load net RAM0|mem_out[7] -attr @rip O[7] -attr @name mem_out[7] -hierPin RAM0 mem_out[7] -pin RAM0|mem_i__15 O[7]
load net RAM0|mem_reg[0]__0 -attr @name mem_reg[0]__0 -pin RAM0|mem_i__14 I0 -pin RAM0|mem_reg[0]_i O
netloc RAM0|mem_reg[0]__0 1 1 1 4510 1386n
load net RAM0|mem_reg[10]__0 -attr @name mem_reg[10]__0 -pin RAM0|mem_i__4 I0 -pin RAM0|mem_reg[10]_i O
netloc RAM0|mem_reg[10]__0 1 1 1 4590 1456n
load net RAM0|mem_reg[11]__0 -attr @name mem_reg[11]__0 -pin RAM0|mem_i__3 I0 -pin RAM0|mem_reg[11]_i O
netloc RAM0|mem_reg[11]__0 1 1 1 4570 1336n
load net RAM0|mem_reg[12]__0 -attr @name mem_reg[12]__0 -pin RAM0|mem_i__2 I0 -pin RAM0|mem_reg[12]_i O
netloc RAM0|mem_reg[12]__0 1 1 1 4550 1196n
load net RAM0|mem_reg[13]__0 -attr @name mem_reg[13]__0 -pin RAM0|mem_i__1 I0 -pin RAM0|mem_reg[13]_i O
netloc RAM0|mem_reg[13]__0 1 1 1 4530 1076n
load net RAM0|mem_reg[14]__0 -attr @name mem_reg[14]__0 -pin RAM0|mem_i__0 I0 -pin RAM0|mem_reg[14]_i O
netloc RAM0|mem_reg[14]__0 1 1 1 4390 946n
load net RAM0|mem_reg[15]__0 -attr @name mem_reg[15]__0 -pin RAM0|mem_i I0 -pin RAM0|mem_reg[15]_i O
netloc RAM0|mem_reg[15]__0 1 1 1 N 2796
load net RAM0|mem_reg[1]__0 -attr @name mem_reg[1]__0 -pin RAM0|mem_i__13 I0 -pin RAM0|mem_reg[1]_i O
netloc RAM0|mem_reg[1]__0 1 1 1 4490 1476n
load net RAM0|mem_reg[2]__0 -attr @name mem_reg[2]__0 -pin RAM0|mem_i__12 I0 -pin RAM0|mem_reg[2]_i O
netloc RAM0|mem_reg[2]__0 1 1 1 4410 1566n
load net RAM0|mem_reg[3]__0 -attr @name mem_reg[3]__0 -pin RAM0|mem_i__11 I0 -pin RAM0|mem_reg[3]_i O
netloc RAM0|mem_reg[3]__0 1 1 1 4470 1656n
load net RAM0|mem_reg[4]__0 -attr @name mem_reg[4]__0 -pin RAM0|mem_i__10 I0 -pin RAM0|mem_reg[4]_i O
netloc RAM0|mem_reg[4]__0 1 1 1 4450 1746n
load net RAM0|mem_reg[5]__0 -attr @name mem_reg[5]__0 -pin RAM0|mem_i__9 I0 -pin RAM0|mem_reg[5]_i O
netloc RAM0|mem_reg[5]__0 1 1 1 4650 1836n
load net RAM0|mem_reg[6]__0 -attr @name mem_reg[6]__0 -pin RAM0|mem_i__8 I0 -pin RAM0|mem_reg[6]_i O
netloc RAM0|mem_reg[6]__0 1 1 1 N 1936
load net RAM0|mem_reg[7]__0 -attr @name mem_reg[7]__0 -pin RAM0|mem_i__7 I0 -pin RAM0|mem_reg[7]_i O
netloc RAM0|mem_reg[7]__0 1 1 1 4630 1816n
load net RAM0|mem_reg[8]__0 -attr @name mem_reg[8]__0 -pin RAM0|mem_i__6 I0 -pin RAM0|mem_reg[8]_i O
netloc RAM0|mem_reg[8]__0 1 1 1 4610 1696n
load net RAM0|mem_reg[9]__0 -attr @name mem_reg[9]__0 -pin RAM0|mem_i__5 I0 -pin RAM0|mem_reg[9]_i O
netloc RAM0|mem_reg[9]__0 1 1 1 4430 1576n
load net RAM0|p_0_in[0] -attr @rip Q[0] -attr @name p_0_in[0] -pin RAM0|mem_i__15 I15[0] -pin RAM0|mem_reg[0] Q[0]
load net RAM0|p_0_in[1] -attr @rip Q[1] -attr @name p_0_in[1] -pin RAM0|mem_i__15 I15[1] -pin RAM0|mem_reg[0] Q[1]
load net RAM0|p_0_in[2] -attr @rip Q[2] -attr @name p_0_in[2] -pin RAM0|mem_i__15 I15[2] -pin RAM0|mem_reg[0] Q[2]
load net RAM0|p_0_in[3] -attr @rip Q[3] -attr @name p_0_in[3] -pin RAM0|mem_i__15 I15[3] -pin RAM0|mem_reg[0] Q[3]
load net RAM0|p_0_in[4] -attr @rip Q[4] -attr @name p_0_in[4] -pin RAM0|mem_i__15 I15[4] -pin RAM0|mem_reg[0] Q[4]
load net RAM0|p_0_in[5] -attr @rip Q[5] -attr @name p_0_in[5] -pin RAM0|mem_i__15 I15[5] -pin RAM0|mem_reg[0] Q[5]
load net RAM0|p_0_in[6] -attr @rip Q[6] -attr @name p_0_in[6] -pin RAM0|mem_i__15 I15[6] -pin RAM0|mem_reg[0] Q[6]
load net RAM0|p_0_in[7] -attr @rip Q[7] -attr @name p_0_in[7] -pin RAM0|mem_i__15 I15[7] -pin RAM0|mem_reg[0] Q[7]
load net RAM0|p_10_in[0] -attr @rip Q[0] -attr @name p_10_in[0] -pin RAM0|mem_i__15 I5[0] -pin RAM0|mem_reg[10] Q[0]
load net RAM0|p_10_in[1] -attr @rip Q[1] -attr @name p_10_in[1] -pin RAM0|mem_i__15 I5[1] -pin RAM0|mem_reg[10] Q[1]
load net RAM0|p_10_in[2] -attr @rip Q[2] -attr @name p_10_in[2] -pin RAM0|mem_i__15 I5[2] -pin RAM0|mem_reg[10] Q[2]
load net RAM0|p_10_in[3] -attr @rip Q[3] -attr @name p_10_in[3] -pin RAM0|mem_i__15 I5[3] -pin RAM0|mem_reg[10] Q[3]
load net RAM0|p_10_in[4] -attr @rip Q[4] -attr @name p_10_in[4] -pin RAM0|mem_i__15 I5[4] -pin RAM0|mem_reg[10] Q[4]
load net RAM0|p_10_in[5] -attr @rip Q[5] -attr @name p_10_in[5] -pin RAM0|mem_i__15 I5[5] -pin RAM0|mem_reg[10] Q[5]
load net RAM0|p_10_in[6] -attr @rip Q[6] -attr @name p_10_in[6] -pin RAM0|mem_i__15 I5[6] -pin RAM0|mem_reg[10] Q[6]
load net RAM0|p_10_in[7] -attr @rip Q[7] -attr @name p_10_in[7] -pin RAM0|mem_i__15 I5[7] -pin RAM0|mem_reg[10] Q[7]
load net RAM0|p_11_in[0] -attr @rip Q[0] -attr @name p_11_in[0] -pin RAM0|mem_i__15 I4[0] -pin RAM0|mem_reg[11] Q[0]
load net RAM0|p_11_in[1] -attr @rip Q[1] -attr @name p_11_in[1] -pin RAM0|mem_i__15 I4[1] -pin RAM0|mem_reg[11] Q[1]
load net RAM0|p_11_in[2] -attr @rip Q[2] -attr @name p_11_in[2] -pin RAM0|mem_i__15 I4[2] -pin RAM0|mem_reg[11] Q[2]
load net RAM0|p_11_in[3] -attr @rip Q[3] -attr @name p_11_in[3] -pin RAM0|mem_i__15 I4[3] -pin RAM0|mem_reg[11] Q[3]
load net RAM0|p_11_in[4] -attr @rip Q[4] -attr @name p_11_in[4] -pin RAM0|mem_i__15 I4[4] -pin RAM0|mem_reg[11] Q[4]
load net RAM0|p_11_in[5] -attr @rip Q[5] -attr @name p_11_in[5] -pin RAM0|mem_i__15 I4[5] -pin RAM0|mem_reg[11] Q[5]
load net RAM0|p_11_in[6] -attr @rip Q[6] -attr @name p_11_in[6] -pin RAM0|mem_i__15 I4[6] -pin RAM0|mem_reg[11] Q[6]
load net RAM0|p_11_in[7] -attr @rip Q[7] -attr @name p_11_in[7] -pin RAM0|mem_i__15 I4[7] -pin RAM0|mem_reg[11] Q[7]
load net RAM0|p_12_in[0] -attr @rip Q[0] -attr @name p_12_in[0] -pin RAM0|mem_i__15 I3[0] -pin RAM0|mem_reg[12] Q[0]
load net RAM0|p_12_in[1] -attr @rip Q[1] -attr @name p_12_in[1] -pin RAM0|mem_i__15 I3[1] -pin RAM0|mem_reg[12] Q[1]
load net RAM0|p_12_in[2] -attr @rip Q[2] -attr @name p_12_in[2] -pin RAM0|mem_i__15 I3[2] -pin RAM0|mem_reg[12] Q[2]
load net RAM0|p_12_in[3] -attr @rip Q[3] -attr @name p_12_in[3] -pin RAM0|mem_i__15 I3[3] -pin RAM0|mem_reg[12] Q[3]
load net RAM0|p_12_in[4] -attr @rip Q[4] -attr @name p_12_in[4] -pin RAM0|mem_i__15 I3[4] -pin RAM0|mem_reg[12] Q[4]
load net RAM0|p_12_in[5] -attr @rip Q[5] -attr @name p_12_in[5] -pin RAM0|mem_i__15 I3[5] -pin RAM0|mem_reg[12] Q[5]
load net RAM0|p_12_in[6] -attr @rip Q[6] -attr @name p_12_in[6] -pin RAM0|mem_i__15 I3[6] -pin RAM0|mem_reg[12] Q[6]
load net RAM0|p_12_in[7] -attr @rip Q[7] -attr @name p_12_in[7] -pin RAM0|mem_i__15 I3[7] -pin RAM0|mem_reg[12] Q[7]
load net RAM0|p_13_in[0] -attr @rip Q[0] -attr @name p_13_in[0] -pin RAM0|mem_i__15 I2[0] -pin RAM0|mem_reg[13] Q[0]
load net RAM0|p_13_in[1] -attr @rip Q[1] -attr @name p_13_in[1] -pin RAM0|mem_i__15 I2[1] -pin RAM0|mem_reg[13] Q[1]
load net RAM0|p_13_in[2] -attr @rip Q[2] -attr @name p_13_in[2] -pin RAM0|mem_i__15 I2[2] -pin RAM0|mem_reg[13] Q[2]
load net RAM0|p_13_in[3] -attr @rip Q[3] -attr @name p_13_in[3] -pin RAM0|mem_i__15 I2[3] -pin RAM0|mem_reg[13] Q[3]
load net RAM0|p_13_in[4] -attr @rip Q[4] -attr @name p_13_in[4] -pin RAM0|mem_i__15 I2[4] -pin RAM0|mem_reg[13] Q[4]
load net RAM0|p_13_in[5] -attr @rip Q[5] -attr @name p_13_in[5] -pin RAM0|mem_i__15 I2[5] -pin RAM0|mem_reg[13] Q[5]
load net RAM0|p_13_in[6] -attr @rip Q[6] -attr @name p_13_in[6] -pin RAM0|mem_i__15 I2[6] -pin RAM0|mem_reg[13] Q[6]
load net RAM0|p_13_in[7] -attr @rip Q[7] -attr @name p_13_in[7] -pin RAM0|mem_i__15 I2[7] -pin RAM0|mem_reg[13] Q[7]
load net RAM0|p_14_in[0] -attr @rip Q[0] -attr @name p_14_in[0] -pin RAM0|mem_i__15 I1[0] -pin RAM0|mem_reg[14] Q[0]
load net RAM0|p_14_in[1] -attr @rip Q[1] -attr @name p_14_in[1] -pin RAM0|mem_i__15 I1[1] -pin RAM0|mem_reg[14] Q[1]
load net RAM0|p_14_in[2] -attr @rip Q[2] -attr @name p_14_in[2] -pin RAM0|mem_i__15 I1[2] -pin RAM0|mem_reg[14] Q[2]
load net RAM0|p_14_in[3] -attr @rip Q[3] -attr @name p_14_in[3] -pin RAM0|mem_i__15 I1[3] -pin RAM0|mem_reg[14] Q[3]
load net RAM0|p_14_in[4] -attr @rip Q[4] -attr @name p_14_in[4] -pin RAM0|mem_i__15 I1[4] -pin RAM0|mem_reg[14] Q[4]
load net RAM0|p_14_in[5] -attr @rip Q[5] -attr @name p_14_in[5] -pin RAM0|mem_i__15 I1[5] -pin RAM0|mem_reg[14] Q[5]
load net RAM0|p_14_in[6] -attr @rip Q[6] -attr @name p_14_in[6] -pin RAM0|mem_i__15 I1[6] -pin RAM0|mem_reg[14] Q[6]
load net RAM0|p_14_in[7] -attr @rip Q[7] -attr @name p_14_in[7] -pin RAM0|mem_i__15 I1[7] -pin RAM0|mem_reg[14] Q[7]
load net RAM0|p_15_in[0] -attr @rip Q[0] -attr @name p_15_in[0] -pin RAM0|mem_i__15 I0[0] -pin RAM0|mem_reg[15] Q[0]
load net RAM0|p_15_in[1] -attr @rip Q[1] -attr @name p_15_in[1] -pin RAM0|mem_i__15 I0[1] -pin RAM0|mem_reg[15] Q[1]
load net RAM0|p_15_in[2] -attr @rip Q[2] -attr @name p_15_in[2] -pin RAM0|mem_i__15 I0[2] -pin RAM0|mem_reg[15] Q[2]
load net RAM0|p_15_in[3] -attr @rip Q[3] -attr @name p_15_in[3] -pin RAM0|mem_i__15 I0[3] -pin RAM0|mem_reg[15] Q[3]
load net RAM0|p_15_in[4] -attr @rip Q[4] -attr @name p_15_in[4] -pin RAM0|mem_i__15 I0[4] -pin RAM0|mem_reg[15] Q[4]
load net RAM0|p_15_in[5] -attr @rip Q[5] -attr @name p_15_in[5] -pin RAM0|mem_i__15 I0[5] -pin RAM0|mem_reg[15] Q[5]
load net RAM0|p_15_in[6] -attr @rip Q[6] -attr @name p_15_in[6] -pin RAM0|mem_i__15 I0[6] -pin RAM0|mem_reg[15] Q[6]
load net RAM0|p_15_in[7] -attr @rip Q[7] -attr @name p_15_in[7] -pin RAM0|mem_i__15 I0[7] -pin RAM0|mem_reg[15] Q[7]
load net RAM0|p_1_in[0] -attr @rip Q[0] -attr @name p_1_in[0] -pin RAM0|mem_i__15 I14[0] -pin RAM0|mem_reg[1] Q[0]
load net RAM0|p_1_in[1] -attr @rip Q[1] -attr @name p_1_in[1] -pin RAM0|mem_i__15 I14[1] -pin RAM0|mem_reg[1] Q[1]
load net RAM0|p_1_in[2] -attr @rip Q[2] -attr @name p_1_in[2] -pin RAM0|mem_i__15 I14[2] -pin RAM0|mem_reg[1] Q[2]
load net RAM0|p_1_in[3] -attr @rip Q[3] -attr @name p_1_in[3] -pin RAM0|mem_i__15 I14[3] -pin RAM0|mem_reg[1] Q[3]
load net RAM0|p_1_in[4] -attr @rip Q[4] -attr @name p_1_in[4] -pin RAM0|mem_i__15 I14[4] -pin RAM0|mem_reg[1] Q[4]
load net RAM0|p_1_in[5] -attr @rip Q[5] -attr @name p_1_in[5] -pin RAM0|mem_i__15 I14[5] -pin RAM0|mem_reg[1] Q[5]
load net RAM0|p_1_in[6] -attr @rip Q[6] -attr @name p_1_in[6] -pin RAM0|mem_i__15 I14[6] -pin RAM0|mem_reg[1] Q[6]
load net RAM0|p_1_in[7] -attr @rip Q[7] -attr @name p_1_in[7] -pin RAM0|mem_i__15 I14[7] -pin RAM0|mem_reg[1] Q[7]
load net RAM0|p_2_in[0] -attr @rip Q[0] -attr @name p_2_in[0] -pin RAM0|mem_i__15 I13[0] -pin RAM0|mem_reg[2] Q[0]
load net RAM0|p_2_in[1] -attr @rip Q[1] -attr @name p_2_in[1] -pin RAM0|mem_i__15 I13[1] -pin RAM0|mem_reg[2] Q[1]
load net RAM0|p_2_in[2] -attr @rip Q[2] -attr @name p_2_in[2] -pin RAM0|mem_i__15 I13[2] -pin RAM0|mem_reg[2] Q[2]
load net RAM0|p_2_in[3] -attr @rip Q[3] -attr @name p_2_in[3] -pin RAM0|mem_i__15 I13[3] -pin RAM0|mem_reg[2] Q[3]
load net RAM0|p_2_in[4] -attr @rip Q[4] -attr @name p_2_in[4] -pin RAM0|mem_i__15 I13[4] -pin RAM0|mem_reg[2] Q[4]
load net RAM0|p_2_in[5] -attr @rip Q[5] -attr @name p_2_in[5] -pin RAM0|mem_i__15 I13[5] -pin RAM0|mem_reg[2] Q[5]
load net RAM0|p_2_in[6] -attr @rip Q[6] -attr @name p_2_in[6] -pin RAM0|mem_i__15 I13[6] -pin RAM0|mem_reg[2] Q[6]
load net RAM0|p_2_in[7] -attr @rip Q[7] -attr @name p_2_in[7] -pin RAM0|mem_i__15 I13[7] -pin RAM0|mem_reg[2] Q[7]
load net RAM0|p_3_in[0] -attr @rip Q[0] -attr @name p_3_in[0] -pin RAM0|mem_i__15 I12[0] -pin RAM0|mem_reg[3] Q[0]
load net RAM0|p_3_in[1] -attr @rip Q[1] -attr @name p_3_in[1] -pin RAM0|mem_i__15 I12[1] -pin RAM0|mem_reg[3] Q[1]
load net RAM0|p_3_in[2] -attr @rip Q[2] -attr @name p_3_in[2] -pin RAM0|mem_i__15 I12[2] -pin RAM0|mem_reg[3] Q[2]
load net RAM0|p_3_in[3] -attr @rip Q[3] -attr @name p_3_in[3] -pin RAM0|mem_i__15 I12[3] -pin RAM0|mem_reg[3] Q[3]
load net RAM0|p_3_in[4] -attr @rip Q[4] -attr @name p_3_in[4] -pin RAM0|mem_i__15 I12[4] -pin RAM0|mem_reg[3] Q[4]
load net RAM0|p_3_in[5] -attr @rip Q[5] -attr @name p_3_in[5] -pin RAM0|mem_i__15 I12[5] -pin RAM0|mem_reg[3] Q[5]
load net RAM0|p_3_in[6] -attr @rip Q[6] -attr @name p_3_in[6] -pin RAM0|mem_i__15 I12[6] -pin RAM0|mem_reg[3] Q[6]
load net RAM0|p_3_in[7] -attr @rip Q[7] -attr @name p_3_in[7] -pin RAM0|mem_i__15 I12[7] -pin RAM0|mem_reg[3] Q[7]
load net RAM0|p_4_in[0] -attr @rip Q[0] -attr @name p_4_in[0] -pin RAM0|mem_i__15 I11[0] -pin RAM0|mem_reg[4] Q[0]
load net RAM0|p_4_in[1] -attr @rip Q[1] -attr @name p_4_in[1] -pin RAM0|mem_i__15 I11[1] -pin RAM0|mem_reg[4] Q[1]
load net RAM0|p_4_in[2] -attr @rip Q[2] -attr @name p_4_in[2] -pin RAM0|mem_i__15 I11[2] -pin RAM0|mem_reg[4] Q[2]
load net RAM0|p_4_in[3] -attr @rip Q[3] -attr @name p_4_in[3] -pin RAM0|mem_i__15 I11[3] -pin RAM0|mem_reg[4] Q[3]
load net RAM0|p_4_in[4] -attr @rip Q[4] -attr @name p_4_in[4] -pin RAM0|mem_i__15 I11[4] -pin RAM0|mem_reg[4] Q[4]
load net RAM0|p_4_in[5] -attr @rip Q[5] -attr @name p_4_in[5] -pin RAM0|mem_i__15 I11[5] -pin RAM0|mem_reg[4] Q[5]
load net RAM0|p_4_in[6] -attr @rip Q[6] -attr @name p_4_in[6] -pin RAM0|mem_i__15 I11[6] -pin RAM0|mem_reg[4] Q[6]
load net RAM0|p_4_in[7] -attr @rip Q[7] -attr @name p_4_in[7] -pin RAM0|mem_i__15 I11[7] -pin RAM0|mem_reg[4] Q[7]
load net RAM0|p_5_in[0] -attr @rip Q[0] -attr @name p_5_in[0] -pin RAM0|mem_i__15 I10[0] -pin RAM0|mem_reg[5] Q[0]
load net RAM0|p_5_in[1] -attr @rip Q[1] -attr @name p_5_in[1] -pin RAM0|mem_i__15 I10[1] -pin RAM0|mem_reg[5] Q[1]
load net RAM0|p_5_in[2] -attr @rip Q[2] -attr @name p_5_in[2] -pin RAM0|mem_i__15 I10[2] -pin RAM0|mem_reg[5] Q[2]
load net RAM0|p_5_in[3] -attr @rip Q[3] -attr @name p_5_in[3] -pin RAM0|mem_i__15 I10[3] -pin RAM0|mem_reg[5] Q[3]
load net RAM0|p_5_in[4] -attr @rip Q[4] -attr @name p_5_in[4] -pin RAM0|mem_i__15 I10[4] -pin RAM0|mem_reg[5] Q[4]
load net RAM0|p_5_in[5] -attr @rip Q[5] -attr @name p_5_in[5] -pin RAM0|mem_i__15 I10[5] -pin RAM0|mem_reg[5] Q[5]
load net RAM0|p_5_in[6] -attr @rip Q[6] -attr @name p_5_in[6] -pin RAM0|mem_i__15 I10[6] -pin RAM0|mem_reg[5] Q[6]
load net RAM0|p_5_in[7] -attr @rip Q[7] -attr @name p_5_in[7] -pin RAM0|mem_i__15 I10[7] -pin RAM0|mem_reg[5] Q[7]
load net RAM0|p_6_in[0] -attr @rip Q[0] -attr @name p_6_in[0] -pin RAM0|mem_i__15 I9[0] -pin RAM0|mem_reg[6] Q[0]
load net RAM0|p_6_in[1] -attr @rip Q[1] -attr @name p_6_in[1] -pin RAM0|mem_i__15 I9[1] -pin RAM0|mem_reg[6] Q[1]
load net RAM0|p_6_in[2] -attr @rip Q[2] -attr @name p_6_in[2] -pin RAM0|mem_i__15 I9[2] -pin RAM0|mem_reg[6] Q[2]
load net RAM0|p_6_in[3] -attr @rip Q[3] -attr @name p_6_in[3] -pin RAM0|mem_i__15 I9[3] -pin RAM0|mem_reg[6] Q[3]
load net RAM0|p_6_in[4] -attr @rip Q[4] -attr @name p_6_in[4] -pin RAM0|mem_i__15 I9[4] -pin RAM0|mem_reg[6] Q[4]
load net RAM0|p_6_in[5] -attr @rip Q[5] -attr @name p_6_in[5] -pin RAM0|mem_i__15 I9[5] -pin RAM0|mem_reg[6] Q[5]
load net RAM0|p_6_in[6] -attr @rip Q[6] -attr @name p_6_in[6] -pin RAM0|mem_i__15 I9[6] -pin RAM0|mem_reg[6] Q[6]
load net RAM0|p_6_in[7] -attr @rip Q[7] -attr @name p_6_in[7] -pin RAM0|mem_i__15 I9[7] -pin RAM0|mem_reg[6] Q[7]
load net RAM0|p_7_in[0] -attr @rip Q[0] -attr @name p_7_in[0] -pin RAM0|mem_i__15 I8[0] -pin RAM0|mem_reg[7] Q[0]
load net RAM0|p_7_in[1] -attr @rip Q[1] -attr @name p_7_in[1] -pin RAM0|mem_i__15 I8[1] -pin RAM0|mem_reg[7] Q[1]
load net RAM0|p_7_in[2] -attr @rip Q[2] -attr @name p_7_in[2] -pin RAM0|mem_i__15 I8[2] -pin RAM0|mem_reg[7] Q[2]
load net RAM0|p_7_in[3] -attr @rip Q[3] -attr @name p_7_in[3] -pin RAM0|mem_i__15 I8[3] -pin RAM0|mem_reg[7] Q[3]
load net RAM0|p_7_in[4] -attr @rip Q[4] -attr @name p_7_in[4] -pin RAM0|mem_i__15 I8[4] -pin RAM0|mem_reg[7] Q[4]
load net RAM0|p_7_in[5] -attr @rip Q[5] -attr @name p_7_in[5] -pin RAM0|mem_i__15 I8[5] -pin RAM0|mem_reg[7] Q[5]
load net RAM0|p_7_in[6] -attr @rip Q[6] -attr @name p_7_in[6] -pin RAM0|mem_i__15 I8[6] -pin RAM0|mem_reg[7] Q[6]
load net RAM0|p_7_in[7] -attr @rip Q[7] -attr @name p_7_in[7] -pin RAM0|mem_i__15 I8[7] -pin RAM0|mem_reg[7] Q[7]
load net RAM0|p_8_in[0] -attr @rip Q[0] -attr @name p_8_in[0] -pin RAM0|mem_i__15 I7[0] -pin RAM0|mem_reg[8] Q[0]
load net RAM0|p_8_in[1] -attr @rip Q[1] -attr @name p_8_in[1] -pin RAM0|mem_i__15 I7[1] -pin RAM0|mem_reg[8] Q[1]
load net RAM0|p_8_in[2] -attr @rip Q[2] -attr @name p_8_in[2] -pin RAM0|mem_i__15 I7[2] -pin RAM0|mem_reg[8] Q[2]
load net RAM0|p_8_in[3] -attr @rip Q[3] -attr @name p_8_in[3] -pin RAM0|mem_i__15 I7[3] -pin RAM0|mem_reg[8] Q[3]
load net RAM0|p_8_in[4] -attr @rip Q[4] -attr @name p_8_in[4] -pin RAM0|mem_i__15 I7[4] -pin RAM0|mem_reg[8] Q[4]
load net RAM0|p_8_in[5] -attr @rip Q[5] -attr @name p_8_in[5] -pin RAM0|mem_i__15 I7[5] -pin RAM0|mem_reg[8] Q[5]
load net RAM0|p_8_in[6] -attr @rip Q[6] -attr @name p_8_in[6] -pin RAM0|mem_i__15 I7[6] -pin RAM0|mem_reg[8] Q[6]
load net RAM0|p_8_in[7] -attr @rip Q[7] -attr @name p_8_in[7] -pin RAM0|mem_i__15 I7[7] -pin RAM0|mem_reg[8] Q[7]
load net RAM0|p_9_in[0] -attr @rip Q[0] -attr @name p_9_in[0] -pin RAM0|mem_i__15 I6[0] -pin RAM0|mem_reg[9] Q[0]
load net RAM0|p_9_in[1] -attr @rip Q[1] -attr @name p_9_in[1] -pin RAM0|mem_i__15 I6[1] -pin RAM0|mem_reg[9] Q[1]
load net RAM0|p_9_in[2] -attr @rip Q[2] -attr @name p_9_in[2] -pin RAM0|mem_i__15 I6[2] -pin RAM0|mem_reg[9] Q[2]
load net RAM0|p_9_in[3] -attr @rip Q[3] -attr @name p_9_in[3] -pin RAM0|mem_i__15 I6[3] -pin RAM0|mem_reg[9] Q[3]
load net RAM0|p_9_in[4] -attr @rip Q[4] -attr @name p_9_in[4] -pin RAM0|mem_i__15 I6[4] -pin RAM0|mem_reg[9] Q[4]
load net RAM0|p_9_in[5] -attr @rip Q[5] -attr @name p_9_in[5] -pin RAM0|mem_i__15 I6[5] -pin RAM0|mem_reg[9] Q[5]
load net RAM0|p_9_in[6] -attr @rip Q[6] -attr @name p_9_in[6] -pin RAM0|mem_i__15 I6[6] -pin RAM0|mem_reg[9] Q[6]
load net RAM0|p_9_in[7] -attr @rip Q[7] -attr @name p_9_in[7] -pin RAM0|mem_i__15 I6[7] -pin RAM0|mem_reg[9] Q[7]
load net RAM0|write -attr @name write -hierPin RAM0 write -pin RAM0|mem_i S -pin RAM0|mem_i__0 S -pin RAM0|mem_i__1 S -pin RAM0|mem_i__10 S -pin RAM0|mem_i__11 S -pin RAM0|mem_i__12 S -pin RAM0|mem_i__13 S -pin RAM0|mem_i__14 S -pin RAM0|mem_i__2 S -pin RAM0|mem_i__3 S -pin RAM0|mem_i__4 S -pin RAM0|mem_i__5 S -pin RAM0|mem_i__6 S -pin RAM0|mem_i__7 S -pin RAM0|mem_i__8 S -pin RAM0|mem_i__9 S
netloc RAM0|write 1 0 2 N 2526 4670
load net CTRL_UNIT|<const0> -ground -attr @rip(#000000) 1 -attr @name <const0> -pin CTRL_UNIT|count20_i__0 I1[1] -pin CTRL_UNIT|en_reg[7:0] D[7] -pin CTRL_UNIT|en_reg[7:0] D[6] -pin CTRL_UNIT|en_reg[7:0] D[5] -pin CTRL_UNIT|mem_write_en_reg D -pin CTRL_UNIT|opCode_reg[3:0] D[3]
load net CTRL_UNIT|<const1> -power -attr @name <const1> -pin CTRL_UNIT|count20_i I1 -pin CTRL_UNIT|count20_i__0 I1[2] -pin CTRL_UNIT|count20_i__0 I1[0] -pin CTRL_UNIT|en_i__1 I0[7] -pin CTRL_UNIT|en_i__1 I0[6] -pin CTRL_UNIT|en_i__1 I0[5] -pin CTRL_UNIT|en_i__1 I0[4] -pin CTRL_UNIT|en_i__1 I0[3] -pin CTRL_UNIT|en_i__1 I0[2] -pin CTRL_UNIT|en_i__1 I0[1] -pin CTRL_UNIT|en_i__1 I0[0] -pin CTRL_UNIT|en_i__1 I1[7] -pin CTRL_UNIT|en_i__1 I1[6] -pin CTRL_UNIT|en_i__1 I1[5] -pin CTRL_UNIT|load_i__1 I0[3] -pin CTRL_UNIT|load_i__1 I0[2] -pin CTRL_UNIT|load_i__1 I0[1] -pin CTRL_UNIT|load_i__1 I0[0] -pin CTRL_UNIT|opCode_i__1 I0[3] -pin CTRL_UNIT|opCode_i__1 I0[2] -pin CTRL_UNIT|opCode_i__1 I0[1] -pin CTRL_UNIT|opCode_i__1 I0[0] -pin CTRL_UNIT|opCode_i__1 I1[3]
load net CTRL_UNIT|addr_en -attr @name addr_en -hierPin CTRL_UNIT addr_en -pin CTRL_UNIT|addr_en_reg Q
netloc CTRL_UNIT|addr_en 1 6 1 N 468
load net CTRL_UNIT|addr_en_i__0_n_0 -attr @name addr_en_i__0_n_0 -pin CTRL_UNIT|addr_en_i__0 O -pin CTRL_UNIT|addr_en_reg SET
netloc CTRL_UNIT|addr_en_i__0_n_0 1 5 1 2290 318n
load net CTRL_UNIT|addr_en_i__1_n_0 -attr @name addr_en_i__1_n_0 -pin CTRL_UNIT|addr_en_i__1 O -pin CTRL_UNIT|addr_en_reg RST
netloc CTRL_UNIT|addr_en_i__1_n_0 1 5 1 N 408
load net CTRL_UNIT|addr_en_i_n_0 -attr @name addr_en_i_n_0 -pin CTRL_UNIT|addr_en_i O -pin CTRL_UNIT|addr_en_reg D
netloc CTRL_UNIT|addr_en_i_n_0 1 5 1 2250 478n
load net CTRL_UNIT|case_sel[0] -attr @rip(#000000) 0 -attr @name case_sel[0] -pin CTRL_UNIT|addr_en_i A[0] -pin CTRL_UNIT|addr_en_i__0 A[0] -pin CTRL_UNIT|addr_en_i__1 A[0] -pin CTRL_UNIT|count20_i I0[0] -pin CTRL_UNIT|count2_reg[2:0] Q[0] -pin CTRL_UNIT|count_en_i A[0] -pin CTRL_UNIT|count_en_i__0 A[0] -pin CTRL_UNIT|en_i A[0] -pin CTRL_UNIT|en_i__0 A[0] -pin CTRL_UNIT|en_i__1 S[0] -pin CTRL_UNIT|en_i__2 A[0] -pin CTRL_UNIT|load_i A[0] -pin CTRL_UNIT|load_i__0 A[0] -pin CTRL_UNIT|load_i__1 S[0] -pin CTRL_UNIT|load_i__2 A[0] -pin CTRL_UNIT|opCode_i A[0] -pin CTRL_UNIT|opCode_i__0 A[0] -pin CTRL_UNIT|opCode_i__1 S[0]
load net CTRL_UNIT|case_sel[1] -attr @rip(#000000) 1 -attr @name case_sel[1] -pin CTRL_UNIT|addr_en_i A[1] -pin CTRL_UNIT|addr_en_i__0 A[1] -pin CTRL_UNIT|addr_en_i__1 A[1] -pin CTRL_UNIT|count20_i I0[1] -pin CTRL_UNIT|count2_reg[2:0] Q[1] -pin CTRL_UNIT|count_en_i A[1] -pin CTRL_UNIT|count_en_i__0 A[1] -pin CTRL_UNIT|en_i A[1] -pin CTRL_UNIT|en_i__0 A[1] -pin CTRL_UNIT|en_i__1 S[1] -pin CTRL_UNIT|en_i__2 A[1] -pin CTRL_UNIT|load_i A[1] -pin CTRL_UNIT|load_i__0 A[1] -pin CTRL_UNIT|load_i__1 S[1] -pin CTRL_UNIT|load_i__2 A[1] -pin CTRL_UNIT|opCode_i A[1] -pin CTRL_UNIT|opCode_i__0 A[1] -pin CTRL_UNIT|opCode_i__1 S[1]
load net CTRL_UNIT|case_sel[2] -attr @rip(#000000) 2 -attr @name case_sel[2] -pin CTRL_UNIT|addr_en_i A[2] -pin CTRL_UNIT|addr_en_i__0 A[2] -pin CTRL_UNIT|addr_en_i__1 A[2] -pin CTRL_UNIT|count20_i I0[2] -pin CTRL_UNIT|count2_reg[2:0] Q[2] -pin CTRL_UNIT|count_en_i A[2] -pin CTRL_UNIT|count_en_i__0 A[2] -pin CTRL_UNIT|en_i A[2] -pin CTRL_UNIT|en_i__0 A[2] -pin CTRL_UNIT|en_i__1 S[2] -pin CTRL_UNIT|en_i__2 A[2] -pin CTRL_UNIT|load_i A[2] -pin CTRL_UNIT|load_i__0 A[2] -pin CTRL_UNIT|load_i__1 S[2] -pin CTRL_UNIT|load_i__2 A[2] -pin CTRL_UNIT|opCode_i A[2] -pin CTRL_UNIT|opCode_i__0 A[2] -pin CTRL_UNIT|opCode_i__1 S[2]
load net CTRL_UNIT|clk -attr @name clk -hierPin CTRL_UNIT clk -pin CTRL_UNIT|addr_en_reg C -pin CTRL_UNIT|count2_reg[2:0] C -pin CTRL_UNIT|count_en_reg C -pin CTRL_UNIT|en_reg[7:0] C -pin CTRL_UNIT|load_reg[3:0] C -pin CTRL_UNIT|mem_write_en_reg C -pin CTRL_UNIT|opCode_reg[3:0] C
netloc CTRL_UNIT|clk 1 0 6 NJ 978 NJ 978 1570 1038 NJ 1038 NJ 1038 2270
load net CTRL_UNIT|count20 -attr @name count20 -pin CTRL_UNIT|count20_i__0 O -pin CTRL_UNIT|count2_reg[2:0] RST
netloc CTRL_UNIT|count20 1 2 1 NJ 1128
load net CTRL_UNIT|count20_i_n_0 -attr @rip(#000000) O[2] -attr @name count20_i_n_0 -pin CTRL_UNIT|count20_i O[2] -pin CTRL_UNIT|count20_i__0 I0[2] -pin CTRL_UNIT|count2_reg[2:0] D[2]
load net CTRL_UNIT|count20_i_n_1 -attr @rip(#000000) O[1] -attr @name count20_i_n_1 -pin CTRL_UNIT|count20_i O[1] -pin CTRL_UNIT|count20_i__0 I0[1] -pin CTRL_UNIT|count2_reg[2:0] D[1]
load net CTRL_UNIT|count20_i_n_2 -attr @rip(#000000) O[0] -attr @name count20_i_n_2 -pin CTRL_UNIT|count20_i O[0] -pin CTRL_UNIT|count20_i__0 I0[0] -pin CTRL_UNIT|count2_reg[2:0] D[0]
load net CTRL_UNIT|count_en -attr @name count_en -hierPin CTRL_UNIT count_en -pin CTRL_UNIT|count_en_reg Q
netloc CTRL_UNIT|count_en 1 6 1 N 668
load net CTRL_UNIT|count_en_i__0_n_0 -attr @name count_en_i__0_n_0 -pin CTRL_UNIT|count_en_i__0 O -pin CTRL_UNIT|count_en_reg RST
netloc CTRL_UNIT|count_en_i__0_n_0 1 5 1 2250 588n
load net CTRL_UNIT|count_en_i_n_0 -attr @name count_en_i_n_0 -pin CTRL_UNIT|count_en_i O -pin CTRL_UNIT|count_en_reg D
netloc CTRL_UNIT|count_en_i_n_0 1 5 1 N 678
load net CTRL_UNIT|en[0] -attr @rip(#000000) 0 -attr @name en[0] -hierPin CTRL_UNIT en[0] -pin CTRL_UNIT|en_reg[7:0] Q[0]
load net CTRL_UNIT|en[1] -attr @rip(#000000) 1 -attr @name en[1] -hierPin CTRL_UNIT en[1] -pin CTRL_UNIT|en_reg[7:0] Q[1]
load net CTRL_UNIT|en[2] -attr @rip(#000000) 2 -attr @name en[2] -hierPin CTRL_UNIT en[2] -pin CTRL_UNIT|en_reg[7:0] Q[2]
load net CTRL_UNIT|en[3] -attr @rip(#000000) 3 -attr @name en[3] -hierPin CTRL_UNIT en[3] -pin CTRL_UNIT|en_reg[7:0] Q[3]
load net CTRL_UNIT|en[4] -attr @rip(#000000) 4 -attr @name en[4] -hierPin CTRL_UNIT en[4] -pin CTRL_UNIT|en_reg[7:0] Q[4]
load net CTRL_UNIT|en[5] -attr @rip(#000000) 5 -attr @name en[5] -hierPin CTRL_UNIT en[5] -pin CTRL_UNIT|en_reg[7:0] Q[5]
load net CTRL_UNIT|en[6] -attr @rip(#000000) 6 -attr @name en[6] -hierPin CTRL_UNIT en[6] -pin CTRL_UNIT|en_reg[7:0] Q[6]
load net CTRL_UNIT|en[7] -attr @rip(#000000) 7 -attr @name en[7] -hierPin CTRL_UNIT en[7] -pin CTRL_UNIT|en_reg[7:0] Q[7]
load net CTRL_UNIT|en_i__0_n_0 -attr @rip(#000000) O[4] -attr @name en_i__0_n_0 -pin CTRL_UNIT|en_i__0 O[4] -pin CTRL_UNIT|en_i__1 I1[4]
load net CTRL_UNIT|en_i__0_n_1 -attr @rip(#000000) O[3] -attr @name en_i__0_n_1 -pin CTRL_UNIT|en_i__0 O[3] -pin CTRL_UNIT|en_i__1 I1[3]
load net CTRL_UNIT|en_i__0_n_2 -attr @rip(#000000) O[2] -attr @name en_i__0_n_2 -pin CTRL_UNIT|en_i__0 O[2] -pin CTRL_UNIT|en_i__1 I1[2]
load net CTRL_UNIT|en_i__0_n_3 -attr @rip(#000000) O[1] -attr @name en_i__0_n_3 -pin CTRL_UNIT|en_i__0 O[1] -pin CTRL_UNIT|en_i__1 I1[1]
load net CTRL_UNIT|en_i__0_n_4 -attr @rip(#000000) O[0] -attr @name en_i__0_n_4 -pin CTRL_UNIT|en_i__0 O[0] -pin CTRL_UNIT|en_i__1 I1[0]
load net CTRL_UNIT|en_i__1_n_0 -attr @rip(#000000) O[7] -attr @name en_i__1_n_0 -pin CTRL_UNIT|en_i__1 O[7] -pin CTRL_UNIT|en_reg[7:0] RST[7]
load net CTRL_UNIT|en_i__1_n_1 -attr @rip(#000000) O[6] -attr @name en_i__1_n_1 -pin CTRL_UNIT|en_i__1 O[6] -pin CTRL_UNIT|en_reg[7:0] RST[6]
load net CTRL_UNIT|en_i__1_n_2 -attr @rip(#000000) O[5] -attr @name en_i__1_n_2 -pin CTRL_UNIT|en_i__1 O[5] -pin CTRL_UNIT|en_reg[7:0] RST[5]
load net CTRL_UNIT|en_i__1_n_3 -attr @rip(#000000) O[4] -attr @name en_i__1_n_3 -pin CTRL_UNIT|en_i__1 O[4] -pin CTRL_UNIT|en_reg[7:0] RST[4]
load net CTRL_UNIT|en_i__1_n_4 -attr @rip(#000000) O[3] -attr @name en_i__1_n_4 -pin CTRL_UNIT|en_i__1 O[3] -pin CTRL_UNIT|en_reg[7:0] RST[3]
load net CTRL_UNIT|en_i__1_n_5 -attr @rip(#000000) O[2] -attr @name en_i__1_n_5 -pin CTRL_UNIT|en_i__1 O[2] -pin CTRL_UNIT|en_reg[7:0] SET[2]
load net CTRL_UNIT|en_i__1_n_6 -attr @rip(#000000) O[1] -attr @name en_i__1_n_6 -pin CTRL_UNIT|en_i__1 O[1] -pin CTRL_UNIT|en_reg[7:0] RST[1]
load net CTRL_UNIT|en_i__1_n_7 -attr @rip(#000000) O[0] -attr @name en_i__1_n_7 -pin CTRL_UNIT|en_i__1 O[0] -pin CTRL_UNIT|en_reg[7:0] RST[0]
load net CTRL_UNIT|en_i_n_0 -attr @rip(#000000) O[4] -attr @name en_i_n_0 -pin CTRL_UNIT|en_i O[4] -pin CTRL_UNIT|en_reg[7:0] D[4]
load net CTRL_UNIT|en_i_n_1 -attr @rip(#000000) O[3] -attr @name en_i_n_1 -pin CTRL_UNIT|en_i O[3] -pin CTRL_UNIT|en_reg[7:0] D[3]
load net CTRL_UNIT|en_i_n_2 -attr @rip(#000000) O[2] -attr @name en_i_n_2 -pin CTRL_UNIT|en_i O[2] -pin CTRL_UNIT|en_reg[7:0] D[2]
load net CTRL_UNIT|en_i_n_3 -attr @rip(#000000) O[1] -attr @name en_i_n_3 -pin CTRL_UNIT|en_i O[1] -pin CTRL_UNIT|en_reg[7:0] D[1]
load net CTRL_UNIT|en_i_n_4 -attr @rip(#000000) O[0] -attr @name en_i_n_4 -pin CTRL_UNIT|en_i O[0] -pin CTRL_UNIT|en_reg[7:0] D[0]
load net CTRL_UNIT|instr[0] -attr @rip(#000000) instr[0] -attr @name instr[0] -hierPin CTRL_UNIT instr[0] -pin CTRL_UNIT|addr_en_i A[3] -pin CTRL_UNIT|en_i A[3] -pin CTRL_UNIT|load_i A[3] -pin CTRL_UNIT|opCode_i A[3]
load net CTRL_UNIT|instr[1] -attr @rip(#000000) instr[1] -attr @name instr[1] -hierPin CTRL_UNIT instr[1] -pin CTRL_UNIT|addr_en_i A[4] -pin CTRL_UNIT|en_i A[4] -pin CTRL_UNIT|load_i A[4] -pin CTRL_UNIT|opCode_i A[4]
load net CTRL_UNIT|instr[2] -attr @rip(#000000) instr[2] -attr @name instr[2] -hierPin CTRL_UNIT instr[2] -pin CTRL_UNIT|addr_en_i A[5] -pin CTRL_UNIT|en_i A[5] -pin CTRL_UNIT|load_i A[5] -pin CTRL_UNIT|opCode_i A[5]
load net CTRL_UNIT|instr[3] -attr @rip(#000000) instr[3] -attr @name instr[3] -hierPin CTRL_UNIT instr[3] -pin CTRL_UNIT|addr_en_i A[6] -pin CTRL_UNIT|en_i A[6] -pin CTRL_UNIT|load_i A[6] -pin CTRL_UNIT|opCode_i A[6]
load net CTRL_UNIT|load[0] -attr @rip(#000000) 0 -attr @name load[0] -hierPin CTRL_UNIT load[0] -pin CTRL_UNIT|load_reg[3:0] Q[0]
load net CTRL_UNIT|load[1] -attr @rip(#000000) 1 -attr @name load[1] -hierPin CTRL_UNIT load[1] -pin CTRL_UNIT|load_reg[3:0] Q[1]
load net CTRL_UNIT|load[2] -attr @rip(#000000) 2 -attr @name load[2] -hierPin CTRL_UNIT load[2] -pin CTRL_UNIT|load_reg[3:0] Q[2]
load net CTRL_UNIT|load[3] -attr @rip(#000000) 3 -attr @name load[3] -hierPin CTRL_UNIT load[3] -pin CTRL_UNIT|load_reg[3:0] Q[3]
load net CTRL_UNIT|load_i__0_n_0 -attr @rip(#000000) O[3] -attr @name load_i__0_n_0 -pin CTRL_UNIT|load_i__0 O[3] -pin CTRL_UNIT|load_i__1 I1[3]
load net CTRL_UNIT|load_i__0_n_1 -attr @rip(#000000) O[2] -attr @name load_i__0_n_1 -pin CTRL_UNIT|load_i__0 O[2] -pin CTRL_UNIT|load_i__1 I1[2]
load net CTRL_UNIT|load_i__0_n_2 -attr @rip(#000000) O[1] -attr @name load_i__0_n_2 -pin CTRL_UNIT|load_i__0 O[1] -pin CTRL_UNIT|load_i__1 I1[1]
load net CTRL_UNIT|load_i__0_n_3 -attr @rip(#000000) O[0] -attr @name load_i__0_n_3 -pin CTRL_UNIT|load_i__0 O[0] -pin CTRL_UNIT|load_i__1 I1[0]
load net CTRL_UNIT|load_i__1_n_0 -attr @rip(#000000) O[3] -attr @name load_i__1_n_0 -pin CTRL_UNIT|load_i__1 O[3] -pin CTRL_UNIT|load_reg[3:0] RST[3]
load net CTRL_UNIT|load_i__1_n_1 -attr @rip(#000000) O[2] -attr @name load_i__1_n_1 -pin CTRL_UNIT|load_i__1 O[2] -pin CTRL_UNIT|load_reg[3:0] RST[2]
load net CTRL_UNIT|load_i__1_n_2 -attr @rip(#000000) O[1] -attr @name load_i__1_n_2 -pin CTRL_UNIT|load_i__1 O[1] -pin CTRL_UNIT|load_reg[3:0] RST[1]
load net CTRL_UNIT|load_i__1_n_3 -attr @rip(#000000) O[0] -attr @name load_i__1_n_3 -pin CTRL_UNIT|load_i__1 O[0] -pin CTRL_UNIT|load_reg[3:0] RST[0]
load net CTRL_UNIT|load_i__2_n_0 -attr @rip(#000000) O[3] -attr @name load_i__2_n_0 -pin CTRL_UNIT|load_i__2 O[3]
load net CTRL_UNIT|load_i__2_n_1 -attr @rip(#000000) O[2] -attr @name load_i__2_n_1 -pin CTRL_UNIT|load_i__2 O[2] -pin CTRL_UNIT|load_reg[3:0] SET[2]
load net CTRL_UNIT|load_i__2_n_2 -attr @rip(#000000) O[1] -attr @name load_i__2_n_2 -pin CTRL_UNIT|load_i__2 O[1]
load net CTRL_UNIT|load_i__2_n_3 -attr @rip(#000000) O[0] -attr @name load_i__2_n_3 -pin CTRL_UNIT|load_i__2 O[0]
load net CTRL_UNIT|load_i_n_0 -attr @rip(#000000) O[3] -attr @name load_i_n_0 -pin CTRL_UNIT|load_i O[3] -pin CTRL_UNIT|load_reg[3:0] D[3]
load net CTRL_UNIT|load_i_n_1 -attr @rip(#000000) O[2] -attr @name load_i_n_1 -pin CTRL_UNIT|load_i O[2] -pin CTRL_UNIT|load_reg[3:0] D[2]
load net CTRL_UNIT|load_i_n_2 -attr @rip(#000000) O[1] -attr @name load_i_n_2 -pin CTRL_UNIT|load_i O[1] -pin CTRL_UNIT|load_reg[3:0] D[1]
load net CTRL_UNIT|load_i_n_3 -attr @rip(#000000) O[0] -attr @name load_i_n_3 -pin CTRL_UNIT|load_i O[0] -pin CTRL_UNIT|load_reg[3:0] D[0]
load net CTRL_UNIT|mem_write_en -attr @name mem_write_en -hierPin CTRL_UNIT mem_write_en -pin CTRL_UNIT|mem_write_en_reg Q
netloc CTRL_UNIT|mem_write_en 1 6 1 N 1368
load net CTRL_UNIT|opCode[0] -attr @rip(#000000) 0 -attr @name opCode[0] -hierPin CTRL_UNIT opCode[0] -pin CTRL_UNIT|opCode_reg[3:0] Q[0]
load net CTRL_UNIT|opCode[1] -attr @rip(#000000) 1 -attr @name opCode[1] -hierPin CTRL_UNIT opCode[1] -pin CTRL_UNIT|opCode_reg[3:0] Q[1]
load net CTRL_UNIT|opCode[2] -attr @rip(#000000) 2 -attr @name opCode[2] -hierPin CTRL_UNIT opCode[2] -pin CTRL_UNIT|opCode_reg[3:0] Q[2]
load net CTRL_UNIT|opCode[3] -attr @rip(#000000) 3 -attr @name opCode[3] -hierPin CTRL_UNIT opCode[3] -pin CTRL_UNIT|opCode_reg[3:0] Q[3]
load net CTRL_UNIT|opCode_i__0_n_0 -attr @rip(#000000) O[2] -attr @name opCode_i__0_n_0 -pin CTRL_UNIT|opCode_i__0 O[2] -pin CTRL_UNIT|opCode_i__1 I1[2]
load net CTRL_UNIT|opCode_i__0_n_1 -attr @rip(#000000) O[1] -attr @name opCode_i__0_n_1 -pin CTRL_UNIT|opCode_i__0 O[1] -pin CTRL_UNIT|opCode_i__1 I1[1]
load net CTRL_UNIT|opCode_i__0_n_2 -attr @rip(#000000) O[0] -attr @name opCode_i__0_n_2 -pin CTRL_UNIT|opCode_i__0 O[0] -pin CTRL_UNIT|opCode_i__1 I1[0]
load net CTRL_UNIT|opCode_i__1_n_0 -attr @rip(#000000) O[3] -attr @name opCode_i__1_n_0 -pin CTRL_UNIT|opCode_i__1 O[3] -pin CTRL_UNIT|opCode_reg[3:0] RST[3]
load net CTRL_UNIT|opCode_i__1_n_1 -attr @rip(#000000) O[2] -attr @name opCode_i__1_n_1 -pin CTRL_UNIT|opCode_i__1 O[2] -pin CTRL_UNIT|opCode_reg[3:0] RST[2]
load net CTRL_UNIT|opCode_i__1_n_2 -attr @rip(#000000) O[1] -attr @name opCode_i__1_n_2 -pin CTRL_UNIT|opCode_i__1 O[1] -pin CTRL_UNIT|opCode_reg[3:0] RST[1]
load net CTRL_UNIT|opCode_i__1_n_3 -attr @rip(#000000) O[0] -attr @name opCode_i__1_n_3 -pin CTRL_UNIT|opCode_i__1 O[0] -pin CTRL_UNIT|opCode_reg[3:0] RST[0]
load net CTRL_UNIT|opCode_i_n_0 -attr @rip(#000000) O[2] -attr @name opCode_i_n_0 -pin CTRL_UNIT|opCode_i O[2] -pin CTRL_UNIT|opCode_reg[3:0] D[2]
load net CTRL_UNIT|opCode_i_n_1 -attr @rip(#000000) O[1] -attr @name opCode_i_n_1 -pin CTRL_UNIT|opCode_i O[1] -pin CTRL_UNIT|opCode_reg[3:0] D[1]
load net CTRL_UNIT|opCode_i_n_2 -attr @rip(#000000) O[0] -attr @name opCode_i_n_2 -pin CTRL_UNIT|opCode_i O[0] -pin CTRL_UNIT|opCode_reg[3:0] D[0]
load net CTRL_UNIT|p_0_out[0] -attr @rip(#000000) O[0] -attr @name p_0_out[0] -pin CTRL_UNIT|en_i__2 O[0] -pin CTRL_UNIT|en_reg[7:0] SET[0]
load net CTRL_UNIT|p_0_out[1] -attr @rip(#000000) O[1] -attr @name p_0_out[1] -pin CTRL_UNIT|en_i__2 O[1]
load net CTRL_UNIT|p_0_out[2] -attr @rip(#000000) O[2] -attr @name p_0_out[2] -pin CTRL_UNIT|en_i__2 O[2]
load net CTRL_UNIT|p_0_out[3] -attr @rip(#000000) O[3] -attr @name p_0_out[3] -pin CTRL_UNIT|en_i__2 O[3]
load net CTRL_UNIT|p_0_out[4] -attr @rip(#000000) O[4] -attr @name p_0_out[4] -pin CTRL_UNIT|en_i__2 O[4]
load netBundle @CTRL_UNIT|instr 4 CTRL_UNIT|instr[3] CTRL_UNIT|instr[2] CTRL_UNIT|instr[1] CTRL_UNIT|instr[0] -autobundled
netbloc @CTRL_UNIT|instr 1 0 5 NJ 1018 NJ 1018 NJ 1018 NJ 1018 1980
load netBundle @CTRL_UNIT|count20_i_n_ 3 CTRL_UNIT|count20_i_n_0 CTRL_UNIT|count20_i_n_1 CTRL_UNIT|count20_i_n_2 -autobundled
netbloc @CTRL_UNIT|count20_i_n_ 1 1 2 1350 1198 NJ
load netBundle @CTRL_UNIT|en_i_n_ 5 CTRL_UNIT|en_i_n_0 CTRL_UNIT|en_i_n_1 CTRL_UNIT|en_i_n_2 CTRL_UNIT|en_i_n_3 CTRL_UNIT|en_i_n_4 -autobundled
netbloc @CTRL_UNIT|en_i_n_ 1 5 1 2290 898
load netBundle @CTRL_UNIT|en_i__0_n_ 5 CTRL_UNIT|en_i__0_n_0 CTRL_UNIT|en_i__0_n_1 CTRL_UNIT|en_i__0_n_2 CTRL_UNIT|en_i__0_n_3 CTRL_UNIT|en_i__0_n_4 -autobundled
netbloc @CTRL_UNIT|en_i__0_n_ 1 4 1 1940J 798
load netBundle @CTRL_UNIT|en_i__1_n_ 8 CTRL_UNIT|en_i__1_n_0 CTRL_UNIT|en_i__1_n_1 CTRL_UNIT|en_i__1_n_2 CTRL_UNIT|en_i__1_n_3 CTRL_UNIT|en_i__1_n_4 CTRL_UNIT|en_i__1_n_5 CTRL_UNIT|en_i__1_n_6 CTRL_UNIT|en_i__1_n_7 -autobundled
netbloc @CTRL_UNIT|en_i__1_n_ 1 5 1 2250 788n
load netBundle @CTRL_UNIT|p_0_out 5 CTRL_UNIT|p_0_out[4] CTRL_UNIT|p_0_out[3] CTRL_UNIT|p_0_out[2] CTRL_UNIT|p_0_out[1] CTRL_UNIT|p_0_out[0] -autobundled
netbloc @CTRL_UNIT|p_0_out 1 5 1 2290 988
load netBundle @CTRL_UNIT|load_i_n_ 4 CTRL_UNIT|load_i_n_0 CTRL_UNIT|load_i_n_1 CTRL_UNIT|load_i_n_2 CTRL_UNIT|load_i_n_3 -autobundled
netbloc @CTRL_UNIT|load_i_n_ 1 5 1 N 1228
load netBundle @CTRL_UNIT|load_i__0_n_ 4 CTRL_UNIT|load_i__0_n_0 CTRL_UNIT|load_i__0_n_1 CTRL_UNIT|load_i__0_n_2 CTRL_UNIT|load_i__0_n_3 -autobundled
netbloc @CTRL_UNIT|load_i__0_n_ 1 4 1 NJ 1128
load netBundle @CTRL_UNIT|load_i__1_n_ 4 CTRL_UNIT|load_i__1_n_0 CTRL_UNIT|load_i__1_n_1 CTRL_UNIT|load_i__1_n_2 CTRL_UNIT|load_i__1_n_3 -autobundled
netbloc @CTRL_UNIT|load_i__1_n_ 1 5 1 2250 1118n
load netBundle @CTRL_UNIT|load_i__2_n_ 4 CTRL_UNIT|load_i__2_n_0 CTRL_UNIT|load_i__2_n_1 CTRL_UNIT|load_i__2_n_2 CTRL_UNIT|load_i__2_n_3 -autobundled
netbloc @CTRL_UNIT|load_i__2_n_ 1 5 1 2250 1298n
load netBundle @CTRL_UNIT|opCode_i_n_ 3 CTRL_UNIT|opCode_i_n_0 CTRL_UNIT|opCode_i_n_1 CTRL_UNIT|opCode_i_n_2 -autobundled
netbloc @CTRL_UNIT|opCode_i_n_ 1 5 1 2270 1498n
load netBundle @CTRL_UNIT|opCode_i__0_n_ 3 CTRL_UNIT|opCode_i__0_n_0 CTRL_UNIT|opCode_i__0_n_1 CTRL_UNIT|opCode_i__0_n_2 -autobundled
netbloc @CTRL_UNIT|opCode_i__0_n_ 1 4 1 1940J 1438
load netBundle @CTRL_UNIT|opCode_i__1_n_ 4 CTRL_UNIT|opCode_i__1_n_0 CTRL_UNIT|opCode_i__1_n_1 CTRL_UNIT|opCode_i__1_n_2 CTRL_UNIT|opCode_i__1_n_3 -autobundled
netbloc @CTRL_UNIT|opCode_i__1_n_ 1 5 1 N 1428
load netBundle @CTRL_UNIT|load 4 CTRL_UNIT|load[3] CTRL_UNIT|load[2] CTRL_UNIT|load[1] CTRL_UNIT|load[0] -autobundled
netbloc @CTRL_UNIT|load 1 6 1 N 1218
load netBundle @CTRL_UNIT|opCode 4 CTRL_UNIT|opCode[3] CTRL_UNIT|opCode[2] CTRL_UNIT|opCode[1] CTRL_UNIT|opCode[0] -autobundled
netbloc @CTRL_UNIT|opCode 1 6 1 N 1488
load netBundle @CTRL_UNIT|en 8 CTRL_UNIT|en[7] CTRL_UNIT|en[6] CTRL_UNIT|en[5] CTRL_UNIT|en[4] CTRL_UNIT|en[3] CTRL_UNIT|en[2] CTRL_UNIT|en[1] CTRL_UNIT|en[0] -autobundled
netbloc @CTRL_UNIT|en 1 6 1 N 888
load netBundle @CTRL_UNIT|case_sel 3 CTRL_UNIT|case_sel[2] CTRL_UNIT|case_sel[1] CTRL_UNIT|case_sel[0] -autobundled
netbloc @CTRL_UNIT|case_sel 1 0 5 1150 1058 NJ 1058 NJ 1058 1780 1198 1960
load netBundle @RAM0|addr 4 RAM0|addr[3] RAM0|addr[2] RAM0|addr[1] RAM0|addr[0] -autobundled
netbloc @RAM0|addr 1 0 4 4210 1886 4370J 2146 NJ 2146 5610
load netBundle @RAM0|mem_in 8 RAM0|mem_in[7] RAM0|mem_in[6] RAM0|mem_in[5] RAM0|mem_in[4] RAM0|mem_in[3] RAM0|mem_in[2] RAM0|mem_in[1] RAM0|mem_in[0] -autobundled
netbloc @RAM0|mem_in 1 0 3 N 1286 NJ 1286 5210
load netBundle @RAM0|mem_out 8 RAM0|mem_out[7] RAM0|mem_out[6] RAM0|mem_out[5] RAM0|mem_out[4] RAM0|mem_out[3] RAM0|mem_out[2] RAM0|mem_out[1] RAM0|mem_out[0] -autobundled
netbloc @RAM0|mem_out 1 4 1 N 1756
load netBundle @RAM0|p_0_in 8 RAM0|p_0_in[7] RAM0|p_0_in[6] RAM0|p_0_in[5] RAM0|p_0_in[4] RAM0|p_0_in[3] RAM0|p_0_in[2] RAM0|p_0_in[1] RAM0|p_0_in[0] -autobundled
netbloc @RAM0|p_0_in 1 3 1 5610 986n
load netBundle @RAM0|p_10_in 8 RAM0|p_10_in[7] RAM0|p_10_in[6] RAM0|p_10_in[5] RAM0|p_10_in[4] RAM0|p_10_in[3] RAM0|p_10_in[2] RAM0|p_10_in[1] RAM0|p_10_in[0] -autobundled
netbloc @RAM0|p_10_in 1 3 1 5430 1826n
load netBundle @RAM0|p_11_in 8 RAM0|p_11_in[7] RAM0|p_11_in[6] RAM0|p_11_in[5] RAM0|p_11_in[4] RAM0|p_11_in[3] RAM0|p_11_in[2] RAM0|p_11_in[1] RAM0|p_11_in[0] -autobundled
netbloc @RAM0|p_11_in 1 3 1 5570 1806n
load netBundle @RAM0|p_12_in 8 RAM0|p_12_in[7] RAM0|p_12_in[6] RAM0|p_12_in[5] RAM0|p_12_in[4] RAM0|p_12_in[3] RAM0|p_12_in[2] RAM0|p_12_in[1] RAM0|p_12_in[0] -autobundled
netbloc @RAM0|p_12_in 1 3 1 5530 1786n
load netBundle @RAM0|p_13_in 8 RAM0|p_13_in[7] RAM0|p_13_in[6] RAM0|p_13_in[5] RAM0|p_13_in[4] RAM0|p_13_in[3] RAM0|p_13_in[2] RAM0|p_13_in[1] RAM0|p_13_in[0] -autobundled
netbloc @RAM0|p_13_in 1 3 1 5510 1766n
load netBundle @RAM0|p_14_in 8 RAM0|p_14_in[7] RAM0|p_14_in[6] RAM0|p_14_in[5] RAM0|p_14_in[4] RAM0|p_14_in[3] RAM0|p_14_in[2] RAM0|p_14_in[1] RAM0|p_14_in[0] -autobundled
netbloc @RAM0|p_14_in 1 3 1 5490 1626n
load netBundle @RAM0|p_15_in 8 RAM0|p_15_in[7] RAM0|p_15_in[6] RAM0|p_15_in[5] RAM0|p_15_in[4] RAM0|p_15_in[3] RAM0|p_15_in[2] RAM0|p_15_in[1] RAM0|p_15_in[0] -autobundled
netbloc @RAM0|p_15_in 1 3 1 5470 1606n
load netBundle @RAM0|p_1_in 8 RAM0|p_1_in[7] RAM0|p_1_in[6] RAM0|p_1_in[5] RAM0|p_1_in[4] RAM0|p_1_in[3] RAM0|p_1_in[2] RAM0|p_1_in[1] RAM0|p_1_in[0] -autobundled
netbloc @RAM0|p_1_in 1 3 1 5590 1096n
load netBundle @RAM0|p_2_in 8 RAM0|p_2_in[7] RAM0|p_2_in[6] RAM0|p_2_in[5] RAM0|p_2_in[4] RAM0|p_2_in[3] RAM0|p_2_in[2] RAM0|p_2_in[1] RAM0|p_2_in[0] -autobundled
netbloc @RAM0|p_2_in 1 3 1 5570 1206n
load netBundle @RAM0|p_3_in 8 RAM0|p_3_in[7] RAM0|p_3_in[6] RAM0|p_3_in[5] RAM0|p_3_in[4] RAM0|p_3_in[3] RAM0|p_3_in[2] RAM0|p_3_in[1] RAM0|p_3_in[0] -autobundled
netbloc @RAM0|p_3_in 1 3 1 5550 1316n
load netBundle @RAM0|p_4_in 8 RAM0|p_4_in[7] RAM0|p_4_in[6] RAM0|p_4_in[5] RAM0|p_4_in[4] RAM0|p_4_in[3] RAM0|p_4_in[2] RAM0|p_4_in[1] RAM0|p_4_in[0] -autobundled
netbloc @RAM0|p_4_in 1 3 1 5530 1426n
load netBundle @RAM0|p_5_in 8 RAM0|p_5_in[7] RAM0|p_5_in[6] RAM0|p_5_in[5] RAM0|p_5_in[4] RAM0|p_5_in[3] RAM0|p_5_in[2] RAM0|p_5_in[1] RAM0|p_5_in[0] -autobundled
netbloc @RAM0|p_5_in 1 3 1 5510 1536n
load netBundle @RAM0|p_6_in 8 RAM0|p_6_in[7] RAM0|p_6_in[6] RAM0|p_6_in[5] RAM0|p_6_in[4] RAM0|p_6_in[3] RAM0|p_6_in[2] RAM0|p_6_in[1] RAM0|p_6_in[0] -autobundled
netbloc @RAM0|p_6_in 1 3 1 5410 1646n
load netBundle @RAM0|p_7_in 8 RAM0|p_7_in[7] RAM0|p_7_in[6] RAM0|p_7_in[5] RAM0|p_7_in[4] RAM0|p_7_in[3] RAM0|p_7_in[2] RAM0|p_7_in[1] RAM0|p_7_in[0] -autobundled
netbloc @RAM0|p_7_in 1 3 1 5390 1756n
load netBundle @RAM0|p_8_in 8 RAM0|p_8_in[7] RAM0|p_8_in[6] RAM0|p_8_in[5] RAM0|p_8_in[4] RAM0|p_8_in[3] RAM0|p_8_in[2] RAM0|p_8_in[1] RAM0|p_8_in[0] -autobundled
netbloc @RAM0|p_8_in 1 3 1 N 1866
load netBundle @RAM0|p_9_in 8 RAM0|p_9_in[7] RAM0|p_9_in[6] RAM0|p_9_in[5] RAM0|p_9_in[4] RAM0|p_9_in[3] RAM0|p_9_in[2] RAM0|p_9_in[1] RAM0|p_9_in[0] -autobundled
netbloc @RAM0|p_9_in 1 3 1 5450 1846n
load netBundle @INSTR_REG|data_in 8 INSTR_REG|data_in[7] INSTR_REG|data_in[6] INSTR_REG|data_in[5] INSTR_REG|data_in[4] INSTR_REG|data_in[3] INSTR_REG|data_in[2] INSTR_REG|data_in[1] INSTR_REG|data_in[0] -autobundled
netbloc @INSTR_REG|data_in 1 0 1 220 112n
load netBundle @INSTR_REG|instr 4 INSTR_REG|instr[3] INSTR_REG|instr[2] INSTR_REG|instr[1] INSTR_REG|instr[0] -autobundled
netbloc @INSTR_REG|instr 1 1 1 N 102
load netBundle @INSTR_REG|out 8 INSTR_REG|out[7] INSTR_REG|out[6] INSTR_REG|out[5] INSTR_REG|out[4] INSTR_REG|out[3] INSTR_REG|out[2] INSTR_REG|out[1] INSTR_REG|out[0] -autobundled
netbloc @INSTR_REG|out 1 1 1 N 212
load netBundle @P_Counter|count_in 4 P_Counter|count_in[3] P_Counter|count_in[2] P_Counter|count_in[1] P_Counter|count_in[0] -autobundled
netbloc @P_Counter|count_in 1 0 2 NJ 542 490
load netBundle @P_Counter|count_out_reg0 8 P_Counter|count_out_reg0[7] P_Counter|count_out_reg0[6] P_Counter|count_out_reg0[5] P_Counter|count_out_reg0[4] P_Counter|count_out_reg0[3] P_Counter|count_out_reg0[2] P_Counter|count_out_reg0[1] P_Counter|count_out_reg0[0] -autobundled
netbloc @P_Counter|count_out_reg0 1 1 1 NJ 442
load netBundle @P_Counter|count_out 8 P_Counter|count_out[7] P_Counter|count_out[6] P_Counter|count_out[5] P_Counter|count_out[4] P_Counter|count_out[3] P_Counter|count_out[2] P_Counter|count_out[1] P_Counter|count_out[0] -autobundled
netbloc @P_Counter|count_out 1 0 3 220 502 NJ 502 710
load netBundle @B_reg|data_in 8 B_reg|data_in[7] B_reg|data_in[6] B_reg|data_in[5] B_reg|data_in[4] B_reg|data_in[3] B_reg|data_in[2] B_reg|data_in[1] B_reg|data_in[0] -autobundled
netbloc @B_reg|data_in 1 0 1 3690 214n
load netBundle @B_reg|out 8 B_reg|out[7] B_reg|out[6] B_reg|out[5] B_reg|out[4] B_reg|out[3] B_reg|out[2] B_reg|out[1] B_reg|out[0] -autobundled
netbloc @B_reg|out 1 1 1 N 234
load netBundle @A_reg|data_in 8 A_reg|data_in[7] A_reg|data_in[6] A_reg|data_in[5] A_reg|data_in[4] A_reg|data_in[3] A_reg|data_in[2] A_reg|data_in[1] A_reg|data_in[0] -autobundled
netbloc @A_reg|data_in 1 0 1 3690 398n
load netBundle @A_reg|out 8 A_reg|out[7] A_reg|out[6] A_reg|out[5] A_reg|out[4] A_reg|out[3] A_reg|out[2] A_reg|out[1] A_reg|out[0] -autobundled
netbloc @A_reg|out 1 1 1 N 418
load netBundle @ALU0|A 8 ALU0|A[7] ALU0|A[6] ALU0|A[5] ALU0|A[4] ALU0|A[3] ALU0|A[2] ALU0|A[1] ALU0|A[0] -autobundled
netbloc @ALU0|A 1 0 2 4230 638 4490
load netBundle @ALU0|B 8 ALU0|B[7] ALU0|B[6] ALU0|B[5] ALU0|B[4] ALU0|B[3] ALU0|B[2] ALU0|B[1] ALU0|B[0] -autobundled
netbloc @ALU0|B 1 0 1 4210 328n
load netBundle @ALU0|opCode 4 ALU0|opCode[3] ALU0|opCode[2] ALU0|opCode[1] ALU0|opCode[0] -autobundled
netbloc @ALU0|opCode 1 0 2 NJ 618 4510
load netBundle @ALU0|result0_i_n_ 8 ALU0|result0_i_n_0 ALU0|result0_i_n_1 ALU0|result0_i_n_2 ALU0|result0_i_n_3 ALU0|result0_i_n_4 ALU0|result0_i_n_5 ALU0|result0_i_n_6 ALU0|result0_i_n_7 -autobundled
netbloc @ALU0|result0_i_n_ 1 1 1 4430 418n
load netBundle @ALU0|result0_i__0_n_ 8 ALU0|result0_i__0_n_0 ALU0|result0_i__0_n_1 ALU0|result0_i__0_n_2 ALU0|result0_i__0_n_3 ALU0|result0_i__0_n_4 ALU0|result0_i__0_n_5 ALU0|result0_i__0_n_6 ALU0|result0_i__0_n_7 -autobundled
netbloc @ALU0|result0_i__0_n_ 1 1 1 4450 318n
load netBundle @ALU0|result0_i__1_n_ 8 ALU0|result0_i__1_n_0 ALU0|result0_i__1_n_1 ALU0|result0_i__1_n_2 ALU0|result0_i__1_n_3 ALU0|result0_i__1_n_4 ALU0|result0_i__1_n_5 ALU0|result0_i__1_n_6 ALU0|result0_i__1_n_7 -autobundled
netbloc @ALU0|result0_i__1_n_ 1 1 1 N 498
load netBundle @ALU0|result0_i__2_n_ 8 ALU0|result0_i__2_n_0 ALU0|result0_i__2_n_1 ALU0|result0_i__2_n_2 ALU0|result0_i__2_n_3 ALU0|result0_i__2_n_4 ALU0|result0_i__2_n_5 ALU0|result0_i__2_n_6 ALU0|result0_i__2_n_7 -autobundled
netbloc @ALU0|result0_i__2_n_ 1 1 1 4430 518n
load netBundle @ALU0|result_i_n_ 8 ALU0|result_i_n_0 ALU0|result_i_n_1 ALU0|result_i_n_2 ALU0|result_i_n_3 ALU0|result_i_n_4 ALU0|result_i_n_5 ALU0|result_i_n_6 ALU0|result_i_n_7 -autobundled
netbloc @ALU0|result_i_n_ 1 2 1 4760 388n
load netBundle @ALU0|result 8 ALU0|result[7] ALU0|result[6] ALU0|result[5] ALU0|result[4] ALU0|result[3] ALU0|result[2] ALU0|result[1] ALU0|result[0] -autobundled
netbloc @ALU0|result 1 3 1 N 378
load netBundle @addr_write_prog 4 addr_write_prog[3] addr_write_prog[2] addr_write_prog[1] addr_write_prog[0] -autobundled
netbloc @addr_write_prog 1 0 4 0J 892 890J 1668 2780 490 NJ
load netBundle @mem_write_data_prog 8 mem_write_data_prog[7] mem_write_data_prog[6] mem_write_data_prog[5] mem_write_data_prog[4] mem_write_data_prog[3] mem_write_data_prog[2] mem_write_data_prog[1] mem_write_data_prog[0] -autobundled
netbloc @mem_write_data_prog 1 0 4 -20J 1132 870J 1908 2860J 730 NJ
load netBundle @bus_reg 8 bus_reg[7] bus_reg[6] bus_reg[5] bus_reg[4] bus_reg[3] bus_reg[2] bus_reg[1] bus_reg[0] -autobundled
netbloc @bus_reg 1 0 9 40 862 910J 1638 2800 510 3160 320 3520 508 4080J 788 6130J 400 NJ 400 6660
load netBundle @mem_read_data 8 mem_read_data[7] mem_read_data[6] mem_read_data[5] mem_read_data[4] mem_read_data[3] mem_read_data[2] mem_read_data[1] mem_read_data[0] -autobundled
netbloc @mem_read_data 1 8 1 NJ 650
load netBundle @out_DISP 8 out_DISP[7] out_DISP[6] out_DISP[5] out_DISP[4] out_DISP[3] out_DISP[2] out_DISP[1] out_DISP[0] -autobundled
netbloc @out_DISP 1 8 1 NJ 460
load netBundle @result_ALU 8 result_ALU[7] result_ALU[6] result_ALU[5] result_ALU[4] result_ALU[3] result_ALU[2] result_ALU[1] result_ALU[0] -autobundled
netbloc @result_ALU 1 6 1 6030 160n
load netBundle @A_out 8 A_out[7] A_out[6] A_out[5] A_out[4] A_out[3] A_out[2] A_out[1] A_out[0] -autobundled
netbloc @A_out 1 5 2 4040 238 6050
load netBundle @B_out 8 B_out[7] B_out[6] B_out[5] B_out[4] B_out[3] B_out[2] B_out[1] B_out[0] -autobundled
netbloc @B_out 1 5 2 4000 150 6010
load netBundle @en 8 en[7] en[6] en[5] en[4] en[3] en[2] en[1] en[0] -autobundled
netbloc @en 1 2 5 2700J 340 NJ 340 3500J 528 4020J 808 6110
load netBundle @load 4 load[3] load[2] load[1] load[0] -autobundled
netbloc @load 1 0 5 60 322 890J 140 2680 360 NJ 360 3460
load netBundle @opCode 4 opCode[3] opCode[2] opCode[1] opCode[0] -autobundled
netbloc @opCode 1 2 4 2720J 400 NJ 400 3440J 548 4040
load netBundle @instr 4 instr[3] instr[2] instr[1] instr[0] -autobundled
netbloc @instr 1 1 1 950 102n
load netBundle @Instr_out 8 Instr_out[7] Instr_out[6] Instr_out[5] Instr_out[4] Instr_out[3] Instr_out[2] Instr_out[1] Instr_out[0] -autobundled
netbloc @Instr_out 1 1 6 850J 80 NJ 80 NJ 80 NJ 80 NJ 80 6090
load netBundle @Mem_in_reg_i_n_ 8 Mem_in_reg_i_n_0 Mem_in_reg_i_n_1 Mem_in_reg_i_n_2 Mem_in_reg_i_n_3 Mem_in_reg_i_n_4 Mem_in_reg_i_n_5 Mem_in_reg_i_n_6 Mem_in_reg_i_n_7 -autobundled
netbloc @Mem_in_reg_i_n_ 1 4 1 3440 720n
load netBundle @count 8 count[7] count[6] count[5] count[4] count[3] count[2] count[1] count[0] -autobundled
netbloc @count 1 1 6 970 160 NJ 160 NJ 160 3520J 124 4000J 130 5990J
load netBundle @Mem_out 8 Mem_out[7] Mem_out[6] Mem_out[5] Mem_out[4] Mem_out[3] Mem_out[2] Mem_out[1] Mem_out[0] -autobundled
netbloc @Mem_out 1 6 2 6070 660 NJ
load netBundle @addr_reg_i_n_ 4 addr_reg_i_n_0 addr_reg_i_n_1 addr_reg_i_n_2 addr_reg_i_n_3 -autobundled
netbloc @addr_reg_i_n_ 1 3 1 3120 470n
load netBundle @addr_reg_i__0_n_ 4 addr_reg_i__0_n_0 addr_reg_i__0_n_1 addr_reg_i__0_n_2 addr_reg_i__0_n_3 -autobundled
netbloc @addr_reg_i__0_n_ 1 4 1 3460 480n
load netBundle @bus_reg_i_n_ 8 bus_reg_i_n_0 bus_reg_i_n_1 bus_reg_i_n_2 bus_reg_i_n_3 bus_reg_i_n_4 bus_reg_i_n_5 bus_reg_i_n_6 bus_reg_i_n_7 -autobundled
netbloc @bus_reg_i_n_ 1 7 1 6440 170n
load netBundle @out_DISP_i_n_ 8 out_DISP_i_n_0 out_DISP_i_n_1 out_DISP_i_n_2 out_DISP_i_n_3 out_DISP_i_n_4 out_DISP_i_n_5 out_DISP_i_n_6 out_DISP_i_n_7 -autobundled
netbloc @out_DISP_i_n_ 1 7 1 6420 470n
load netBundle @Mem_in_reg 8 Mem_in_reg[7] Mem_in_reg[6] Mem_in_reg[5] Mem_in_reg[4] Mem_in_reg[3] Mem_in_reg[2] Mem_in_reg[1] Mem_in_reg[0] -autobundled
netbloc @Mem_in_reg 1 5 1 3980 808n
load netBundle @addr_reg 4 addr_reg[3] addr_reg[2] addr_reg[1] addr_reg[0] -autobundled
netbloc @addr_reg 1 5 2 4000 828 6090
levelinfo -pg 1 -60 190 1120 3000 3320 3660 4180 6301 6521 6680
levelinfo -hier ALU0 * 4300 4640 4810 *
levelinfo -hier A_reg * 3740 *
levelinfo -hier B_reg * 3740 *
levelinfo -hier CTRL_UNIT * 1240 1440 1610 1810 2120 2370 *
levelinfo -hier INSTR_REG * 270 *
levelinfo -hier P_Counter * 290 580 *
levelinfo -hier RAM0 * 4250 4790 5260 5750 *
pagesize -pg 1 -db -bbox -sgen -280 -10 6860 2940
pagesize -hier ALU0 -db -bbox -sgen 4180 268 4930 758
pagesize -hier A_reg -db -bbox -sgen 3660 358 3880 478
pagesize -hier B_reg -db -bbox -sgen 3660 174 3880 294
pagesize -hier CTRL_UNIT -db -bbox -sgen 1120 268 2550 1588
pagesize -hier INSTR_REG -db -bbox -sgen 190 42 410 292
pagesize -hier P_Counter -db -bbox -sgen 190 352 740 672
pagesize -hier RAM0 -db -bbox -sgen 4180 896 5880 2896
show
fullfit
#
# initialize ictrl to current module bus_8bit work:bus_8bit:NOFILE
ictrl init topinfo |
