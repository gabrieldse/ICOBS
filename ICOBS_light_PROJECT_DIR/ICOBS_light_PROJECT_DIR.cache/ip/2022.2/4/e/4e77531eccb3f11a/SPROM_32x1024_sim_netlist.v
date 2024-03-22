// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Mar 18 17:56:33 2024
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
XUgz/o3J4Q==
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
