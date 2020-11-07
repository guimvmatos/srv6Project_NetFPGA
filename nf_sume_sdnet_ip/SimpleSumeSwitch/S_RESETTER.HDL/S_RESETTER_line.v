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
// File created: 2020/11/07 02:06:21
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






 reg	ohoh0bfga2hrikkfohb5hem9p_358;	 initial ohoh0bfga2hrikkfohb5hem9p_358 = 1'b0 ;
 reg	kx5bprt75gfmdny3cf6c0p228nyk_13;	 initial kx5bprt75gfmdny3cf6c0p228nyk_13 = 1'b0 ;
 reg [4:0] bd99li0ngeyqy8uzj6x_772;	 initial bd99li0ngeyqy8uzj6x_772 = 5'b00000 ;
 reg [6:0] tnlpl3ndhs3fs79z_821;	 initial tnlpl3ndhs3fs79z_821 = 7'b0000000 ;
 wire	ccgmdl348we9o7cw01uk8u1ms520jd3t_165 ;
 reg	vwy6thiszr33w2eunvbtwpleqgokgab_775;	 initial vwy6thiszr33w2eunvbtwpleqgokgab_775 = 1'b1 ;
 reg	mx5bh4fsszdjm0zkmhczd1_158;	 initial mx5bh4fsszdjm0zkmhczd1_158 = 1'b0 ;
 reg	pehs5xczy6gqbrygvwim_53;	 initial pehs5xczy6gqbrygvwim_53 = 1'b1 ;
 reg	qcwnngl1jw38ie6walo_15;	 initial qcwnngl1jw38ie6walo_15 = 1'b0 ;
 wire [4:0] cmptnm5z1xpam87h5ut_543 ;
 wire [6:0] d69hqh2qb1cx5ei0s7j4jp86cds_665 ;
 wire	ap8kwdd1dm0t906ebyd3_494 ;
 wire	rul3v4lqyiq2jxqtj_2 ;
 wire	fchna0ulwb4spv5c6ql3t9kn_343 ;
 wire	oi0bv7sq3723xtbj9t9hyd0s25_367 ;
 wire	pq97n69wllx4p11pah7wsqf0ecob1o8_813 ;
 wire	iusrgo6dqsd5oxit6tmy3hs_899 ;
 wire	rent5u0yv9i7r5skrsju_684 ;
 wire	obeitwqjm71jx02cmu0_827 ;
 wire	n9t07l3hu1ce312hg5eq6_254 ;
 wire	fixl22swjr8z983mr8ifw2it08mda4gf_4 ;
 wire	r6mwvjjc6lzz8yilyjv_532 ;
 wire	x7kr6604zgq80hg3r3hz0ll3gvjnayr_92 ;


 assign cmptnm5z1xpam87h5ut_543 = 
	bd99li0ngeyqy8uzj6x_772 + 1 ;
 assign d69hqh2qb1cx5ei0s7j4jp86cds_665 = 
	tnlpl3ndhs3fs79z_821 + 1 ;
 assign ap8kwdd1dm0t906ebyd3_494 = (
	((bd99li0ngeyqy8uzj6x_772 > 5'b00000))?1'b1:
	0)  ;
 assign rul3v4lqyiq2jxqtj_2 = 
	rst | kx5bprt75gfmdny3cf6c0p228nyk_13 ;
 assign fchna0ulwb4spv5c6ql3t9kn_343 = 
	rul3v4lqyiq2jxqtj_2 | ap8kwdd1dm0t906ebyd3_494 ;
 assign oi0bv7sq3723xtbj9t9hyd0s25_367 = (
	((kx5bprt75gfmdny3cf6c0p228nyk_13 == 1'b1) && (x7kr6604zgq80hg3r3hz0ll3gvjnayr_92 == 1'b1) && (bd99li0ngeyqy8uzj6x_772 == 5'b00000))?1'b1:
	((bd99li0ngeyqy8uzj6x_772 != 5'b00000) && (kx5bprt75gfmdny3cf6c0p228nyk_13 != 1'b1))?1'b1:
	0)  ;
 assign pq97n69wllx4p11pah7wsqf0ecob1o8_813 = (
	((ohoh0bfga2hrikkfohb5hem9p_358 == 1'b1))?1'b1:
	0)  ;
 assign iusrgo6dqsd5oxit6tmy3hs_899 = (
	((bd99li0ngeyqy8uzj6x_772 == 5'b01111) && (kx5bprt75gfmdny3cf6c0p228nyk_13 != 1'b1) && (x7kr6604zgq80hg3r3hz0ll3gvjnayr_92 == 1'b1))?1'b1:
	((tnlpl3ndhs3fs79z_821 != 7'b0000000) && (tnlpl3ndhs3fs79z_821 != 7'b0111111) && (kx5bprt75gfmdny3cf6c0p228nyk_13 != 1'b1) && (x7kr6604zgq80hg3r3hz0ll3gvjnayr_92 == 1'b1))?1'b1:
	0)  ;
 assign rent5u0yv9i7r5skrsju_684 = (
	((tnlpl3ndhs3fs79z_821 == 7'b0111111))?1'b1:
	0)  ;
 assign obeitwqjm71jx02cmu0_827 = 
	1'b1 ;
 assign n9t07l3hu1ce312hg5eq6_254 = 
	1'b0 ;
 assign fixl22swjr8z983mr8ifw2it08mda4gf_4 = 
	 ~(ccgmdl348we9o7cw01uk8u1ms520jd3t_165) ;
 assign r6mwvjjc6lzz8yilyjv_532 = (
	((tnlpl3ndhs3fs79z_821 == 7'b0111111))?1'b1:
	0)  ;
 assign x7kr6604zgq80hg3r3hz0ll3gvjnayr_92 = 
	1'b1 ;
 assign reset_out_active_high 	= pehs5xczy6gqbrygvwim_53 ;
 assign reset_out_active_low 	= qcwnngl1jw38ie6walo_15 ;


assign ccgmdl348we9o7cw01uk8u1ms520jd3t_165 = (
	((fchna0ulwb4spv5c6ql3t9kn_343 == 1'b1) && (bd99li0ngeyqy8uzj6x_772 < 5'b10000))?obeitwqjm71jx02cmu0_827 :
1'b0) ;



always @(posedge clk)
begin
		ohoh0bfga2hrikkfohb5hem9p_358 <= rst ;
		kx5bprt75gfmdny3cf6c0p228nyk_13 <= ohoh0bfga2hrikkfohb5hem9p_358 ;
	if (pq97n69wllx4p11pah7wsqf0ecob1o8_813) 
	begin 
	  bd99li0ngeyqy8uzj6x_772 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (oi0bv7sq3723xtbj9t9hyd0s25_367) 
		begin 
			bd99li0ngeyqy8uzj6x_772 <= cmptnm5z1xpam87h5ut_543 ;
		end 
	end 
	if (pq97n69wllx4p11pah7wsqf0ecob1o8_813) 
	begin 
	  tnlpl3ndhs3fs79z_821 <= 7'b0000000 ;
	 end 
	else 
	begin 
		if (iusrgo6dqsd5oxit6tmy3hs_899) 
		begin 
			tnlpl3ndhs3fs79z_821 <= d69hqh2qb1cx5ei0s7j4jp86cds_665 ;
		end 
	end 
	if (rst) 
	begin 
	  vwy6thiszr33w2eunvbtwpleqgokgab_775 <= 1'b1 ;
	 end 
	else 
	begin 
			vwy6thiszr33w2eunvbtwpleqgokgab_775 <= ccgmdl348we9o7cw01uk8u1ms520jd3t_165 ;
	end 
	if (rst) 
	begin 
	  mx5bh4fsszdjm0zkmhczd1_158 <= 1'b0 ;
	 end 
	else 
	begin 
			mx5bh4fsszdjm0zkmhczd1_158 <= fixl22swjr8z983mr8ifw2it08mda4gf_4 ;
	end 
	if (rst) 
	begin 
	  pehs5xczy6gqbrygvwim_53 <= 1'b1 ;
	 end 
	else 
	begin 
			pehs5xczy6gqbrygvwim_53 <= vwy6thiszr33w2eunvbtwpleqgokgab_775 ;
	end 
	if (rst) 
	begin 
	  qcwnngl1jw38ie6walo_15 <= 1'b0 ;
	 end 
	else 
	begin 
			qcwnngl1jw38ie6walo_15 <= mx5bh4fsszdjm0zkmhczd1_158 ;
	end 
		init_done <= r6mwvjjc6lzz8yilyjv_532 ;
end

endmodule 
