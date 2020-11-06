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
// File name: S_SYNCER_for_MyParser.v
// File created: 2020/11/05 15:52:01
// Created by: Xilinx SDNet Compiler version 2018.2, build 2342300

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_SYNCER_for_MyParser (
     packet_in_PACKET2_SOF, 
     packet_in_PACKET2_EOF, 
     packet_in_PACKET2_VAL, 
     packet_in_PACKET2_DAT, 
     packet_in_PACKET2_CNT, 
     packet_in_PACKET2_ERR, 
     packet_out_PACKET2_RDY, 
     tuple_in_TUPLE0_VALID, 
     tuple_in_TUPLE0_DATA, 
     tuple_in_TUPLE1_VALID, 
     tuple_in_TUPLE1_DATA, 
     backpressure_in, 


     packet_out_PACKET2_SOF, 
     packet_out_PACKET2_EOF, 
     packet_out_PACKET2_VAL, 
     packet_out_PACKET2_DAT, 
     packet_out_PACKET2_CNT, 
     packet_out_PACKET2_ERR, 
     packet_in_PACKET2_RDY, 
     tuple_out_TUPLE0_VALID, 
     tuple_out_TUPLE0_DATA, 
     tuple_out_TUPLE1_VALID, 
     tuple_out_TUPLE1_DATA, 
     backpressure_out, 

     clk_in_0, 
     clk_out_0, 
     clk_in_1, 
     clk_out_1, 
     clk_in_2, 
     clk_out_2, 
     rst_in_0, 
     rst_out_0, 
     rst_in_1, 
     rst_out_1, 
     rst_in_2, 
     rst_out_2 

);

