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
// File name: S_RESETTER_control.v
// File created: 2020/11/07 02:06:21
// Created by: Xilinx SDNet Compiler version 2018.2, build 2342300

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_RESETTER_control (


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






 reg	o6ntyc74td335vqe0p_99;	 initial o6ntyc74td335vqe0p_99 = 1'b0 ;
 reg	ckudpkof8me7ap5igbwzxklzq2_292;	 initial ckudpkof8me7ap5igbwzxklzq2_292 = 1'b0 ;
 reg [4:0] h01vu58lqnc1cpbz5m0nirqlfj8k_569;	 initial h01vu58lqnc1cpbz5m0nirqlfj8k_569 = 5'b00000 ;
 reg [6:0] cauxiy90sn4ot1z6lxd52gdg4mdqawfv_320;	 initial cauxiy90sn4ot1z6lxd52gdg4mdqawfv_320 = 7'b0000000 ;
 wire	l1rw21ybu75bwj7czdxot3_247 ;
 reg	kk32v00303s5gvh4sx1ahhb9b5cx_186;	 initial kk32v00303s5gvh4sx1ahhb9b5cx_186 = 1'b1 ;
 reg	zwec98f2bxfqoqdclnxh_399;	 initial zwec98f2bxfqoqdclnxh_399 = 1'b0 ;
 reg	tgqmcuf0zd2e4dfrmm3gl13_774;	 initial tgqmcuf0zd2e4dfrmm3gl13_774 = 1'b1 ;
 reg	ldrh97yct9rq05d9e5n_153;	 initial ldrh97yct9rq05d9e5n_153 = 1'b0 ;
 wire [4:0] yzzi1qov3x0j1fvpb8_198 ;
 wire [6:0] c7t152fdowxdl97kynj_824 ;
 wire	gsbbxvbcu9iswg6i_374 ;
 wire	rb6at17mkpa7vnz53d3x56d7155_843 ;
 wire	zsuie9mnyjed8a1u6w7luqk7oi063oy_506 ;
 wire	lj3vqqmh9upasrkizju63xx58nl_721 ;
 wire	upfauj68sp1v26awlcd0aaky9_636 ;
 wire	c130njpiy5yb7le5npfhgiprgvcxtf_286 ;
 wire	ifjguto3jg6eqk417uuewylwv_125 ;
 wire	qsfc6o58f7zgje65_152 ;
 wire	yhjb1i539glc6cz5_214 ;
 wire	m671n379npoy3rnagnh7pkikp_258 ;
 wire	i8zdgwv2vgdx6smgpcl_77 ;
 wire	nmg6rspxw5msa9zci_59 ;


 assign yzzi1qov3x0j1fvpb8_198 = 
	h01vu58lqnc1cpbz5m0nirqlfj8k_569 + 1 ;
 assign c7t152fdowxdl97kynj_824 = 
	cauxiy90sn4ot1z6lxd52gdg4mdqawfv_320 + 1 ;
 assign gsbbxvbcu9iswg6i_374 = (
	((h01vu58lqnc1cpbz5m0nirqlfj8k_569 > 5'b00000))?1'b1:
	0)  ;
 assign rb6at17mkpa7vnz53d3x56d7155_843 = 
	rst | ckudpkof8me7ap5igbwzxklzq2_292 ;
 assign zsuie9mnyjed8a1u6w7luqk7oi063oy_506 = 
	rb6at17mkpa7vnz53d3x56d7155_843 | gsbbxvbcu9iswg6i_374 ;
 assign lj3vqqmh9upasrkizju63xx58nl_721 = (
	((ckudpkof8me7ap5igbwzxklzq2_292 == 1'b1) && (nmg6rspxw5msa9zci_59 == 1'b1) && (h01vu58lqnc1cpbz5m0nirqlfj8k_569 == 5'b00000))?1'b1:
	((h01vu58lqnc1cpbz5m0nirqlfj8k_569 != 5'b00000) && (ckudpkof8me7ap5igbwzxklzq2_292 != 1'b1))?1'b1:
	0)  ;
 assign upfauj68sp1v26awlcd0aaky9_636 = (
	((o6ntyc74td335vqe0p_99 == 1'b1))?1'b1:
	0)  ;
 assign c130njpiy5yb7le5npfhgiprgvcxtf_286 = (
	((h01vu58lqnc1cpbz5m0nirqlfj8k_569 == 5'b01111) && (ckudpkof8me7ap5igbwzxklzq2_292 != 1'b1) && (nmg6rspxw5msa9zci_59 == 1'b1))?1'b1:
	((cauxiy90sn4ot1z6lxd52gdg4mdqawfv_320 != 7'b0000000) && (cauxiy90sn4ot1z6lxd52gdg4mdqawfv_320 != 7'b0111111) && (ckudpkof8me7ap5igbwzxklzq2_292 != 1'b1) && (nmg6rspxw5msa9zci_59 == 1'b1))?1'b1:
	0)  ;
 assign ifjguto3jg6eqk417uuewylwv_125 = (
	((cauxiy90sn4ot1z6lxd52gdg4mdqawfv_320 == 7'b0111111))?1'b1:
	0)  ;
 assign qsfc6o58f7zgje65_152 = 
	1'b1 ;
 assign yhjb1i539glc6cz5_214 = 
	1'b0 ;
 assign m671n379npoy3rnagnh7pkikp_258 = 
	 ~(l1rw21ybu75bwj7czdxot3_247) ;
 assign i8zdgwv2vgdx6smgpcl_77 = (
	((cauxiy90sn4ot1z6lxd52gdg4mdqawfv_320 == 7'b0111111))?1'b1:
	0)  ;
 assign nmg6rspxw5msa9zci_59 = 
	1'b1 ;
 assign reset_out_active_high 	= tgqmcuf0zd2e4dfrmm3gl13_774 ;
 assign reset_out_active_low 	= ldrh97yct9rq05d9e5n_153 ;


assign l1rw21ybu75bwj7czdxot3_247 = (
	((zsuie9mnyjed8a1u6w7luqk7oi063oy_506 == 1'b1) && (h01vu58lqnc1cpbz5m0nirqlfj8k_569 < 5'b10000))?qsfc6o58f7zgje65_152 :
1'b0) ;



always @(posedge clk)
begin
		o6ntyc74td335vqe0p_99 <= rst ;
		ckudpkof8me7ap5igbwzxklzq2_292 <= o6ntyc74td335vqe0p_99 ;
	if (upfauj68sp1v26awlcd0aaky9_636) 
	begin 
	  h01vu58lqnc1cpbz5m0nirqlfj8k_569 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (lj3vqqmh9upasrkizju63xx58nl_721) 
		begin 
			h01vu58lqnc1cpbz5m0nirqlfj8k_569 <= yzzi1qov3x0j1fvpb8_198 ;
		end 
	end 
	if (upfauj68sp1v26awlcd0aaky9_636) 
	begin 
	  cauxiy90sn4ot1z6lxd52gdg4mdqawfv_320 <= 7'b0000000 ;
	 end 
	else 
	begin 
		if (c130njpiy5yb7le5npfhgiprgvcxtf_286) 
		begin 
			cauxiy90sn4ot1z6lxd52gdg4mdqawfv_320 <= c7t152fdowxdl97kynj_824 ;
		end 
	end 
	if (rst) 
	begin 
	  kk32v00303s5gvh4sx1ahhb9b5cx_186 <= 1'b1 ;
	 end 
	else 
	begin 
			kk32v00303s5gvh4sx1ahhb9b5cx_186 <= l1rw21ybu75bwj7czdxot3_247 ;
	end 
	if (rst) 
	begin 
	  zwec98f2bxfqoqdclnxh_399 <= 1'b0 ;
	 end 
	else 
	begin 
			zwec98f2bxfqoqdclnxh_399 <= m671n379npoy3rnagnh7pkikp_258 ;
	end 
	if (rst) 
	begin 
	  tgqmcuf0zd2e4dfrmm3gl13_774 <= 1'b1 ;
	 end 
	else 
	begin 
			tgqmcuf0zd2e4dfrmm3gl13_774 <= kk32v00303s5gvh4sx1ahhb9b5cx_186 ;
	end 
	if (rst) 
	begin 
	  ldrh97yct9rq05d9e5n_153 <= 1'b0 ;
	 end 
	else 
	begin 
			ldrh97yct9rq05d9e5n_153 <= zwec98f2bxfqoqdclnxh_399 ;
	end 
		init_done <= i8zdgwv2vgdx6smgpcl_77 ;
end

endmodule 
