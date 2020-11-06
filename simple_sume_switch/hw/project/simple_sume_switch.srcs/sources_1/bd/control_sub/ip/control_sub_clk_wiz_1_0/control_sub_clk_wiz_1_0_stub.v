// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Nov  5 20:18:34 2020
// Host        : netfpga-Z170XP-SLI running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/netfpga/projects/P4-NetFPGA/contrib-projects/sume-sdnet-switch/projects/srv6Project/simple_sume_switch/hw/project/simple_sume_switch.srcs/sources_1/bd/control_sub/ip/control_sub_clk_wiz_1_0/control_sub_clk_wiz_1_0_stub.v
// Design      : control_sub_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module control_sub_clk_wiz_1_0(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;
endmodule
