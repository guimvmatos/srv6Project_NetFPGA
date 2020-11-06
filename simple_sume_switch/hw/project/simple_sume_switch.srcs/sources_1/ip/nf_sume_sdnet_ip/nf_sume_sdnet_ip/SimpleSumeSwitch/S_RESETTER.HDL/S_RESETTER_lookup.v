//----------------------------------------------------------------------------
//   This file is owned and controlled by Xilinx and must be used solely    //
//   for design, simulation, implementation and creation of design files    //
//   limited to Xilinx devices or technologies. Use with non-Xilinx         //
//   devices or technologies is expressly prohibited and immediately        //
//   terminates your license.                                               //
//                                                                          //
//   XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY   //
//   FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY   //
//   PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE            //
//   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS     //
//   MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY     //
//   CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY      //
//   RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY      //
//   DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE  //
//   IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         //
//   REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        //
//   INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A  //
//   PARTICULAR PURPOSE.                                                    //
//                                                                          //
//   Xilinx products are not intended for use in life support appliances,   //
//   devices, or systems.  Use in such applications are expressly           //
//   prohibited.                                                            //
//                                                                          //
//   (c) Copyright 1995-2015 Xilinx, Inc.                                   //
//   All rights reserved.                                                   //
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------


//----------------------------------------------------------------------------
// File name: S_RESETTER_lookup.v
// File created: 2020/11/05 15:52:03
// Created by: Xilinx SDNet Compiler version 2018.2, build 2342300

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_RESETTER_lookup (


     reset_out_active_high, 
     reset_out_active_low, 
     init_done, 

     clk, 
     rst 

);

