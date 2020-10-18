// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Sep 14 19:57:42 2020
// Host        : DESKTOP-O6REA7C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Projects/Xilinx/CPU/CPU.srcs/sources_1/ip/program_counter/program_counter_sim_netlist.v
// Design      : program_counter
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "program_counter,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module program_counter
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
  program_counter_c_counter_binary_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module program_counter_c_counter_binary_v12_0_14
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
  program_counter_c_counter_binary_v12_0_14_viv i_synth
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
DvlDGzj+qZ8/L3G2m8pwyG345pg6Wn0088ri8BuIcyUv2syUaDy/y/Hr7VHaeHt/T9NtFP+sfYjh
cPlVwMZKzRgF0B2xAp6X6DvNbE9haSbO6aIeP47nmpfr+yLvi3ZX/6JkTfeojHtjC2Pa7hFQ8Wdr
68vCku1jVq9aRpAi1WJpn12AGmfHVUSQkEXDDCqiOeACqUKn1x/3ye8TgBdddmU2m+SOIzWW0HNX
Rrgg5/vSc1qLDXxeGQLfMEFUwPx1o+P6dRupbBLzt3dnvFEQW+qZuDV64vC2ri/uH5k4cRr1eawe
wV3pzDZNuoa5ptFdVqnxzfb6gJlB++7zdrMnWg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CCr1ttyQTaZ+Tz2C9ZZoVJFU0ioEMcXqYkY8UX46BMilufPrrZ+cdR57eg2Q00vKDr2hR8VfAyPD
LaiDzVYUDFjaCp8TV4iZxKUHdUaAi0ooZhcJyPTvSdGe9/2QN1eX0oCS5jpVWGxsARBbTF8TaPG/
wmgejbydKbj3RnOqnHsbtkZx15rQXYxWiJ6As6EzHMjAatAF1QBQes88YHNNcpaTro86xexbdPiX
9tFOGQJqE+rb29PYk3NLdP30L1KCD+OSQRF8RWKPm/y1frRtLK1vQ0RuADz2wc3UH+S1h6XK2acD
H5F5KxhKzqo6IZYsQTxCZAEDm5HSEfhVDmqY5g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15792)
`pragma protect data_block
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
1SKE
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
