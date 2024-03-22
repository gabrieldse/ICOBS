// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Mar 18 16:13:36 2024
// Host        : DESKTOP-PDOT4RD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPROM_32x1024_sim_netlist.v
// Design      : SPROM_32x1024
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SPROM_32x1024,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27424)
`pragma protect data_block
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
bXMKk4ToDA==
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
