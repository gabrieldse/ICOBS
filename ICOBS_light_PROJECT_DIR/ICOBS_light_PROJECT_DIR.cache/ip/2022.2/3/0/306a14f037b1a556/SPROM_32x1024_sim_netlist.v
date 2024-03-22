// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Mar 18 18:09:40 2024
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
rU8s8GIuAw==
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
