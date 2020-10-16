////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: HW4_instr_Data_synthesis.v
// /___/   /\     Timestamp: Mon Oct 12 05:39:58 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim HW4_instr_Data.ngc HW4_instr_Data_synthesis.v 
// Device	: xc3s100e-4-cp132
// Input file	: HW4_instr_Data.ngc
// Output file	: C:\Users\Vano\Desktop\Verilog\HW4_instr_Data\netgen\synthesis\HW4_instr_Data_synthesis.v
// # of Modules	: 1
// Design Name	: HW4_instr_Data
// Xilinx        : D:\14.5\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module HW4_instr_Data (
data_instr_type, instr_type, instruction
);
  output [3 : 0] data_instr_type;
  output [2 : 0] instr_type;
  input [31 : 0] instruction;
  wire data_instr_type_0_OBUF_4;
  wire data_instr_type_1_OBUF_5;
  wire instr_type_0_OBUF_9;
  wire instr_type_1_OBUF_10;
  wire instr_type_2_OBUF_11;
  wire instruction_26_IBUF_16;
  wire instruction_27_IBUF_17;
  wire instruction_4_IBUF_18;
  GND   XST_GND (
    .G(instr_type_2_OBUF_11)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \data_instr_type<1>1  (
    .I0(data_instr_type_0_OBUF_4),
    .I1(instruction_4_IBUF_18),
    .O(data_instr_type_1_OBUF_5)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \instr_type<1>1  (
    .I0(instruction_27_IBUF_17),
    .I1(instruction_26_IBUF_16),
    .O(instr_type_1_OBUF_10)
  );
  IBUF   instruction_27_IBUF (
    .I(instruction[27]),
    .O(instruction_27_IBUF_17)
  );
  IBUF   instruction_26_IBUF (
    .I(instruction[26]),
    .O(instruction_26_IBUF_16)
  );
  IBUF   instruction_25_IBUF (
    .I(instruction[25]),
    .O(data_instr_type_0_OBUF_4)
  );
  IBUF   instruction_4_IBUF (
    .I(instruction[4]),
    .O(instruction_4_IBUF_18)
  );
  OBUF   data_instr_type_3_OBUF (
    .I(instr_type_2_OBUF_11),
    .O(data_instr_type[3])
  );
  OBUF   data_instr_type_2_OBUF (
    .I(instr_type_2_OBUF_11),
    .O(data_instr_type[2])
  );
  OBUF   data_instr_type_1_OBUF (
    .I(data_instr_type_1_OBUF_5),
    .O(data_instr_type[1])
  );
  OBUF   data_instr_type_0_OBUF (
    .I(data_instr_type_0_OBUF_4),
    .O(data_instr_type[0])
  );
  OBUF   instr_type_2_OBUF (
    .I(instr_type_2_OBUF_11),
    .O(instr_type[2])
  );
  OBUF   instr_type_1_OBUF (
    .I(instr_type_1_OBUF_10),
    .O(instr_type[1])
  );
  OBUF   instr_type_0_OBUF (
    .I(instr_type_0_OBUF_9),
    .O(instr_type[0])
  );
  INV   \instr_type<0>1_INV_0  (
    .I(instruction_26_IBUF_16),
    .O(instr_type_0_OBUF_9)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