//-------------------------------------------------------------
// I/O
//-------------------------------------------------------------
 input		packet_in_PACKET2_SOF ;
 input		packet_in_PACKET2_EOF ;
 input		packet_in_PACKET2_VAL ;
 input	 [255:0] packet_in_PACKET2_DAT ;
 input	 [5:0] packet_in_PACKET2_CNT ;
 input		packet_in_PACKET2_ERR ;
 input		packet_out_PACKET2_RDY ;
 input		tuple_in_TUPLE0_VALID ;
 input	 [127:0] tuple_in_TUPLE0_DATA ;
 input		tuple_in_TUPLE1_VALID ;
 input	 [22:0] tuple_in_TUPLE1_DATA ;
 input		backpressure_in ;
 output		packet_out_PACKET2_SOF ;
 output		packet_out_PACKET2_EOF ;
 output		packet_out_PACKET2_VAL ;
 output	 [255:0] packet_out_PACKET2_DAT ;
 output	 [5:0] packet_out_PACKET2_CNT ;
 output		packet_out_PACKET2_ERR ;
 output		packet_in_PACKET2_RDY ;
 output		tuple_out_TUPLE0_VALID ;
 output	 [127:0] tuple_out_TUPLE0_DATA ;
 output		tuple_out_TUPLE1_VALID ;
 output	 [22:0] tuple_out_TUPLE1_DATA ;
 output	reg	backpressure_out ;
 input		clk_in_0 ;
 input		clk_out_0 ;
 input		clk_in_1 ;
 input		clk_out_1 ;
 input		clk_in_2 ;
 input		clk_out_2 ;
 input		rst_in_0 ;
 input		rst_out_0 ;
 input		rst_in_1 ;
 input		rst_out_1 ;
 input		rst_in_2 ;
 input		rst_out_2 ;






 reg	n6u2f71sewl5mr1hl91mkt4_51;	 initial n6u2f71sewl5mr1hl91mkt4_51 = 1'b0 ;
 wire	thw9pa86uismzc9ye3rh9p_361 ;
 wire [265:0] bc0boe79x117hm8zu1ifp4ijbtgxs45_393 ;
 wire	z2j5sqv9p1ukx8akrq0fjz6li0_685 ;
 wire	k013pk6gnce54ij09y_898 ;
 wire	hcn67foavc07cxj9ru_717 ;
 wire [8:0] kio67vyroofhno8epu5thj_548 ;
 wire [8:0] w2zg867j19y3hmx69ck6q5rzwcc_239 ;
 wire	ixnq8xkvyf15yt26ypdqd7e3_770 ;
 wire	yy2xxy6nnfi62xul5_811 ;
 wire	dfwvynjqlgrj6uieu94b4a0r7p_26 ;
 wire	xcuz69huhmuxsqjg_280 ;
 wire	ol5cj037xadvgf9e6qz9_430 ;
 wire	ps86034ru04w0kx2war_249 ;
 wire	eyo5acvibkeoyyjrbnkobn3vk2_737 ;
 wire	v0itn3l98835agopyg9bkrc1efjcadqj_678 ;
 wire	o7qauhaivbxjkx8gs2p2q_895 ;
 wire	ey6ore2cm1d9vp24kjxikz23i6s_330 ;
 wire	zjatshzut9geekiohn0f1um_846 ;
 reg	resi5hrve5mhh9l9_131;	 initial resi5hrve5mhh9l9_131 = 1'b0 ;
 wire	coq36jpprobrqt0cs16um4tgsd5up36_47 ;
 reg	caco202xhblzb6vx7f4ispu2v_773;	 initial caco202xhblzb6vx7f4ispu2v_773 = 1'b0 ;
 reg	f2h0dgzd30swuoti1toimd0m15vaozs_877;	 initial f2h0dgzd30swuoti1toimd0m15vaozs_877 = 1'b0 ;
 wire	iuedd3utlot5zpe8_346 ;
 wire [0:0] oam3gvpnf5r0axoyydqcg_745 ;
 wire	rcttxz5v6alm6qvzgggxcvb8wqtsbf_841 ;
 wire	yf85veb6cbyzfpli3k_3 ;
 wire	r3kw0zvemyy9ugz0_325 ;
 wire [8:0] s8umw9a6nykjoijv_634 ;
 wire [8:0] fi8ch69j039l23dvx_146 ;
 wire	bpuovuqmjaw378kt75hbz1nxoqp8g_250 ;
 wire	jezzqkurqlsp0bgr5x5att0wygjrqd_153 ;
 wire	za28zzydvcyivkq932_434 ;
 wire	gahsgvlv3ps8mbp46ns_92 ;
 wire	f8magpjjckw19t1chji7em7_559 ;
 wire	n6bgw9zz95g7mba4o57z26meo02_464 ;
 wire	dalr1ybocljwklqj23r_428 ;
 wire	fvbjxsws8gu6j48eus1d_427 ;
 wire	e6w14jls95922yzuldivzyy254m8cok7_728 ;
 wire	vv15y7o9k8e63vehyo_586 ;
 reg [8:0] mgp8tooso10o3p374btjgb_832;	 initial mgp8tooso10o3p374btjgb_832 = 9'b000000000 ;
 reg	u827b839on2lf1a36pz1_222;	 initial u827b839on2lf1a36pz1_222 = 1'b0 ;
 wire	etab3vq09bd8b4uavcj2yff2ae8o2_18 ;
 wire [127:0] emh5bmlrc4v5klxs58iwwr07he9j_803 ;
 wire	k2p9jyfmrachgv2d00drzk1oqo_859 ;
 wire	jjz82xlhxcv8nqy1oha_857 ;
 wire	c05rv5tjipzxs3xm6a9qwyeilxm1_302 ;
 wire [7:0] ypkyfuakndstux3hwc6htf0wem4_264 ;
 wire [7:0] v7pqyj8zo33fi3gj91ptg93jglhy_169 ;
 wire	y06p1fogzkacvc37t9gr5cxsuy_402 ;
 wire	rgc5dnz04eil0e59cxbuuvarclb_351 ;
 wire	bxuon71srhvs4lc106z0gw950hpq_223 ;
 wire	k65sglsn4oj1ua88zro71_346 ;
 wire	ztsv69mh45vwkdhllsz0griwbuqe8s_827 ;
 wire	x9gh7aduoexeb76kk1yy5wacl32_523 ;
 wire	mgnid381nak0z658nil8rfhkql_295 ;
 wire	imqjkicyg8u6ozn8eb1t44df7_52 ;
 wire	a2quf3kafyltbkkvp9leekvaps090i_163 ;
 wire	elvfed6j7jkpzg7yegknzg0ajj_873 ;
 wire	l8so6o6x9hu1tw3efmv7gkq11nfr3_279 ;
 wire [22:0] rsjhhcgqjh57d381ukblc5w0_813 ;
 wire	wz6267c19vqt9h2336a508hwhjq7zf_731 ;
 wire	ooo7vz0psyq7iaw08807a_439 ;
 wire	sdc12nz3urvi54bgc24xufxei68vx5y_405 ;
 wire [7:0] tk5mr8q6jpjngm6no5eh_879 ;
 wire [7:0] geiuck0fnjgesvoxvza4yn_135 ;
 wire	iizohe4cpcmhs0bf1qjqolns731v_457 ;
 wire	fe5jgf61c4ky7m1vu78zpqu3zo_537 ;
 wire	x56n482xnhsabire9u_335 ;
 wire	xshfsu5kt2c9nre7w59ga708_420 ;
 wire	uwxqwjh6t062ku3gwtwpunin_274 ;
 wire	ff9n8oyl6ora1ssap3a_170 ;
 wire	mkkwlmv4z788l16i7x9n0pk879bi074_258 ;
 wire	fi7dosaxr3rul3djm8_731 ;
 wire	e1086qu4kkw7p7tnduwir9eag_406 ;
 wire	ncppld6zp9o1htzubpmebuovusg_139 ;
 reg	io3o5or2uh65cq5nzen7zp5uu6_590;	 initial io3o5or2uh65cq5nzen7zp5uu6_590 = 1'b0 ;
 reg	ltkvu8isyqkn84bwvec_334;	 initial ltkvu8isyqkn84bwvec_334 = 1'b0 ;
 reg	iwsyusc7jv46mmi5tgyaq9r_437;	 initial iwsyusc7jv46mmi5tgyaq9r_437 = 1'b0 ;
 wire	vz3sjw6j4hl07cqrtcouo3okoy1hf7v9_641 ;
 wire [265:0] c3678snvq4trm7iy4rj6upcqb_138 ;
 wire	ofjuzpdww3z802bgx3fnp0xm8b4w_746 ;
 wire [265:0] wewfmn9jl2954gql_555 ;
 wire	s4b09h6i8vnypjtws1exr_788 ;
 wire	zpyhcf1t5u4u77kz7kh5ddz6ldk65_326 ;
 wire	vtp86rr0t2uz7fpbdu_706 ;
 wire	e5ixu95oin4c94937yrk1bokagc_8 ;
 wire	btlg1my1mlb3di2xfqmi6rj1fy2_394 ;
 wire	wf23b51gccs97zw5b0w4pmh_572 ;
 wire	z40n03kepj72ewsmx_859 ;
 wire	trfj7efl19xeicgwzire9p_3 ;
 wire	poiacca9ilk12whb_586 ;
 wire	j5kxy8dltulzphfhbam8y56pvp_46 ;
 wire [5:0] ymave82qybithf2f6j1ypkwd_877 ;
 wire [255:0] wjucjqm7v0tkz8kvlm4rgj_505 ;
 wire	zy92e167dzt1e4kcdfo57d_564 ;
 wire	uhyy2nb0mdm1fxb9ojvv53afldtiw2_729 ;
 wire	bmhuluheegdi583rwe3047tj_132 ;
 wire	qn781eondfifk8es3d1y5zt4m5umwl_84 ;
 wire	tp6allntdt5z3galgjew36l1gs_316 ;
 wire [0:0] ompwu6pklolge1zv5r3bbrk_59 ;
 wire	eztpvsqnfjo86hd6awvf_247 ;
 wire	pwr9sf03pzsy8nej_867 ;
 wire [8:0] ov3r0dowlytl8yfccy2gnck7_607 ;
 wire	pyat4hkup94af2j3rahwcadpo4ic_443 ;
 wire	l3ttflzdwc1ghyve6k2ap3xc8gt3y4x_331 ;
 wire	y3nnyl76fs3gvngzrfkptierq24ijh_224 ;
 wire	hzovkopoouvcuudzv6zplbg9q6o2r7_471 ;
 wire	xs83rmrl8mpms40fdnp328sn7vnw6_584 ;
 wire	c6rcrb264p3cvnzzfzhjrpix5uoomgv_834 ;
 wire	ui9toszisbcgm1np9l8_455 ;
 wire [127:0] lzfwkf2we6a2dttty0bdi02gv_437 ;
 wire	s5iiowg3hj1r7o8hunr0_403 ;
 wire [127:0] lpcu6s8v9cc0on8ct6bgsqdd9_57 ;
 wire	nw8yykq1zk2j9wvgv5nfpgl9_258 ;
 wire	nflasynejzevtjnlqghuko_244 ;
 wire	lq6ymzvjfm8jtjdjukhl3bn4u98kp_461 ;
 wire [22:0] hb1jl7g0za0mtybfbu3fb5r_239 ;
 wire	sdpfcit2e84ycffy8g0wopdx6u_836 ;
 wire [22:0] nuc8ci8ql49evge5p35zbvfvhj5q3m_9 ;
 wire	r234uosiwn59r2czmwn2lhbsx_301 ;
 wire	omgukrgn8mb388wzapu59h5psg_652 ;
 wire	oicd3kkcdymmiud5su98bl55mx6ub1_543 ;
 wire	iaz8qmvna5humfneq3s14_439 ;
 wire	i8h4a2l8sgela1z6boaawr_657 ;


 assign vz3sjw6j4hl07cqrtcouo3okoy1hf7v9_641 = 
	 ~(backpressure_in) ;
 assign c3678snvq4trm7iy4rj6upcqb_138 = 
	{packet_in_PACKET2_SOF, packet_in_PACKET2_EOF, packet_in_PACKET2_VAL, packet_in_PACKET2_DAT, packet_in_PACKET2_CNT, packet_in_PACKET2_ERR} ;
 assign ofjuzpdww3z802bgx3fnp0xm8b4w_746 	= packet_in_PACKET2_VAL ;
 assign wewfmn9jl2954gql_555 	= c3678snvq4trm7iy4rj6upcqb_138[265:0] ;
 assign s4b09h6i8vnypjtws1exr_788 = 
	hzovkopoouvcuudzv6zplbg9q6o2r7_471 | iaz8qmvna5humfneq3s14_439 ;
 assign zpyhcf1t5u4u77kz7kh5ddz6ldk65_326 = 
	1'b0 ;
 assign vtp86rr0t2uz7fpbdu_706 = 
	1'b1 ;
 assign e5ixu95oin4c94937yrk1bokagc_8 = 
	 ~(coq36jpprobrqt0cs16um4tgsd5up36_47) ;
 assign btlg1my1mlb3di2xfqmi6rj1fy2_394 = 
	vz3sjw6j4hl07cqrtcouo3okoy1hf7v9_641 & c6rcrb264p3cvnzzfzhjrpix5uoomgv_834 & s4b09h6i8vnypjtws1exr_788 ;
 assign wf23b51gccs97zw5b0w4pmh_572 	= btlg1my1mlb3di2xfqmi6rj1fy2_394 ;
 assign z40n03kepj72ewsmx_859 	= wf23b51gccs97zw5b0w4pmh_572 ;
 assign trfj7efl19xeicgwzire9p_3 = 
	1'b0 ;
 assign poiacca9ilk12whb_586 = 
	 ~(z2j5sqv9p1ukx8akrq0fjz6li0_685) ;
 assign j5kxy8dltulzphfhbam8y56pvp_46 	= bc0boe79x117hm8zu1ifp4ijbtgxs45_393[0] ;
 assign ymave82qybithf2f6j1ypkwd_877 	= bc0boe79x117hm8zu1ifp4ijbtgxs45_393[6:1] ;
 assign wjucjqm7v0tkz8kvlm4rgj_505 	= bc0boe79x117hm8zu1ifp4ijbtgxs45_393[262:7] ;
 assign zy92e167dzt1e4kcdfo57d_564 	= bc0boe79x117hm8zu1ifp4ijbtgxs45_393[263] ;
 assign uhyy2nb0mdm1fxb9ojvv53afldtiw2_729 	= bc0boe79x117hm8zu1ifp4ijbtgxs45_393[264] ;
 assign bmhuluheegdi583rwe3047tj_132 	= bc0boe79x117hm8zu1ifp4ijbtgxs45_393[265] ;
 assign qn781eondfifk8es3d1y5zt4m5umwl_84 = 
	f2h0dgzd30swuoti1toimd0m15vaozs_877 & zy92e167dzt1e4kcdfo57d_564 ;
 assign tp6allntdt5z3galgjew36l1gs_316 	= packet_in_PACKET2_VAL ;
 assign ompwu6pklolge1zv5r3bbrk_59 = packet_in_PACKET2_SOF ;
 assign eztpvsqnfjo86hd6awvf_247 	= wf23b51gccs97zw5b0w4pmh_572 ;
 assign pwr9sf03pzsy8nej_867 = 
	1'b0 ;
 assign ov3r0dowlytl8yfccy2gnck7_607 	= s8umw9a6nykjoijv_634[8:0] ;
 assign pyat4hkup94af2j3rahwcadpo4ic_443 = (
	((ov3r0dowlytl8yfccy2gnck7_607 != mgp8tooso10o3p374btjgb_832))?1'b1:
	0)  ;
 assign l3ttflzdwc1ghyve6k2ap3xc8gt3y4x_331 = oam3gvpnf5r0axoyydqcg_745 ;
 assign y3nnyl76fs3gvngzrfkptierq24ijh_224 = oam3gvpnf5r0axoyydqcg_745 ;
 assign hzovkopoouvcuudzv6zplbg9q6o2r7_471 = 
	 ~(y3nnyl76fs3gvngzrfkptierq24ijh_224) ;
 assign xs83rmrl8mpms40fdnp328sn7vnw6_584 	= rcttxz5v6alm6qvzgggxcvb8wqtsbf_841 ;
 assign c6rcrb264p3cvnzzfzhjrpix5uoomgv_834 = 
	 ~(rcttxz5v6alm6qvzgggxcvb8wqtsbf_841) ;
 assign ui9toszisbcgm1np9l8_455 = 
	vz3sjw6j4hl07cqrtcouo3okoy1hf7v9_641 & iaz8qmvna5humfneq3s14_439 & c6rcrb264p3cvnzzfzhjrpix5uoomgv_834 & l3ttflzdwc1ghyve6k2ap3xc8gt3y4x_331 ;
 assign lzfwkf2we6a2dttty0bdi02gv_437 = 
	tuple_in_TUPLE0_DATA ;
 assign s5iiowg3hj1r7o8hunr0_403 	= tuple_in_TUPLE0_VALID ;
 assign lpcu6s8v9cc0on8ct6bgsqdd9_57 	= lzfwkf2we6a2dttty0bdi02gv_437[127:0] ;
 assign nw8yykq1zk2j9wvgv5nfpgl9_258 = 
	 ~(k2p9jyfmrachgv2d00drzk1oqo_859) ;
 assign nflasynejzevtjnlqghuko_244 	= ui9toszisbcgm1np9l8_455 ;
 assign lq6ymzvjfm8jtjdjukhl3bn4u98kp_461 = 
	1'b0 ;
 assign hb1jl7g0za0mtybfbu3fb5r_239 = 
	tuple_in_TUPLE1_DATA ;
 assign sdpfcit2e84ycffy8g0wopdx6u_836 	= tuple_in_TUPLE1_VALID ;
 assign nuc8ci8ql49evge5p35zbvfvhj5q3m_9 	= hb1jl7g0za0mtybfbu3fb5r_239[22:0] ;
 assign r234uosiwn59r2czmwn2lhbsx_301 = 
	 ~(wz6267c19vqt9h2336a508hwhjq7zf_731) ;
 assign omgukrgn8mb388wzapu59h5psg_652 	= ui9toszisbcgm1np9l8_455 ;
 assign oicd3kkcdymmiud5su98bl55mx6ub1_543 = 
	1'b0 ;
 assign iaz8qmvna5humfneq3s14_439 = 
	poiacca9ilk12whb_586 & nw8yykq1zk2j9wvgv5nfpgl9_258 & r234uosiwn59r2czmwn2lhbsx_301 ;
 assign i8h4a2l8sgela1z6boaawr_657 = 
	io3o5or2uh65cq5nzen7zp5uu6_590 | ltkvu8isyqkn84bwvec_334 | iwsyusc7jv46mmi5tgyaq9r_437 ;
 assign packet_out_PACKET2_SOF 	= bmhuluheegdi583rwe3047tj_132 ;
 assign packet_out_PACKET2_EOF 	= uhyy2nb0mdm1fxb9ojvv53afldtiw2_729 ;
 assign packet_out_PACKET2_VAL 	= qn781eondfifk8es3d1y5zt4m5umwl_84 ;
 assign packet_out_PACKET2_DAT 	= wjucjqm7v0tkz8kvlm4rgj_505[255:0] ;
 assign packet_out_PACKET2_CNT 	= ymave82qybithf2f6j1ypkwd_877[5:0] ;
 assign packet_out_PACKET2_ERR 	= j5kxy8dltulzphfhbam8y56pvp_46 ;
 assign packet_in_PACKET2_RDY 	= packet_out_PACKET2_RDY ;
 assign tuple_out_TUPLE0_VALID 	= u827b839on2lf1a36pz1_222 ;
 assign tuple_out_TUPLE0_DATA 	= emh5bmlrc4v5klxs58iwwr07he9j_803[127:0] ;
 assign tuple_out_TUPLE1_VALID 	= u827b839on2lf1a36pz1_222 ;
 assign tuple_out_TUPLE1_DATA 	= rsjhhcgqjh57d381ukblc5w0_813[22:0] ;


