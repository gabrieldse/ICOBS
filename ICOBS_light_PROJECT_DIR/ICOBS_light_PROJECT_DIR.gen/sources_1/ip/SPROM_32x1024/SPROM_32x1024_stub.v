// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Mar 22 08:16:19 2024
// Host        : DESKTOP-PDOT4RD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/projets_polytech/VHDL_Icobs_Project/Hardware/ICOBS_light_PROJECT_DIR/ICOBS_light_PROJECT_DIR.gen/sources_1/ip/SPROM_32x1024/SPROM_32x1024_stub.v
// Design      : SPROM_32x1024
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *)
module SPROM_32x1024(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[9:0],douta[31:0]" */;
  input clka;
  input ena;
  input [9:0]addra;
  output [31:0]douta;
endmodule
