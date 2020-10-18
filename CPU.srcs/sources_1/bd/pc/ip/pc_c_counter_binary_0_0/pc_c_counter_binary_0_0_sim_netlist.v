// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Sep 14 19:57:41 2020
// Host        : DESKTOP-O6REA7C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top pc_c_counter_binary_0_0 -prefix
//               pc_c_counter_binary_0_0_ program_counter_sim_netlist.v
// Design      : program_counter
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "program_counter,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module pc_c_counter_binary_0_0
   (CLK,
    CE,
    LOAD,
    L,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME load_intf, LAYERED_METADATA undef" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME l_intf, LAYERED_METADATA undef" *) input [15:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [15:0]Q;

  wire CE;
  wire CLK;
  wire [15:0]L;
  wire LOAD;
  wire [15:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  pc_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "16" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module pc_c_counter_binary_0_0_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [15:0]L;
  output THRESH0;
  output [15:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [15:0]L;
  wire LOAD;
  wire [15:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  pc_c_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P26SBU8Tx2XU1JeIZHV4zy6e025Pihg1vv0dRNnF/mZZV5wy7pGPfOCBnJCPtkURavR2kPMqNaGq
CHdl+DdaqxgUgOYnkPOJ0U7ftgxnkNTbpoUq0YQpLEEOacnvo1LtLoIENx+KvubHGc6KkHjlXvCg
ZpTqfSu3EwTQT21OXzjogGoU7IXxlSSZ7ZDixHcpro4E1ZQds+74bN/ullOL5pRnk/gmFXk1j1Iw
41TdIWYs1HQbv4s02EFKAZ3vSCNqzeDyHbfsJah8EYDkiyS0GWuGdb5dfkpOaRFjuyu3EOrzTn5r
zubiXClZji1v4p1Jvffgt2puUQH4VeD1+vsDjA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NHYMJktMlxOdPjRYD6u0a24WEi4zPRtL0BWHurAL2z8ykqGMIzqax9msiSj4BYv/x1V1xv0KhXkQ
6cdyOD7Ilc8RuZLHwLb1PJnVQWah4sWT85Y0dwi9sfw3rDHctwDpH5RrCDEMJ/3ubbvGIJz8vi7y
HVzOA2v4mNMdoCA/HiS177NaSDFTILlshM1oR/KQ+NEGgJfMPRbeQnl23VZWDJNvJ/r3R9tm7gQZ
UBjjqzZn6AnhXf6GG3rFr2zjgscrfPPqhSWRl0pDt1F6xk2kdnpU2s+b5IzzF3tkaGfASxv3sobs
MXRo9zwCimI5RkztD5Fz0gy3a5MBZi85cn8XoQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15760)
`pragma protect data_block
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
pz9x+Cd7Ig==
`pragma protect end_protected
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
