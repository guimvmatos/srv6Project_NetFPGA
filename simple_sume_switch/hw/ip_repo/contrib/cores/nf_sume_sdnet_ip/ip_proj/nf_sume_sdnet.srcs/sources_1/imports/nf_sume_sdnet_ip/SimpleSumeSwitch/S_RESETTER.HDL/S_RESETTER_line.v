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
// File name: S_RESETTER_line.v
// File created: 2020/11/05 15:52:03
// Created by: Xilinx SDNet Compiler version 2018.2, build 2342300

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_RESETTER_line (


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






 reg	kwk50rc1hv9xfuyc_564;	 initial kwk50rc1hv9xfuyc_564 = 1'b0 ;
 reg	pfpte03zfs76erhx4bqyp9g2rz2_562;	 initial pfpte03zfs76erhx4bqyp9g2rz2_562 = 1'b0 ;
 reg [4:0] t9usyubyqy5463ahzdq_220;	 initial t9usyubyqy5463ahzdq_220 = 5'b00000 ;
 reg [6:0] svtjw9fgvsxl30h7trk93l7wps4g4a3_496;	 initial svtjw9fgvsxl30h7trk93l7wps4g4a3_496 = 7'b0000000 ;
 wire	muxckx0mts52rru1rmypurzlu2qxzs_633 ;
 reg	xgtwmq8wyf5fn6zbe4mstv6gj_435;	 initial xgtwmq8wyf5fn6zbe4mstv6gj_435 = 1'b1 ;
 reg	pn82xdjimkj4h76ozdqgm_530;	 initial pn82xdjimkj4h76ozdqgm_530 = 1'b0 ;
 reg	k2mbja56tfpgrbi1mtc6s_659;	 initial k2mbja56tfpgrbi1mtc6s_659 = 1'b1 ;
 reg	knux5r1gmxsldh5j493vg9rg7ip0_772;	 initial knux5r1gmxsldh5j493vg9rg7ip0_772 = 1'b0 ;
 wire [4:0] g5v3pfztkff8aw96o2ip8_131 ;
 wire [6:0] za622j427qailfsrkr8ay6m5_451 ;
 wire	wa1wgc6g7jhsls99bf0fgcfqmgtfxzz_193 ;
 wire	h1msurnl3jx6fneg62183s1d3iskkd_425 ;
 wire	lkine4aujoymd7hyp8oyf83wf_53 ;
 wire	po51ocr1ejoq8ytxs2_890 ;
 wire	q6v1vzjuftyembarx3_155 ;
 wire	qx1gauzsumtdsffrah48hq45sc_844 ;
 wire	u1ovgxi379v61sxeaay3gsp6ap12_538 ;
 wire	km885nuexqts2v1u1qlz82gbg_487 ;
 wire	mlidkoqgknt1tun4o1b_521 ;
 wire	fcqx24nd3pf4n31sj9g0hd5vg8n12_408 ;
 wire	yrf2in3lg4f68cr4c_180 ;
 wire	np0fpk6v50pgab7k5kfz1_756 ;


 assign g5v3pfztkff8aw96o2ip8_131 = 
	t9usyubyqy5463ahzdq_220 + 1 ;
 assign za622j427qailfsrkr8ay6m5_451 = 
	svtjw9fgvsxl30h7trk93l7wps4g4a3_496 + 1 ;
 assign wa1wgc6g7jhsls99bf0fgcfqmgtfxzz_193 = (
	((t9usyubyqy5463ahzdq_220 > 5'b00000))?1'b1:
	0)  ;
 assign h1msurnl3jx6fneg62183s1d3iskkd_425 = 
	rst | pfpte03zfs76erhx4bqyp9g2rz2_562 ;
 assign lkine4aujoymd7hyp8oyf83wf_53 = 
	h1msurnl3jx6fneg62183s1d3iskkd_425 | wa1wgc6g7jhsls99bf0fgcfqmgtfxzz_193 ;
 assign po51ocr1ejoq8ytxs2_890 = (
	((pfpte03zfs76erhx4bqyp9g2rz2_562 == 1'b1) && (np0fpk6v50pgab7k5kfz1_756 == 1'b1) && (t9usyubyqy5463ahzdq_220 == 5'b00000))?1'b1:
	((t9usyubyqy5463ahzdq_220 != 5'b00000) && (pfpte03zfs76erhx4bqyp9g2rz2_562 != 1'b1))?1'b1:
	0)  ;
 assign q6v1vzjuftyembarx3_155 = (
	((kwk50rc1hv9xfuyc_564 == 1'b1))?1'b1:
	0)  ;
 assign qx1gauzsumtdsffrah48hq45sc_844 = (
	((t9usyubyqy5463ahzdq_220 == 5'b01111) && (pfpte03zfs76erhx4bqyp9g2rz2_562 != 1'b1) && (np0fpk6v50pgab7k5kfz1_756 == 1'b1))?1'b1:
	((svtjw9fgvsxl30h7trk93l7wps4g4a3_496 != 7'b0000000) && (svtjw9fgvsxl30h7trk93l7wps4g4a3_496 != 7'b0111111) && (pfpte03zfs76erhx4bqyp9g2rz2_562 != 1'b1) && (np0fpk6v50pgab7k5kfz1_756 == 1'b1))?1'b1:
	0)  ;
 assign u1ovgxi379v61sxeaay3gsp6ap12_538 = (
	((svtjw9fgvsxl30h7trk93l7wps4g4a3_496 == 7'b0111111))?1'b1:
	0)  ;
 assign km885nuexqts2v1u1qlz82gbg_487 = 
	1'b1 ;
 assign mlidkoqgknt1tun4o1b_521 = 
	1'b0 ;
 assign fcqx24nd3pf4n31sj9g0hd5vg8n12_408 = 
	 ~(muxckx0mts52rru1rmypurzlu2qxzs_633) ;
 assign yrf2in3lg4f68cr4c_180 = (
	((svtjw9fgvsxl30h7trk93l7wps4g4a3_496 == 7'b0111111))?1'b1:
	0)  ;
 assign np0fpk6v50pgab7k5kfz1_756 = 
	1'b1 ;
 assign reset_out_active_high 	= k2mbja56tfpgrbi1mtc6s_659 ;
 assign reset_out_active_low 	= knux5r1gmxsldh5j493vg9rg7ip0_772 ;


assign muxckx0mts52rru1rmypurzlu2qxzs_633 = (
	((lkine4aujoymd7hyp8oyf83wf_53 == 1'b1) && (t9usyubyqy5463ahzdq_220 < 5'b10000))?km885nuexqts2v1u1qlz82gbg_487 :
1'b0) ;



always @(posedge clk)
begin
		kwk50rc1hv9xfuyc_564 <= rst ;
		pfpte03zfs76erhx4bqyp9g2rz2_562 <= kwk50rc1hv9xfuyc_564 ;
	if (q6v1vzjuftyembarx3_155) 
	begin 
	  t9usyubyqy5463ahzdq_220 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (po51ocr1ejoq8ytxs2_890) 
		begin 
			t9usyubyqy5463ahzdq_220 <= g5v3pfztkff8aw96o2ip8_131 ;
		end 
	end 
	if (q6v1vzjuftyembarx3_155) 
	begin 
	  svtjw9fgvsxl30h7trk93l7wps4g4a3_496 <= 7'b0000000 ;
	 end 
	else 
	begin 
		if (qx1gauzsumtdsffrah48hq45sc_844) 
		begin 
			svtjw9fgvsxl30h7trk93l7wps4g4a3_496 <= za622j427qailfsrkr8ay6m5_451 ;
		end 
	end 
	if (rst) 
	begin 
	  xgtwmq8wyf5fn6zbe4mstv6gj_435 <= 1'b1 ;
	 end 
	else 
	begin 
			xgtwmq8wyf5fn6zbe4mstv6gj_435 <= muxckx0mts52rru1rmypurzlu2qxzs_633 ;
	end 
	if (rst) 
	begin 
	  pn82xdjimkj4h76ozdqgm_530 <= 1'b0 ;
	 end 
	else 
	begin 
			pn82xdjimkj4h76ozdqgm_530 <= fcqx24nd3pf4n31sj9g0hd5vg8n12_408 ;
	end 
	if (rst) 
	begin 
	  k2mbja56tfpgrbi1mtc6s_659 <= 1'b1 ;
	 end 
	else 
	begin 
			k2mbja56tfpgrbi1mtc6s_659 <= xgtwmq8wyf5fn6zbe4mstv6gj_435 ;
	end 
	if (rst) 
	begin 
	  knux5r1gmxsldh5j493vg9rg7ip0_772 <= 1'b0 ;
	 end 
	else 
	begin 
			knux5r1gmxsldh5j493vg9rg7ip0_772 <= pn82xdjimkj4h76ozdqgm_530 ;
	end 
		init_done <= yrf2in3lg4f68cr4c_180 ;
end

endmodule 
