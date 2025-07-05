// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Jul  5 19:30:49 2025
// Host        : VLSIdevbox running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/krushna_dev/vivado_codes/rom/rom.sim/sim_1/synth/timing/xsim/tb_time_synth.v
// Design      : rom
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module rom
   (in_address,
    out_instructions);
  input [3:0]in_address;
  output [7:0]out_instructions;

  wire [3:0]in_address;
  wire [3:0]in_address_IBUF;
  wire [7:0]out_instructions;
  wire [7:0]out_instructions_OBUF;

initial begin
 $sdf_annotate("tb_time_synth.sdf",,,,"tool_control");
end
  IBUF \in_address_IBUF[0]_inst 
       (.I(in_address[0]),
        .O(in_address_IBUF[0]));
  IBUF \in_address_IBUF[1]_inst 
       (.I(in_address[1]),
        .O(in_address_IBUF[1]));
  IBUF \in_address_IBUF[2]_inst 
       (.I(in_address[2]),
        .O(in_address_IBUF[2]));
  IBUF \in_address_IBUF[3]_inst 
       (.I(in_address[3]),
        .O(in_address_IBUF[3]));
  OBUF \out_instructions_OBUF[0]_inst 
       (.I(out_instructions_OBUF[0]),
        .O(out_instructions[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h051A)) 
    \out_instructions_OBUF[0]_inst_i_1 
       (.I0(in_address_IBUF[3]),
        .I1(in_address_IBUF[1]),
        .I2(in_address_IBUF[2]),
        .I3(in_address_IBUF[0]),
        .O(out_instructions_OBUF[0]));
  OBUF \out_instructions_OBUF[1]_inst 
       (.I(out_instructions_OBUF[1]),
        .O(out_instructions[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5431)) 
    \out_instructions_OBUF[1]_inst_i_1 
       (.I0(in_address_IBUF[3]),
        .I1(in_address_IBUF[2]),
        .I2(in_address_IBUF[1]),
        .I3(in_address_IBUF[0]),
        .O(out_instructions_OBUF[1]));
  OBUF \out_instructions_OBUF[2]_inst 
       (.I(out_instructions_OBUF[2]),
        .O(out_instructions[2]));
  LUT4 #(
    .INIT(16'h0014)) 
    \out_instructions_OBUF[2]_inst_i_1 
       (.I0(in_address_IBUF[2]),
        .I1(in_address_IBUF[1]),
        .I2(in_address_IBUF[0]),
        .I3(in_address_IBUF[3]),
        .O(out_instructions_OBUF[2]));
  OBUF \out_instructions_OBUF[3]_inst 
       (.I(1'b0),
        .O(out_instructions[3]));
  OBUF \out_instructions_OBUF[4]_inst 
       (.I(out_instructions_OBUF[4]),
        .O(out_instructions[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \out_instructions_OBUF[4]_inst_i_1 
       (.I0(in_address_IBUF[1]),
        .I1(in_address_IBUF[2]),
        .I2(in_address_IBUF[3]),
        .I3(in_address_IBUF[0]),
        .O(out_instructions_OBUF[4]));
  OBUF \out_instructions_OBUF[5]_inst 
       (.I(out_instructions_OBUF[5]),
        .O(out_instructions[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \out_instructions_OBUF[5]_inst_i_1 
       (.I0(in_address_IBUF[2]),
        .I1(in_address_IBUF[3]),
        .I2(in_address_IBUF[1]),
        .I3(in_address_IBUF[0]),
        .O(out_instructions_OBUF[5]));
  OBUF \out_instructions_OBUF[6]_inst 
       (.I(out_instructions_OBUF[6]),
        .O(out_instructions[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h344C)) 
    \out_instructions_OBUF[6]_inst_i_1 
       (.I0(in_address_IBUF[3]),
        .I1(in_address_IBUF[2]),
        .I2(in_address_IBUF[0]),
        .I3(in_address_IBUF[1]),
        .O(out_instructions_OBUF[6]));
  OBUF \out_instructions_OBUF[7]_inst 
       (.I(out_instructions_OBUF[7]),
        .O(out_instructions[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h622A)) 
    \out_instructions_OBUF[7]_inst_i_1 
       (.I0(in_address_IBUF[3]),
        .I1(in_address_IBUF[2]),
        .I2(in_address_IBUF[0]),
        .I3(in_address_IBUF[1]),
        .O(out_instructions_OBUF[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
