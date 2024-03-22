// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Mar 22 08:16:17 2024
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
Z2IWZ1vkGA==
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