//-------------------------------------------------------------
// I/O
//-------------------------------------------------------------
 output		reset_out_active_high ;
 output		reset_out_active_low ;
 output	reg	init_done ;
 input		clk ;
 input		rst ;






 reg	yx9cy4x20xu3gj6ckztu_660;	 initial yx9cy4x20xu3gj6ckztu_660 = 1'b0 ;
 reg	um61p8d0eimsq2ht7r50ixmx2imf_474;	 initial um61p8d0eimsq2ht7r50ixmx2imf_474 = 1'b0 ;
 reg [4:0] wkgjp2lhkpvp5iitu5dfqbpfvn_632;	 initial wkgjp2lhkpvp5iitu5dfqbpfvn_632 = 5'b00000 ;
 reg [7:0] x09zpdy3xnjp5bd37c0f5vsy4_248;	 initial x09zpdy3xnjp5bd37c0f5vsy4_248 = 8'h00 ;
 wire	wiwf6cvmbdmq6ghozb5q4hiuzlo8i_173 ;
 reg	zh1qgvnugbnyy5xhss1iuvee0_823;	 initial zh1qgvnugbnyy5xhss1iuvee0_823 = 1'b1 ;
 reg	xupvy5i80ozjx959k00d1udofml40yc_47;	 initial xupvy5i80ozjx959k00d1udofml40yc_47 = 1'b0 ;
 reg	r20h37crkmiw8925mumv3m_10;	 initial r20h37crkmiw8925mumv3m_10 = 1'b1 ;
 reg	de4tb7ne038ly90ux1xd_774;	 initial de4tb7ne038ly90ux1xd_774 = 1'b0 ;
 wire [4:0] h7tir029aqa3wkv1ardrqa9_20 ;
 wire [7:0] aob25hziii7n07dt_443 ;
 wire	l7uata8zluzftxd8s1_679 ;
 wire	smascy558btolz6brjbz_344 ;
 wire	nvt6z4qzcrtxoyvbyx2tafbxo5_656 ;
 wire	skgmyzja63goiwze_794 ;
 wire	ok5d9kpv6uv0otrfuxd2h0031qacxw_192 ;
 wire	fpjgysi5xcgsea10xqkoczx_46 ;
 wire	uac8v1bfgxei8qz5lyd7hw5mj_597 ;
 wire	rlly1iw3h3mgcpx97tgh4_622 ;
 wire	xj7l3o6ztye5raqzp0o76uehp_707 ;
 wire	qpf6dt0gisvbjshnm_494 ;
 wire	rl96swrjer2vmfti48shq9z7glhw_884 ;
 wire	ci17t4jdk2msp84er_606 ;


 assign h7tir029aqa3wkv1ardrqa9_20 = 
	wkgjp2lhkpvp5iitu5dfqbpfvn_632 + 1 ;
 assign aob25hziii7n07dt_443 = 
	x09zpdy3xnjp5bd37c0f5vsy4_248 + 1 ;
 assign l7uata8zluzftxd8s1_679 = (
	((wkgjp2lhkpvp5iitu5dfqbpfvn_632 > 5'b00000))?1'b1:
	0)  ;
 assign smascy558btolz6brjbz_344 = 
	rst | um61p8d0eimsq2ht7r50ixmx2imf_474 ;
 assign nvt6z4qzcrtxoyvbyx2tafbxo5_656 = 
	smascy558btolz6brjbz_344 | l7uata8zluzftxd8s1_679 ;
 assign skgmyzja63goiwze_794 = (
	((um61p8d0eimsq2ht7r50ixmx2imf_474 == 1'b1) && (ci17t4jdk2msp84er_606 == 1'b1) && (wkgjp2lhkpvp5iitu5dfqbpfvn_632 == 5'b00000))?1'b1:
	((wkgjp2lhkpvp5iitu5dfqbpfvn_632 != 5'b00000) && (um61p8d0eimsq2ht7r50ixmx2imf_474 != 1'b1))?1'b1:
	0)  ;
 assign ok5d9kpv6uv0otrfuxd2h0031qacxw_192 = (
	((yx9cy4x20xu3gj6ckztu_660 == 1'b1))?1'b1:
	0)  ;
 assign fpjgysi5xcgsea10xqkoczx_46 = (
	((wkgjp2lhkpvp5iitu5dfqbpfvn_632 == 5'b01111) && (um61p8d0eimsq2ht7r50ixmx2imf_474 != 1'b1) && (ci17t4jdk2msp84er_606 == 1'b1))?1'b1:
	((x09zpdy3xnjp5bd37c0f5vsy4_248 != 8'h00) && (x09zpdy3xnjp5bd37c0f5vsy4_248 != 8'h86) && (um61p8d0eimsq2ht7r50ixmx2imf_474 != 1'b1) && (ci17t4jdk2msp84er_606 == 1'b1))?1'b1:
	0)  ;
 assign uac8v1bfgxei8qz5lyd7hw5mj_597 = (
	((x09zpdy3xnjp5bd37c0f5vsy4_248 == 8'h86))?1'b1:
	0)  ;
 assign rlly1iw3h3mgcpx97tgh4_622 = 
	1'b1 ;
 assign xj7l3o6ztye5raqzp0o76uehp_707 = 
	1'b0 ;
 assign qpf6dt0gisvbjshnm_494 = 
	 ~(wiwf6cvmbdmq6ghozb5q4hiuzlo8i_173) ;
 assign rl96swrjer2vmfti48shq9z7glhw_884 = (
	((x09zpdy3xnjp5bd37c0f5vsy4_248 == 8'h86))?1'b1:
	0)  ;
 assign ci17t4jdk2msp84er_606 = 
	1'b1 ;
 assign reset_out_active_high 	= r20h37crkmiw8925mumv3m_10 ;
 assign reset_out_active_low 	= de4tb7ne038ly90ux1xd_774 ;


assign wiwf6cvmbdmq6ghozb5q4hiuzlo8i_173 = (
	((nvt6z4qzcrtxoyvbyx2tafbxo5_656 == 1'b1) && (wkgjp2lhkpvp5iitu5dfqbpfvn_632 < 5'b10000))?rlly1iw3h3mgcpx97tgh4_622 :
1'b0) ;



always @(posedge clk)
begin
		yx9cy4x20xu3gj6ckztu_660 <= rst ;
		um61p8d0eimsq2ht7r50ixmx2imf_474 <= yx9cy4x20xu3gj6ckztu_660 ;
	if (ok5d9kpv6uv0otrfuxd2h0031qacxw_192) 
	begin 
	  wkgjp2lhkpvp5iitu5dfqbpfvn_632 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (skgmyzja63goiwze_794) 
		begin 
			wkgjp2lhkpvp5iitu5dfqbpfvn_632 <= h7tir029aqa3wkv1ardrqa9_20 ;
		end 
	end 
	if (ok5d9kpv6uv0otrfuxd2h0031qacxw_192) 
	begin 
	  x09zpdy3xnjp5bd37c0f5vsy4_248 <= 8'h00 ;
	 end 
	else 
	begin 
		if (fpjgysi5xcgsea10xqkoczx_46) 
		begin 
			x09zpdy3xnjp5bd37c0f5vsy4_248 <= aob25hziii7n07dt_443 ;
		end 
	end 
	if (rst) 
	begin 
	  zh1qgvnugbnyy5xhss1iuvee0_823 <= 1'b1 ;
	 end 
	else 
	begin 
			zh1qgvnugbnyy5xhss1iuvee0_823 <= wiwf6cvmbdmq6ghozb5q4hiuzlo8i_173 ;
	end 
	if (rst) 
	begin 
	  xupvy5i80ozjx959k00d1udofml40yc_47 <= 1'b0 ;
	 end 
	else 
	begin 
			xupvy5i80ozjx959k00d1udofml40yc_47 <= qpf6dt0gisvbjshnm_494 ;
	end 
	if (rst) 
	begin 
	  r20h37crkmiw8925mumv3m_10 <= 1'b1 ;
	 end 
	else 
	begin 
			r20h37crkmiw8925mumv3m_10 <= zh1qgvnugbnyy5xhss1iuvee0_823 ;
	end 
	if (rst) 
	begin 
	  de4tb7ne038ly90ux1xd_774 <= 1'b0 ;
	 end 
	else 
	begin 
			de4tb7ne038ly90ux1xd_774 <= xupvy5i80ozjx959k00d1udofml40yc_47 ;
	end 
		init_done <= rl96swrjer2vmfti48shq9z7glhw_884 ;
end

endmodule 
