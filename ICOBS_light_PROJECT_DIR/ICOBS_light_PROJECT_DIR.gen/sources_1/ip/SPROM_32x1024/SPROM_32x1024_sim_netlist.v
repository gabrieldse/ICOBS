// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Mar 22 08:16:19 2024
// Host        : DESKTOP-PDOT4RD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/projets_polytech/VHDL_Icobs_Project/Hardware/ICOBS_light_PROJECT_DIR/ICOBS_light_PROJECT_DIR.gen/sources_1/ip/SPROM_32x1024/SPROM_32x1024_sim_netlist.v
// Design      : SPROM_32x1024
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SPROM_32x1024,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module SPROM_32x1024
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "SPROM_32x1024.mem" *) 
  (* C_INIT_FILE_NAME = "SPROM_32x1024.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  SPROM_32x1024_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27408)
`pragma protect data_block
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
`pragma protect end_protected
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
