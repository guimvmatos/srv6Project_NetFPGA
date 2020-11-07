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
// File created: 2020/11/07 02:06:21
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






 reg	sylyohyffwmgh1r498_264;	 initial sylyohyffwmgh1r498_264 = 1'b0 ;
 reg	vwqu3c54ham8t61krb_824;	 initial vwqu3c54ham8t61krb_824 = 1'b0 ;
 reg [4:0] tsa1aa3fj1g8has4t64gkwwu9e2kt_728;	 initial tsa1aa3fj1g8has4t64gkwwu9e2kt_728 = 5'b00000 ;
 reg [7:0] pwfth42ctktmdapk4jjjcecnak_175;	 initial pwfth42ctktmdapk4jjjcecnak_175 = 8'h00 ;
 wire	om9kbtxz9bed57udpbb6_282 ;
 reg	snvcnzwue5cemhy9s4rlyzjv4o13mky_556;	 initial snvcnzwue5cemhy9s4rlyzjv4o13mky_556 = 1'b1 ;
 reg	al3zlfrfgpz6a4z1q8dnvxhsuskyz_535;	 initial al3zlfrfgpz6a4z1q8dnvxhsuskyz_535 = 1'b0 ;
 reg	hukxbsi7xppoxsz26t1suj_190;	 initial hukxbsi7xppoxsz26t1suj_190 = 1'b1 ;
 reg	u9icb943ocb2ucipgq0ldovzhh_85;	 initial u9icb943ocb2ucipgq0ldovzhh_85 = 1'b0 ;
 wire [4:0] n85bxl1hpcnyca57xnx_521 ;
 wire [7:0] stmtxmvxecgnjvab_821 ;
 wire	s7m90wj9jh9j39364v9_772 ;
 wire	o0usb6emvwidyfteilbklbei4qwh6ubw_614 ;
 wire	zum0hgp6wgddii42e5oxwc_778 ;
 wire	e5ml06kd9nb435qpj_702 ;
 wire	avvwjmxibos2vjpgkrl8qa3_645 ;
 wire	lh8ozjerbppz3wpnmxn8achw7232ks_229 ;
 wire	y9ma1afuntj9tzssnq_526 ;
 wire	lzmrsne79ymx27pc3_325 ;
 wire	dkz59zz7sipxwb166f3k2ndnyrvmmib_102 ;
 wire	q55ifpahfvxji374fef9im_566 ;
 wire	godvp1wlosj153pr_367 ;
 wire	uo93aikc5bm7jbfh67w5j4lhcr_821 ;


 assign n85bxl1hpcnyca57xnx_521 = 
	tsa1aa3fj1g8has4t64gkwwu9e2kt_728 + 1 ;
 assign stmtxmvxecgnjvab_821 = 
	pwfth42ctktmdapk4jjjcecnak_175 + 1 ;
 assign s7m90wj9jh9j39364v9_772 = (
	((tsa1aa3fj1g8has4t64gkwwu9e2kt_728 > 5'b00000))?1'b1:
	0)  ;
 assign o0usb6emvwidyfteilbklbei4qwh6ubw_614 = 
	rst | vwqu3c54ham8t61krb_824 ;
 assign zum0hgp6wgddii42e5oxwc_778 = 
	o0usb6emvwidyfteilbklbei4qwh6ubw_614 | s7m90wj9jh9j39364v9_772 ;
 assign e5ml06kd9nb435qpj_702 = (
	((vwqu3c54ham8t61krb_824 == 1'b1) && (uo93aikc5bm7jbfh67w5j4lhcr_821 == 1'b1) && (tsa1aa3fj1g8has4t64gkwwu9e2kt_728 == 5'b00000))?1'b1:
	((tsa1aa3fj1g8has4t64gkwwu9e2kt_728 != 5'b00000) && (vwqu3c54ham8t61krb_824 != 1'b1))?1'b1:
	0)  ;
 assign avvwjmxibos2vjpgkrl8qa3_645 = (
	((sylyohyffwmgh1r498_264 == 1'b1))?1'b1:
	0)  ;
 assign lh8ozjerbppz3wpnmxn8achw7232ks_229 = (
	((tsa1aa3fj1g8has4t64gkwwu9e2kt_728 == 5'b01111) && (vwqu3c54ham8t61krb_824 != 1'b1) && (uo93aikc5bm7jbfh67w5j4lhcr_821 == 1'b1))?1'b1:
	((pwfth42ctktmdapk4jjjcecnak_175 != 8'h00) && (pwfth42ctktmdapk4jjjcecnak_175 != 8'h86) && (vwqu3c54ham8t61krb_824 != 1'b1) && (uo93aikc5bm7jbfh67w5j4lhcr_821 == 1'b1))?1'b1:
	0)  ;
 assign y9ma1afuntj9tzssnq_526 = (
	((pwfth42ctktmdapk4jjjcecnak_175 == 8'h86))?1'b1:
	0)  ;
 assign lzmrsne79ymx27pc3_325 = 
	1'b1 ;
 assign dkz59zz7sipxwb166f3k2ndnyrvmmib_102 = 
	1'b0 ;
 assign q55ifpahfvxji374fef9im_566 = 
	 ~(om9kbtxz9bed57udpbb6_282) ;
 assign godvp1wlosj153pr_367 = (
	((pwfth42ctktmdapk4jjjcecnak_175 == 8'h86))?1'b1:
	0)  ;
 assign uo93aikc5bm7jbfh67w5j4lhcr_821 = 
	1'b1 ;
 assign reset_out_active_high 	= hukxbsi7xppoxsz26t1suj_190 ;
 assign reset_out_active_low 	= u9icb943ocb2ucipgq0ldovzhh_85 ;


assign om9kbtxz9bed57udpbb6_282 = (
	((zum0hgp6wgddii42e5oxwc_778 == 1'b1) && (tsa1aa3fj1g8has4t64gkwwu9e2kt_728 < 5'b10000))?lzmrsne79ymx27pc3_325 :
1'b0) ;



always @(posedge clk)
begin
		sylyohyffwmgh1r498_264 <= rst ;
		vwqu3c54ham8t61krb_824 <= sylyohyffwmgh1r498_264 ;
	if (avvwjmxibos2vjpgkrl8qa3_645) 
	begin 
	  tsa1aa3fj1g8has4t64gkwwu9e2kt_728 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (e5ml06kd9nb435qpj_702) 
		begin 
			tsa1aa3fj1g8has4t64gkwwu9e2kt_728 <= n85bxl1hpcnyca57xnx_521 ;
		end 
	end 
	if (avvwjmxibos2vjpgkrl8qa3_645) 
	begin 
	  pwfth42ctktmdapk4jjjcecnak_175 <= 8'h00 ;
	 end 
	else 
	begin 
		if (lh8ozjerbppz3wpnmxn8achw7232ks_229) 
		begin 
			pwfth42ctktmdapk4jjjcecnak_175 <= stmtxmvxecgnjvab_821 ;
		end 
	end 
	if (rst) 
	begin 
	  snvcnzwue5cemhy9s4rlyzjv4o13mky_556 <= 1'b1 ;
	 end 
	else 
	begin 
			snvcnzwue5cemhy9s4rlyzjv4o13mky_556 <= om9kbtxz9bed57udpbb6_282 ;
	end 
	if (rst) 
	begin 
	  al3zlfrfgpz6a4z1q8dnvxhsuskyz_535 <= 1'b0 ;
	 end 
	else 
	begin 
			al3zlfrfgpz6a4z1q8dnvxhsuskyz_535 <= q55ifpahfvxji374fef9im_566 ;
	end 
	if (rst) 
	begin 
	  hukxbsi7xppoxsz26t1suj_190 <= 1'b1 ;
	 end 
	else 
	begin 
			hukxbsi7xppoxsz26t1suj_190 <= snvcnzwue5cemhy9s4rlyzjv4o13mky_556 ;
	end 
	if (rst) 
	begin 
	  u9icb943ocb2ucipgq0ldovzhh_85 <= 1'b0 ;
	 end 
	else 
	begin 
			u9icb943ocb2ucipgq0ldovzhh_85 <= al3zlfrfgpz6a4z1q8dnvxhsuskyz_535 ;
	end 
		init_done <= godvp1wlosj153pr_367 ;
end

endmodule 
