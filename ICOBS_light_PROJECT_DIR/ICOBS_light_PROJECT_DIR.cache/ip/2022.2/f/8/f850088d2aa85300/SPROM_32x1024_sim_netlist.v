// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Mar 18 18:31:07 2024
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
mVr5ErqvlQ==
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