assign zjatshzut9geekiohn0f1um_846 = (
	((wf23b51gccs97zw5b0w4pmh_572 == 1'b1))?vtp86rr0t2uz7fpbdu_706 :
	((vz3sjw6j4hl07cqrtcouo3okoy1hf7v9_641 == 1'b1))?zpyhcf1t5u4u77kz7kh5ddz6ldk65_326 :
	resi5hrve5mhh9l9_131 ) ;

assign coq36jpprobrqt0cs16um4tgsd5up36_47 = (
	((resi5hrve5mhh9l9_131 == 1'b1) && (vz3sjw6j4hl07cqrtcouo3okoy1hf7v9_641 == 1'b1))?zpyhcf1t5u4u77kz7kh5ddz6ldk65_326 :
	resi5hrve5mhh9l9_131 ) ;



always @(posedge clk_out_0)
begin
  if (rst_in_0) 
  begin
	n6u2f71sewl5mr1hl91mkt4_51 <= 1'b0 ;
	resi5hrve5mhh9l9_131 <= 1'b0 ;
	caco202xhblzb6vx7f4ispu2v_773 <= 1'b0 ;
	f2h0dgzd30swuoti1toimd0m15vaozs_877 <= 1'b0 ;
	mgp8tooso10o3p374btjgb_832 <= 9'b000000000 ;
	io3o5or2uh65cq5nzen7zp5uu6_590 <= 1'b0 ;
	backpressure_out <= 1'b0 ;
   end
  else
  begin
		n6u2f71sewl5mr1hl91mkt4_51 <= backpressure_in ;
		resi5hrve5mhh9l9_131 <= zjatshzut9geekiohn0f1um_846 ;
		caco202xhblzb6vx7f4ispu2v_773 <= poiacca9ilk12whb_586 ;
		f2h0dgzd30swuoti1toimd0m15vaozs_877 <= wf23b51gccs97zw5b0w4pmh_572 ;
		mgp8tooso10o3p374btjgb_832 <= ov3r0dowlytl8yfccy2gnck7_607 ;
		io3o5or2uh65cq5nzen7zp5uu6_590 <= k013pk6gnce54ij09y_898 ;
		backpressure_out <= i8h4a2l8sgela1z6boaawr_657 ;
  end
end

always @(posedge clk_out_1)
begin
  if (rst_in_0) 
  begin
	u827b839on2lf1a36pz1_222 <= 1'b0 ;
	ltkvu8isyqkn84bwvec_334 <= 1'b0 ;
   end
  else
  begin
		u827b839on2lf1a36pz1_222 <= ui9toszisbcgm1np9l8_455 ;
		ltkvu8isyqkn84bwvec_334 <= jjz82xlhxcv8nqy1oha_857 ;
  end
end

always @(posedge clk_out_2)
begin
  if (rst_in_0) 
  begin
	iwsyusc7jv46mmi5tgyaq9r_437 <= 1'b0 ;
   end
  else
  begin
		iwsyusc7jv46mmi5tgyaq9r_437 <= ooo7vz0psyq7iaw08807a_439 ;
  end
end

defparam sng5v8im6mgqay8jzd0kr_2611.WRITE_DATA_WIDTH = 266; 
defparam sng5v8im6mgqay8jzd0kr_2611.FIFO_WRITE_DEPTH = 512; 
defparam sng5v8im6mgqay8jzd0kr_2611.PROG_FULL_THRESH = 129; 
defparam sng5v8im6mgqay8jzd0kr_2611.PROG_EMPTY_THRESH = 129; 
defparam sng5v8im6mgqay8jzd0kr_2611.READ_MODE = "STD"; 
defparam sng5v8im6mgqay8jzd0kr_2611.WR_DATA_COUNT_WIDTH = 9; 
defparam sng5v8im6mgqay8jzd0kr_2611.RD_DATA_COUNT_WIDTH = 9; 
defparam sng5v8im6mgqay8jzd0kr_2611.DOUT_RESET_VALUE = "0"; 
defparam sng5v8im6mgqay8jzd0kr_2611.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_sync sng5v8im6mgqay8jzd0kr_2611 (
	.wr_en(ofjuzpdww3z802bgx3fnp0xm8b4w_746),
	.din(wewfmn9jl2954gql_555),
	.rd_en(z40n03kepj72ewsmx_859),
	.sleep(trfj7efl19xeicgwzire9p_3),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(thw9pa86uismzc9ye3rh9p_361), 
	.dout(bc0boe79x117hm8zu1ifp4ijbtgxs45_393), 
	.empty(z2j5sqv9p1ukx8akrq0fjz6li0_685), 
	.prog_full(k013pk6gnce54ij09y_898), 
	.full(hcn67foavc07cxj9ru_717), 
	.rd_data_count(kio67vyroofhno8epu5thj_548), 
	.wr_data_count(w2zg867j19y3hmx69ck6q5rzwcc_239), 
	.wr_rst_busy(ixnq8xkvyf15yt26ypdqd7e3_770), 
	.rd_rst_busy(yy2xxy6nnfi62xul5_811), 
	.overflow(dfwvynjqlgrj6uieu94b4a0r7p_26), 
	.underflow(xcuz69huhmuxsqjg_280), 
	.sbiterr(ol5cj037xadvgf9e6qz9_430), 
	.dbiterr(ps86034ru04w0kx2war_249), 
	.almost_empty(eyo5acvibkeoyyjrbnkobn3vk2_737), 
	.almost_full(v0itn3l98835agopyg9bkrc1efjcadqj_678), 
	.wr_ack(o7qauhaivbxjkx8gs2p2q_895), 
	.data_valid(ey6ore2cm1d9vp24kjxikz23i6s_330), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam c7ud0a3glc4j520l_1331.WRITE_DATA_WIDTH = 1; 
defparam c7ud0a3glc4j520l_1331.FIFO_WRITE_DEPTH = 512; 
defparam c7ud0a3glc4j520l_1331.PROG_FULL_THRESH = 129; 
defparam c7ud0a3glc4j520l_1331.PROG_EMPTY_THRESH = 129; 
defparam c7ud0a3glc4j520l_1331.READ_MODE = "FWFT"; 
defparam c7ud0a3glc4j520l_1331.WR_DATA_COUNT_WIDTH = 9; 
defparam c7ud0a3glc4j520l_1331.RD_DATA_COUNT_WIDTH = 9; 
defparam c7ud0a3glc4j520l_1331.DOUT_RESET_VALUE = "0"; 
defparam c7ud0a3glc4j520l_1331.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_sync c7ud0a3glc4j520l_1331 (
	.wr_en(tp6allntdt5z3galgjew36l1gs_316),
	.din(ompwu6pklolge1zv5r3bbrk_59),
	.rd_en(eztpvsqnfjo86hd6awvf_247),
	.sleep(pwr9sf03pzsy8nej_867),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(iuedd3utlot5zpe8_346), 
	.dout(oam3gvpnf5r0axoyydqcg_745), 
	.empty(rcttxz5v6alm6qvzgggxcvb8wqtsbf_841), 
	.prog_full(yf85veb6cbyzfpli3k_3), 
	.full(r3kw0zvemyy9ugz0_325), 
	.rd_data_count(s8umw9a6nykjoijv_634), 
	.wr_data_count(fi8ch69j039l23dvx_146), 
	.wr_rst_busy(bpuovuqmjaw378kt75hbz1nxoqp8g_250), 
	.rd_rst_busy(jezzqkurqlsp0bgr5x5att0wygjrqd_153), 
	.overflow(za28zzydvcyivkq932_434), 
	.underflow(gahsgvlv3ps8mbp46ns_92), 
	.sbiterr(f8magpjjckw19t1chji7em7_559), 
	.dbiterr(n6bgw9zz95g7mba4o57z26meo02_464), 
	.almost_empty(dalr1ybocljwklqj23r_428), 
	.almost_full(fvbjxsws8gu6j48eus1d_427), 
	.wr_ack(e6w14jls95922yzuldivzyy254m8cok7_728), 
	.data_valid(vv15y7o9k8e63vehyo_586), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam pkr77chel9mc39d1mxnn_596.WRITE_DATA_WIDTH = 128; 
defparam pkr77chel9mc39d1mxnn_596.FIFO_WRITE_DEPTH = 256; 
defparam pkr77chel9mc39d1mxnn_596.PROG_FULL_THRESH = 66; 
defparam pkr77chel9mc39d1mxnn_596.PROG_EMPTY_THRESH = 66; 
defparam pkr77chel9mc39d1mxnn_596.READ_MODE = "STD"; 
defparam pkr77chel9mc39d1mxnn_596.WR_DATA_COUNT_WIDTH = 8; 
defparam pkr77chel9mc39d1mxnn_596.RD_DATA_COUNT_WIDTH = 8; 
defparam pkr77chel9mc39d1mxnn_596.DOUT_RESET_VALUE = "0"; 
defparam pkr77chel9mc39d1mxnn_596.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async pkr77chel9mc39d1mxnn_596 (
	.wr_en(s5iiowg3hj1r7o8hunr0_403),
	.din(lpcu6s8v9cc0on8ct6bgsqdd9_57),
	.rd_en(nflasynejzevtjnlqghuko_244),
	.sleep(lq6ymzvjfm8jtjdjukhl3bn4u98kp_461),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(etab3vq09bd8b4uavcj2yff2ae8o2_18), 
	.dout(emh5bmlrc4v5klxs58iwwr07he9j_803), 
	.empty(k2p9jyfmrachgv2d00drzk1oqo_859), 
	.prog_full(jjz82xlhxcv8nqy1oha_857), 
	.full(c05rv5tjipzxs3xm6a9qwyeilxm1_302), 
	.rd_data_count(ypkyfuakndstux3hwc6htf0wem4_264), 
	.wr_data_count(v7pqyj8zo33fi3gj91ptg93jglhy_169), 
	.wr_rst_busy(y06p1fogzkacvc37t9gr5cxsuy_402), 
	.rd_rst_busy(rgc5dnz04eil0e59cxbuuvarclb_351), 
	.overflow(bxuon71srhvs4lc106z0gw950hpq_223), 
	.underflow(k65sglsn4oj1ua88zro71_346), 
	.sbiterr(ztsv69mh45vwkdhllsz0griwbuqe8s_827), 
	.dbiterr(x9gh7aduoexeb76kk1yy5wacl32_523), 
	.almost_empty(mgnid381nak0z658nil8rfhkql_295), 
	.almost_full(imqjkicyg8u6ozn8eb1t44df7_52), 
	.wr_ack(a2quf3kafyltbkkvp9leekvaps090i_163), 
	.data_valid(elvfed6j7jkpzg7yegknzg0ajj_873), 

	.wr_clk(clk_in_1), 

	.rd_clk(clk_out_1), 
	.rst(rst_in_1) 
); 

defparam q93yuat7lmneria8gkb5hufqig226_1112.WRITE_DATA_WIDTH = 23; 
defparam q93yuat7lmneria8gkb5hufqig226_1112.FIFO_WRITE_DEPTH = 256; 
defparam q93yuat7lmneria8gkb5hufqig226_1112.PROG_FULL_THRESH = 65; 
defparam q93yuat7lmneria8gkb5hufqig226_1112.PROG_EMPTY_THRESH = 65; 
defparam q93yuat7lmneria8gkb5hufqig226_1112.READ_MODE = "STD"; 
defparam q93yuat7lmneria8gkb5hufqig226_1112.WR_DATA_COUNT_WIDTH = 8; 
defparam q93yuat7lmneria8gkb5hufqig226_1112.RD_DATA_COUNT_WIDTH = 8; 
defparam q93yuat7lmneria8gkb5hufqig226_1112.DOUT_RESET_VALUE = "0"; 
defparam q93yuat7lmneria8gkb5hufqig226_1112.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_async q93yuat7lmneria8gkb5hufqig226_1112 (
	.wr_en(sdpfcit2e84ycffy8g0wopdx6u_836),
	.din(nuc8ci8ql49evge5p35zbvfvhj5q3m_9),
	.rd_en(omgukrgn8mb388wzapu59h5psg_652),
	.sleep(oicd3kkcdymmiud5su98bl55mx6ub1_543),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(l8so6o6x9hu1tw3efmv7gkq11nfr3_279), 
	.dout(rsjhhcgqjh57d381ukblc5w0_813), 
	.empty(wz6267c19vqt9h2336a508hwhjq7zf_731), 
	.prog_full(ooo7vz0psyq7iaw08807a_439), 
	.full(sdc12nz3urvi54bgc24xufxei68vx5y_405), 
	.rd_data_count(tk5mr8q6jpjngm6no5eh_879), 
	.wr_data_count(geiuck0fnjgesvoxvza4yn_135), 
	.wr_rst_busy(iizohe4cpcmhs0bf1qjqolns731v_457), 
	.rd_rst_busy(fe5jgf61c4ky7m1vu78zpqu3zo_537), 
	.overflow(x56n482xnhsabire9u_335), 
	.underflow(xshfsu5kt2c9nre7w59ga708_420), 
	.sbiterr(uwxqwjh6t062ku3gwtwpunin_274), 
	.dbiterr(ff9n8oyl6ora1ssap3a_170), 
	.almost_empty(mkkwlmv4z788l16i7x9n0pk879bi074_258), 
	.almost_full(fi7dosaxr3rul3djm8_731), 
	.wr_ack(e1086qu4kkw7p7tnduwir9eag_406), 
	.data_valid(ncppld6zp9o1htzubpmebuovusg_139), 

	.wr_clk(clk_in_2), 

	.rd_clk(clk_out_2), 
	.rst(rst_in_2) 
); 

endmodule 
