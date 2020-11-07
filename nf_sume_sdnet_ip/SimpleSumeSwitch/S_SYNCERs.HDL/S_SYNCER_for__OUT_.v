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
// File name: S_SYNCER_for__OUT_.v
// File created: 2020/11/07 02:06:21
// Created by: Xilinx SDNet Compiler version 2018.2, build 2342300

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_SYNCER_for__OUT_ (
     packet_in_PACKET2_TVALID, 
     packet_in_PACKET2_TDATA, 
     packet_in_PACKET2_TKEEP, 
     packet_in_PACKET2_TLAST, 
     packet_out_PACKET2_TREADY, 
     tuple_in_TUPLE0_VALID, 
     tuple_in_TUPLE0_DATA, 
     tuple_in_TUPLE1_VALID, 
     tuple_in_TUPLE1_DATA, 
     backpressure_in, 


     packet_out_PACKET2_TVALID, 
     packet_out_PACKET2_TDATA, 
     packet_out_PACKET2_TKEEP, 
     packet_out_PACKET2_TLAST, 
     packet_in_PACKET2_TREADY, 
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
 input		packet_in_PACKET2_TVALID ;
 input	 [255:0] packet_in_PACKET2_TDATA ;
 input	 [31:0] packet_in_PACKET2_TKEEP ;
 input		packet_in_PACKET2_TLAST ;
 input		packet_out_PACKET2_TREADY ;
 input		tuple_in_TUPLE0_VALID ;
 input	 [255:0] tuple_in_TUPLE0_DATA ;
 input		tuple_in_TUPLE1_VALID ;
 input	 [127:0] tuple_in_TUPLE1_DATA ;
 input		backpressure_in ;
 output		packet_out_PACKET2_TVALID ;
 output	 [255:0] packet_out_PACKET2_TDATA ;
 output	 [31:0] packet_out_PACKET2_TKEEP ;
 output		packet_out_PACKET2_TLAST ;
 output		packet_in_PACKET2_TREADY ;
 output		tuple_out_TUPLE0_VALID ;
 output	 [255:0] tuple_out_TUPLE0_DATA ;
 output		tuple_out_TUPLE1_VALID ;
 output	 [127:0] tuple_out_TUPLE1_DATA ;
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






 reg	cx8w80yirz01965ovmbt_809;	 initial cx8w80yirz01965ovmbt_809 = 1'b0 ;
 wire	pks9jbuebo76exs2vrmroxot_372 ;
 wire [289:0] evbroqc5euwpuy8z2b6c1ghnr_895 ;
 wire	tprfmp0q9q35auclquzc05_879 ;
 wire	smqf4gxu8ge207bph9vs43aci_225 ;
 wire	li9m5aviil8yc7a9txs8cxzw_245 ;
 wire [8:0] vv81q07u5b8wrf3kjee6g8m9s_240 ;
 wire [8:0] syi30dn8izds2qr2jxjn_389 ;
 wire	m8ay4uhx3otre2sw5ets_320 ;
 wire	ylg2q8lg9i6bigmwuabjjh8b57arr5_47 ;
 wire	imol0nlbjtw2ey5uf5cl_549 ;
 wire	mijb6u2davnlk7kioqpgrx_888 ;
 wire	ysqjfwrdjyx643loaiyqa3fdzjm9o2_196 ;
 wire	k8p5jibm3pvdvkc70neid57nih2v_499 ;
 wire	wtyyjuu0zupc5szgopcth_749 ;
 wire	tbk92extu7u4lti00oufmvg_530 ;
 wire	uheqmukpsra1ayof96p_117 ;
 wire	ppywl7s4nbgpxr0w7lpqqznf_343 ;
 wire	pc72ubyhbeewwc34oevf93sau9pui8_741 ;
 reg	ehvxprnti60inwq9enr4x_840;	 initial ehvxprnti60inwq9enr4x_840 = 1'b0 ;
 wire	uxmqqhd4jmgw1ikxf0szule8xl_358 ;
 reg	chx86q2jt9r2snlq8dohdzpsrdeu_472;	 initial chx86q2jt9r2snlq8dohdzpsrdeu_472 = 1'b0 ;
 reg	c595do9rwdupj1sjd5hjpoj47lmjk7yw_756;	 initial c595do9rwdupj1sjd5hjpoj47lmjk7yw_756 = 1'b0 ;
 wire	ohfblg8zqwett2rvon_724 ;
 wire [0:0] gf9qzlmlr27p64hoolnpy_334 ;
 wire	id2uwm8eu9y0wtkk40r5cezz96r_444 ;
 wire	tdr3ym7eg1ouhwkhs_153 ;
 wire	rmlhkgvsos3xz6awdzwf1d_37 ;
 wire [8:0] c18k38jad9u8m16fni4zeprfh_322 ;
 wire [8:0] o3ls1sfqubdzyu4p5mvu2u73zl3_283 ;
 wire	ina0ycdul9vdqzste0hab11y_388 ;
 wire	ay3cfshi4vnmhcxa_735 ;
 wire	berzanc60hy7x8dq83ud3_799 ;
 wire	cul28ss0ewkxc86ajnwu4_387 ;
 wire	eh82iin6wf0what8ytbyjcmb7ooi_147 ;
 wire	nc0j8ypc8h13nrfj_549 ;
 wire	vv7bw5a0h44pv9nbj8pjwntlols_748 ;
 wire	b5zqnis5puwe8g8gwrlwkby_580 ;
 wire	zjw26fqa0gu4dd5oi0ii55dl3clbx_744 ;
 wire	s3lhgi7ebtrxeovyp2ylnutsdt_520 ;
 reg	lv1cilc8q0bfssebh43uopybid_883;	 initial lv1cilc8q0bfssebh43uopybid_883 = 1'b0 ;
 reg	uq301vkperre9xp8tz1y7ktao6byv_604;	 initial uq301vkperre9xp8tz1y7ktao6byv_604 = 1'b1 ;
 reg [8:0] brhks8sn80b3n3deq_87;	 initial brhks8sn80b3n3deq_87 = 9'b000000000 ;
 reg	acpp34wa9wo278tk2h73wu3_176;	 initial acpp34wa9wo278tk2h73wu3_176 = 1'b0 ;
 wire	bi0c4h46jip1v68sn8_553 ;
 wire [255:0] exehcr9jruxj4yhzcsgpjv_905 ;
 wire	ivqi0nnxqke9brl2ao7q7fl02m_331 ;
 wire	obc4p4ouajqnywdpq_229 ;
 wire	xje2co821tiv1yu4l_58 ;
 wire [7:0] v7bqd9xdekdd6mqce1t9nsa_64 ;
 wire [7:0] jq57d8cyp3aa17aq_470 ;
 wire	vl7i54k49gs13qcaggl797e7tvy8v_247 ;
 wire	et8ony3ngp94pcx3ah_3 ;
 wire	eqgjamqrou5heafy4khl1plz69n3403_187 ;
 wire	ei36xwb3vlccux55jcysy6qe2mrf_476 ;
 wire	f9blecj6vfo2ryjti2ztk_686 ;
 wire	agrp5maojtjja7ty15olg6ceeq_223 ;
 wire	fuuoddp1af539t7cju1vzmw_720 ;
 wire	idjgxjshe4znve743ody4npi4nbu3_156 ;
 wire	c727j1p2gfb24lkbwcs1ije3b7sd_492 ;
 wire	qebednajs8p2obemu_68 ;
 wire	fs9wek5otmzkiynkr_217 ;
 wire [127:0] ubzizgg70b4ss9cttcvv17v22q7dmu_443 ;
 wire	j19oxjdvnvaogs6l6_79 ;
 wire	gv0rkzh4is316qjzd04iy3u_65 ;
 wire	z1mkrhqr8bd9b7pjaf50xxb3ioufpav_320 ;
 wire [7:0] z6mvfes28ir72775v6qa2epl_506 ;
 wire [7:0] v7dzmtc3lzkz4vjh4evlpa2wpy0t1fj_874 ;
 wire	ss63ia5te4g4sxmhzpnxi3a3fpet0tp_606 ;
 wire	ec2tz4m9co4lm0oy3er_446 ;
 wire	y93xabkok3ujmskm4poh5js_339 ;
 wire	z66bzuco2svn9sr4gm_190 ;
 wire	l0cki18n1a9r6kezbenk_488 ;
 wire	hpjz8gmvshwion0d40zyw_256 ;
 wire	hh6dn2oij87u6513lkrcegzo16xgxfm_20 ;
 wire	q6x42eo26lna4spqj787hv8z8ge5_639 ;
 wire	u3uev4bopnl0pbv1ot6egbc6tt_479 ;
 wire	if8okuuggv1f1mqbhzr8alew3qhwt_454 ;
 reg	rr31knofeb0irhhlb_480;	 initial rr31knofeb0irhhlb_480 = 1'b0 ;
 reg	r0i5aggou385olbtbf5txmdbb_54;	 initial r0i5aggou385olbtbf5txmdbb_54 = 1'b0 ;
 reg	h96dodwlmlmkhnd4zne1g9sa0teuizb_398;	 initial h96dodwlmlmkhnd4zne1g9sa0teuizb_398 = 1'b0 ;
 wire	t59qvdyeijexq04y8zvhq7f9rkz9_686 ;
 wire [289:0] a5hdbx7i7heh31ax_194 ;
 wire	o56w6b5a7915fd6gy03m7ao7ibp0m_585 ;
 wire [289:0] xvd4tac539a3vj1gml6j924iufo845_737 ;
 wire	zsd2k42wuaf4o0znaj79_707 ;
 wire	erto1466wtg5ffol8xgrv5ebro1u6_459 ;
 wire	kgp7fxhurkivana4wludbs2j1j_470 ;
 wire	tqupnczrej290g3tuzy6_481 ;
 wire	kpxplnch7xq90r3x88uvsjx7v_743 ;
 wire	vz74xqsm571ike3nny5evt_274 ;
 wire	oa1kcjqt7gadl8jtvir8z25etn7zqfmc_519 ;
 wire	ccppfx0681tb67hjwlj7hh8_96 ;
 wire	anr1zutxuge4xs5qp2v9ua3_438 ;
 wire	khyhrs0634hoz9mioz4fn_154 ;
 wire	a5wlrjq4szpdcym7s6k93atk58lc1zl1_705 ;
 wire	q6p89hfodzz4uhkfx4itjl_180 ;
 wire	n3vlm1dokz99q67z_651 ;
 wire	qp1pwwaq5bh6014jaho8tul8ixu0m_290 ;
 wire [31:0] eda2k4l7sg8mol51v6uv9l_281 ;
 wire [255:0] lyzq9ma45beixdp27k9b9tb_526 ;
 wire	qn5vdjavp0vbr6ymk2dhe8cqut_851 ;
 wire	zvgftng41c9bzf8j6gvq1wivu10_522 ;
 wire	v2s21n8tume8zqvutxt_548 ;
 wire	yi4qewzeb44u8h2oug_674 ;
 wire	moaeike6rlmfqshobpm_259 ;
 wire	qlckqbkumefr5qcny9jx5ka_165 ;
 wire	hp8y2pgz12u9yjc9t0y84_846 ;
 wire	qic4f134cbtorq0cx63it553vkyaqw_565 ;
 wire	jip6rtyim2448obfaa_447 ;
 wire	y17aqu05ajufpnm9wptuozy_759 ;
 wire	tgxv2ttcmm4bmrmx_782 ;
 wire	g7syrpmdc2s3frjzw9yruxpm89t8ozk_367 ;
 wire	k97nlssrcefag2cnj24i9khvj5_187 ;
 wire	dd58lukr1lnxi5wqcwiwgka9bdywz6x_571 ;
 wire	j49ennj8czz64doy9iqfgm84skq6_768 ;
 wire	blan1gt1fzxqtlx9gs86_891 ;
 wire [0:0] vjk0lli1z754t99bjwkxcj_118 ;
 wire	fpn3d44nf7x0uw9jir2cr3per5771o_305 ;
 wire	ftfoayuijrb4jj5fetp3w_802 ;
 wire [8:0] czabp9h2m1e6j488v1u7_164 ;
 wire	ipgg6vc1jbhlzuii86qv_749 ;
 wire	nrrkebi2agfjc06vppeyl0_878 ;
 wire	izh3jnaxksi4lp79_78 ;
 wire	hh9trhpvi1tcv50e066k_46 ;
 wire	b81cokgm1ybsf61cg6kiih7mva_267 ;
 wire	g6ox67hy72bhmypjk97ky_756 ;
 wire	qyrfvbjvgo2e1nrdcush7_604 ;
 wire [255:0] bgq1cov35i7bd43i5qz62j86jmz_2 ;
 wire	fsldx7phjnj7pxmyqc3hfhmsmg31kry_691 ;
 wire [255:0] whgyllzqzo2zj5d5vw_276 ;
 wire	h3k670sitn5fldrh4w_470 ;
 wire	krwemdew4wp3i3ajbtw9ry6h5053el_755 ;
 wire	h5jx3xn2r35tvg6d24ys49_38 ;
 wire [127:0] ku17cqlf0jtfb90y71cjt_33 ;
 wire	k28c6yj1t9okuh54e10v0gb92tchs_889 ;
 wire [127:0] ryv8ps0qcgl43wg68epojz_288 ;
 wire	c2l7bpnk9ke1mlmuf_119 ;
 wire	i3i907218pu8l2b8s_561 ;
 wire	d59fyc35g0yxnblqcy_162 ;
 wire	cb652hrsrivevzose_300 ;
 wire	h7str28veskkz4n7a_535 ;


 assign t59qvdyeijexq04y8zvhq7f9rkz9_686 = 
	 ~(backpressure_in) ;
 assign a5hdbx7i7heh31ax_194 = 
	{packet_in_PACKET2_TVALID, packet_in_PACKET2_TDATA, packet_in_PACKET2_TKEEP, packet_in_PACKET2_TLAST} ;
 assign o56w6b5a7915fd6gy03m7ao7ibp0m_585 	= packet_in_PACKET2_TVALID ;
 assign xvd4tac539a3vj1gml6j924iufo845_737 	= a5hdbx7i7heh31ax_194[289:0] ;
 assign zsd2k42wuaf4o0znaj79_707 = 
	hh9trhpvi1tcv50e066k_46 | cb652hrsrivevzose_300 ;
 assign erto1466wtg5ffol8xgrv5ebro1u6_459 = 
	1'b0 ;
 assign kgp7fxhurkivana4wludbs2j1j_470 = 
	1'b1 ;
 assign tqupnczrej290g3tuzy6_481 = 
	 ~(uxmqqhd4jmgw1ikxf0szule8xl_358) ;
 assign kpxplnch7xq90r3x88uvsjx7v_743 = 
	g6ox67hy72bhmypjk97ky_756 & zsd2k42wuaf4o0znaj79_707 & n3vlm1dokz99q67z_651 ;
 assign vz74xqsm571ike3nny5evt_274 = 
	tqupnczrej290g3tuzy6_481 & ehvxprnti60inwq9enr4x_840 & n3vlm1dokz99q67z_651 & hh9trhpvi1tcv50e066k_46 & g6ox67hy72bhmypjk97ky_756 ;
 assign oa1kcjqt7gadl8jtvir8z25etn7zqfmc_519 = 
	kpxplnch7xq90r3x88uvsjx7v_743 | vz74xqsm571ike3nny5evt_274 ;
 assign ccppfx0681tb67hjwlj7hh8_96 = 
	t59qvdyeijexq04y8zvhq7f9rkz9_686 & oa1kcjqt7gadl8jtvir8z25etn7zqfmc_519 ;
 assign anr1zutxuge4xs5qp2v9ua3_438 = 
	backpressure_in & cx8w80yirz01965ovmbt_809 & g6ox67hy72bhmypjk97ky_756 & izh3jnaxksi4lp79_78 & cb652hrsrivevzose_300 & tqupnczrej290g3tuzy6_481 ;
 assign khyhrs0634hoz9mioz4fn_154 = 
	ccppfx0681tb67hjwlj7hh8_96 | anr1zutxuge4xs5qp2v9ua3_438 ;
 assign a5wlrjq4szpdcym7s6k93atk58lc1zl1_705 	= khyhrs0634hoz9mioz4fn_154 ;
 assign q6p89hfodzz4uhkfx4itjl_180 = 
	1'b0 ;
 assign n3vlm1dokz99q67z_651 = 
	 ~(tprfmp0q9q35auclquzc05_879) ;
 assign qp1pwwaq5bh6014jaho8tul8ixu0m_290 	= evbroqc5euwpuy8z2b6c1ghnr_895[0] ;
 assign eda2k4l7sg8mol51v6uv9l_281 	= evbroqc5euwpuy8z2b6c1ghnr_895[32:1] ;
 assign lyzq9ma45beixdp27k9b9tb_526 	= evbroqc5euwpuy8z2b6c1ghnr_895[288:33] ;
 assign qn5vdjavp0vbr6ymk2dhe8cqut_851 	= evbroqc5euwpuy8z2b6c1ghnr_895[289] ;
 assign zvgftng41c9bzf8j6gvq1wivu10_522 = 
	cx8w80yirz01965ovmbt_809 | c595do9rwdupj1sjd5hjpoj47lmjk7yw_756 ;
 assign v2s21n8tume8zqvutxt_548 = 
	chx86q2jt9r2snlq8dohdzpsrdeu_472 | n3vlm1dokz99q67z_651 ;
 assign yi4qewzeb44u8h2oug_674 = 
	v2s21n8tume8zqvutxt_548 & g6ox67hy72bhmypjk97ky_756 & zsd2k42wuaf4o0znaj79_707 ;
 assign moaeike6rlmfqshobpm_259 = 
	yi4qewzeb44u8h2oug_674 | ehvxprnti60inwq9enr4x_840 ;
 assign qlckqbkumefr5qcny9jx5ka_165 = 
	backpressure_in & qn5vdjavp0vbr6ymk2dhe8cqut_851 & moaeike6rlmfqshobpm_259 ;
 assign hp8y2pgz12u9yjc9t0y84_846 = 
	izh3jnaxksi4lp79_78 & acpp34wa9wo278tk2h73wu3_176 ;
 assign qic4f134cbtorq0cx63it553vkyaqw_565 = 
	hp8y2pgz12u9yjc9t0y84_846 | hh9trhpvi1tcv50e066k_46 | qp1pwwaq5bh6014jaho8tul8ixu0m_290 ;
 assign jip6rtyim2448obfaa_447 = 
	t59qvdyeijexq04y8zvhq7f9rkz9_686 & ehvxprnti60inwq9enr4x_840 & qn5vdjavp0vbr6ymk2dhe8cqut_851 & qic4f134cbtorq0cx63it553vkyaqw_565 ;
 assign y17aqu05ajufpnm9wptuozy_759 	= ehvxprnti60inwq9enr4x_840 ;
 assign tgxv2ttcmm4bmrmx_782 	= packet_in_PACKET2_TVALID ;
 assign g7syrpmdc2s3frjzw9yruxpm89t8ozk_367 = 
	1'b0 ;
 assign k97nlssrcefag2cnj24i9khvj5_187 = 
	1'b1 ;
 assign dd58lukr1lnxi5wqcwiwgka9bdywz6x_571 = (
	((lv1cilc8q0bfssebh43uopybid_883 == 1'b1) && (packet_in_PACKET2_TVALID == 1'b1))?1'b1:
	((uq301vkperre9xp8tz1y7ktao6byv_604 == 1'b1) && (packet_in_PACKET2_TVALID == 1'b1))?1'b1:
	0)  ;
 assign j49ennj8czz64doy9iqfgm84skq6_768 = (
	((packet_in_PACKET2_TVALID == 1'b1) && (packet_in_PACKET2_TLAST == 1'b1))?1'b1:
	0)  ;
 assign blan1gt1fzxqtlx9gs86_891 = (
	((packet_in_PACKET2_TVALID == 1'b1) && (packet_in_PACKET2_TLAST == 1'b0))?1'b1:
	0)  ;
 assign vjk0lli1z754t99bjwkxcj_118 = dd58lukr1lnxi5wqcwiwgka9bdywz6x_571 ;
 assign fpn3d44nf7x0uw9jir2cr3per5771o_305 	= khyhrs0634hoz9mioz4fn_154 ;
 assign ftfoayuijrb4jj5fetp3w_802 = 
	1'b0 ;
 assign czabp9h2m1e6j488v1u7_164 	= c18k38jad9u8m16fni4zeprfh_322[8:0] ;
 assign ipgg6vc1jbhlzuii86qv_749 = (
	((czabp9h2m1e6j488v1u7_164 != brhks8sn80b3n3deq_87))?1'b1:
	0)  ;
 assign nrrkebi2agfjc06vppeyl0_878 = gf9qzlmlr27p64hoolnpy_334 ;
 assign izh3jnaxksi4lp79_78 = gf9qzlmlr27p64hoolnpy_334 ;
 assign hh9trhpvi1tcv50e066k_46 = 
	 ~(izh3jnaxksi4lp79_78) ;
 assign b81cokgm1ybsf61cg6kiih7mva_267 	= id2uwm8eu9y0wtkk40r5cezz96r_444 ;
 assign g6ox67hy72bhmypjk97ky_756 = 
	 ~(id2uwm8eu9y0wtkk40r5cezz96r_444) ;
 assign qyrfvbjvgo2e1nrdcush7_604 = 
	cb652hrsrivevzose_300 & g6ox67hy72bhmypjk97ky_756 & nrrkebi2agfjc06vppeyl0_878 & khyhrs0634hoz9mioz4fn_154 ;
 assign bgq1cov35i7bd43i5qz62j86jmz_2 = 
	tuple_in_TUPLE0_DATA ;
 assign fsldx7phjnj7pxmyqc3hfhmsmg31kry_691 	= tuple_in_TUPLE0_VALID ;
 assign whgyllzqzo2zj5d5vw_276 	= bgq1cov35i7bd43i5qz62j86jmz_2[255:0] ;
 assign h3k670sitn5fldrh4w_470 = 
	 ~(ivqi0nnxqke9brl2ao7q7fl02m_331) ;
 assign krwemdew4wp3i3ajbtw9ry6h5053el_755 	= qyrfvbjvgo2e1nrdcush7_604 ;
 assign h5jx3xn2r35tvg6d24ys49_38 = 
	1'b0 ;
 assign ku17cqlf0jtfb90y71cjt_33 = 
	tuple_in_TUPLE1_DATA ;
 assign k28c6yj1t9okuh54e10v0gb92tchs_889 	= tuple_in_TUPLE1_VALID ;
 assign ryv8ps0qcgl43wg68epojz_288 	= ku17cqlf0jtfb90y71cjt_33[127:0] ;
 assign c2l7bpnk9ke1mlmuf_119 = 
	 ~(j19oxjdvnvaogs6l6_79) ;
 assign i3i907218pu8l2b8s_561 	= qyrfvbjvgo2e1nrdcush7_604 ;
 assign d59fyc35g0yxnblqcy_162 = 
	1'b0 ;
 assign cb652hrsrivevzose_300 = 
	n3vlm1dokz99q67z_651 & h3k670sitn5fldrh4w_470 & c2l7bpnk9ke1mlmuf_119 ;
 assign h7str28veskkz4n7a_535 = 
	rr31knofeb0irhhlb_480 | r0i5aggou385olbtbf5txmdbb_54 | h96dodwlmlmkhnd4zne1g9sa0teuizb_398 ;
 assign packet_out_PACKET2_TVALID 	= y17aqu05ajufpnm9wptuozy_759 ;
 assign packet_out_PACKET2_TDATA 	= lyzq9ma45beixdp27k9b9tb_526[255:0] ;
 assign packet_out_PACKET2_TKEEP 	= eda2k4l7sg8mol51v6uv9l_281[31:0] ;
 assign packet_out_PACKET2_TLAST 	= qp1pwwaq5bh6014jaho8tul8ixu0m_290 ;
 assign packet_in_PACKET2_TREADY 	= packet_out_PACKET2_TREADY ;
 assign tuple_out_TUPLE0_VALID 	= acpp34wa9wo278tk2h73wu3_176 ;
 assign tuple_out_TUPLE0_DATA 	= exehcr9jruxj4yhzcsgpjv_905[255:0] ;
 assign tuple_out_TUPLE1_VALID 	= acpp34wa9wo278tk2h73wu3_176 ;
 assign tuple_out_TUPLE1_DATA 	= ubzizgg70b4ss9cttcvv17v22q7dmu_443[127:0] ;


assign pc72ubyhbeewwc34oevf93sau9pui8_741 = (
	((khyhrs0634hoz9mioz4fn_154 == 1'b1))?kgp7fxhurkivana4wludbs2j1j_470 :
	((t59qvdyeijexq04y8zvhq7f9rkz9_686 == 1'b1))?erto1466wtg5ffol8xgrv5ebro1u6_459 :
	ehvxprnti60inwq9enr4x_840 ) ;

assign uxmqqhd4jmgw1ikxf0szule8xl_358 = (
	((ehvxprnti60inwq9enr4x_840 == 1'b1) && (t59qvdyeijexq04y8zvhq7f9rkz9_686 == 1'b1))?erto1466wtg5ffol8xgrv5ebro1u6_459 :
	ehvxprnti60inwq9enr4x_840 ) ;



always @(posedge clk_out_0)
begin
  if (rst_in_0) 
  begin
	cx8w80yirz01965ovmbt_809 <= 1'b0 ;
	ehvxprnti60inwq9enr4x_840 <= 1'b0 ;
	chx86q2jt9r2snlq8dohdzpsrdeu_472 <= 1'b0 ;
	c595do9rwdupj1sjd5hjpoj47lmjk7yw_756 <= 1'b0 ;
	brhks8sn80b3n3deq_87 <= 9'b000000000 ;
	rr31knofeb0irhhlb_480 <= 1'b0 ;
	backpressure_out <= 1'b0 ;
   end
  else
  begin
		cx8w80yirz01965ovmbt_809 <= backpressure_in ;
		ehvxprnti60inwq9enr4x_840 <= pc72ubyhbeewwc34oevf93sau9pui8_741 ;
		chx86q2jt9r2snlq8dohdzpsrdeu_472 <= n3vlm1dokz99q67z_651 ;
		c595do9rwdupj1sjd5hjpoj47lmjk7yw_756 <= khyhrs0634hoz9mioz4fn_154 ;
		brhks8sn80b3n3deq_87 <= czabp9h2m1e6j488v1u7_164 ;
		rr31knofeb0irhhlb_480 <= smqf4gxu8ge207bph9vs43aci_225 ;
		backpressure_out <= h7str28veskkz4n7a_535 ;
  end
end

always @(posedge clk_in_0)
begin
  if (rst_in_0) 
  begin
	lv1cilc8q0bfssebh43uopybid_883 <= 1'b0 ;
	uq301vkperre9xp8tz1y7ktao6byv_604 <= 1'b1 ;
   end
  else
  begin
	if (blan1gt1fzxqtlx9gs86_891) 
	begin 
	  lv1cilc8q0bfssebh43uopybid_883 <= 1'b0 ;
	 end 
	else 
	begin 
		if (j49ennj8czz64doy9iqfgm84skq6_768) 
		begin 
			lv1cilc8q0bfssebh43uopybid_883 <= k97nlssrcefag2cnj24i9khvj5_187 ;
		end 
	end 
	if (dd58lukr1lnxi5wqcwiwgka9bdywz6x_571) 
	begin 
		uq301vkperre9xp8tz1y7ktao6byv_604 <= g7syrpmdc2s3frjzw9yruxpm89t8ozk_367 ;
	end 
  end
end

always @(posedge clk_out_1)
begin
  if (rst_in_0) 
  begin
	acpp34wa9wo278tk2h73wu3_176 <= 1'b0 ;
	r0i5aggou385olbtbf5txmdbb_54 <= 1'b0 ;
   end
  else
  begin
		acpp34wa9wo278tk2h73wu3_176 <= qyrfvbjvgo2e1nrdcush7_604 ;
		r0i5aggou385olbtbf5txmdbb_54 <= obc4p4ouajqnywdpq_229 ;
  end
end

always @(posedge clk_out_2)
begin
  if (rst_in_0) 
  begin
	h96dodwlmlmkhnd4zne1g9sa0teuizb_398 <= 1'b0 ;
   end
  else
  begin
		h96dodwlmlmkhnd4zne1g9sa0teuizb_398 <= gv0rkzh4is316qjzd04iy3u_65 ;
  end
end

defparam e1sxxzau2y8je6paeflp4_1212.WRITE_DATA_WIDTH = 290; 
defparam e1sxxzau2y8je6paeflp4_1212.FIFO_WRITE_DEPTH = 512; 
defparam e1sxxzau2y8je6paeflp4_1212.PROG_FULL_THRESH = 195; 
defparam e1sxxzau2y8je6paeflp4_1212.PROG_EMPTY_THRESH = 195; 
defparam e1sxxzau2y8je6paeflp4_1212.READ_MODE = "STD"; 
defparam e1sxxzau2y8je6paeflp4_1212.WR_DATA_COUNT_WIDTH = 9; 
defparam e1sxxzau2y8je6paeflp4_1212.RD_DATA_COUNT_WIDTH = 9; 
defparam e1sxxzau2y8je6paeflp4_1212.DOUT_RESET_VALUE = "0"; 
defparam e1sxxzau2y8je6paeflp4_1212.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_sync e1sxxzau2y8je6paeflp4_1212 (
	.wr_en(o56w6b5a7915fd6gy03m7ao7ibp0m_585),
	.din(xvd4tac539a3vj1gml6j924iufo845_737),
	.rd_en(a5wlrjq4szpdcym7s6k93atk58lc1zl1_705),
	.sleep(q6p89hfodzz4uhkfx4itjl_180),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(pks9jbuebo76exs2vrmroxot_372), 
	.dout(evbroqc5euwpuy8z2b6c1ghnr_895), 
	.empty(tprfmp0q9q35auclquzc05_879), 
	.prog_full(smqf4gxu8ge207bph9vs43aci_225), 
	.full(li9m5aviil8yc7a9txs8cxzw_245), 
	.rd_data_count(vv81q07u5b8wrf3kjee6g8m9s_240), 
	.wr_data_count(syi30dn8izds2qr2jxjn_389), 
	.wr_rst_busy(m8ay4uhx3otre2sw5ets_320), 
	.rd_rst_busy(ylg2q8lg9i6bigmwuabjjh8b57arr5_47), 
	.overflow(imol0nlbjtw2ey5uf5cl_549), 
	.underflow(mijb6u2davnlk7kioqpgrx_888), 
	.sbiterr(ysqjfwrdjyx643loaiyqa3fdzjm9o2_196), 
	.dbiterr(k8p5jibm3pvdvkc70neid57nih2v_499), 
	.almost_empty(wtyyjuu0zupc5szgopcth_749), 
	.almost_full(tbk92extu7u4lti00oufmvg_530), 
	.wr_ack(uheqmukpsra1ayof96p_117), 
	.data_valid(ppywl7s4nbgpxr0w7lpqqznf_343), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam bx8yz9q9vrz799u20bz64ar39_182.WRITE_DATA_WIDTH = 1; 
defparam bx8yz9q9vrz799u20bz64ar39_182.FIFO_WRITE_DEPTH = 512; 
defparam bx8yz9q9vrz799u20bz64ar39_182.PROG_FULL_THRESH = 195; 
defparam bx8yz9q9vrz799u20bz64ar39_182.PROG_EMPTY_THRESH = 195; 
defparam bx8yz9q9vrz799u20bz64ar39_182.READ_MODE = "FWFT"; 
defparam bx8yz9q9vrz799u20bz64ar39_182.WR_DATA_COUNT_WIDTH = 9; 
defparam bx8yz9q9vrz799u20bz64ar39_182.RD_DATA_COUNT_WIDTH = 9; 
defparam bx8yz9q9vrz799u20bz64ar39_182.DOUT_RESET_VALUE = "0"; 
defparam bx8yz9q9vrz799u20bz64ar39_182.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_sync bx8yz9q9vrz799u20bz64ar39_182 (
	.wr_en(tgxv2ttcmm4bmrmx_782),
	.din(vjk0lli1z754t99bjwkxcj_118),
	.rd_en(fpn3d44nf7x0uw9jir2cr3per5771o_305),
	.sleep(ftfoayuijrb4jj5fetp3w_802),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(ohfblg8zqwett2rvon_724), 
	.dout(gf9qzlmlr27p64hoolnpy_334), 
	.empty(id2uwm8eu9y0wtkk40r5cezz96r_444), 
	.prog_full(tdr3ym7eg1ouhwkhs_153), 
	.full(rmlhkgvsos3xz6awdzwf1d_37), 
	.rd_data_count(c18k38jad9u8m16fni4zeprfh_322), 
	.wr_data_count(o3ls1sfqubdzyu4p5mvu2u73zl3_283), 
	.wr_rst_busy(ina0ycdul9vdqzste0hab11y_388), 
	.rd_rst_busy(ay3cfshi4vnmhcxa_735), 
	.overflow(berzanc60hy7x8dq83ud3_799), 
	.underflow(cul28ss0ewkxc86ajnwu4_387), 
	.sbiterr(eh82iin6wf0what8ytbyjcmb7ooi_147), 
	.dbiterr(nc0j8ypc8h13nrfj_549), 
	.almost_empty(vv7bw5a0h44pv9nbj8pjwntlols_748), 
	.almost_full(b5zqnis5puwe8g8gwrlwkby_580), 
	.wr_ack(zjw26fqa0gu4dd5oi0ii55dl3clbx_744), 
	.data_valid(s3lhgi7ebtrxeovyp2ylnutsdt_520), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam dk9hdl6jx3n3qbyf2l_210.WRITE_DATA_WIDTH = 256; 
defparam dk9hdl6jx3n3qbyf2l_210.FIFO_WRITE_DEPTH = 256; 
defparam dk9hdl6jx3n3qbyf2l_210.PROG_FULL_THRESH = 66; 
defparam dk9hdl6jx3n3qbyf2l_210.PROG_EMPTY_THRESH = 66; 
defparam dk9hdl6jx3n3qbyf2l_210.READ_MODE = "STD"; 
defparam dk9hdl6jx3n3qbyf2l_210.WR_DATA_COUNT_WIDTH = 8; 
defparam dk9hdl6jx3n3qbyf2l_210.RD_DATA_COUNT_WIDTH = 8; 
defparam dk9hdl6jx3n3qbyf2l_210.DOUT_RESET_VALUE = "0"; 
defparam dk9hdl6jx3n3qbyf2l_210.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async dk9hdl6jx3n3qbyf2l_210 (
	.wr_en(fsldx7phjnj7pxmyqc3hfhmsmg31kry_691),
	.din(whgyllzqzo2zj5d5vw_276),
	.rd_en(krwemdew4wp3i3ajbtw9ry6h5053el_755),
	.sleep(h5jx3xn2r35tvg6d24ys49_38),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(bi0c4h46jip1v68sn8_553), 
	.dout(exehcr9jruxj4yhzcsgpjv_905), 
	.empty(ivqi0nnxqke9brl2ao7q7fl02m_331), 
	.prog_full(obc4p4ouajqnywdpq_229), 
	.full(xje2co821tiv1yu4l_58), 
	.rd_data_count(v7bqd9xdekdd6mqce1t9nsa_64), 
	.wr_data_count(jq57d8cyp3aa17aq_470), 
	.wr_rst_busy(vl7i54k49gs13qcaggl797e7tvy8v_247), 
	.rd_rst_busy(et8ony3ngp94pcx3ah_3), 
	.overflow(eqgjamqrou5heafy4khl1plz69n3403_187), 
	.underflow(ei36xwb3vlccux55jcysy6qe2mrf_476), 
	.sbiterr(f9blecj6vfo2ryjti2ztk_686), 
	.dbiterr(agrp5maojtjja7ty15olg6ceeq_223), 
	.almost_empty(fuuoddp1af539t7cju1vzmw_720), 
	.almost_full(idjgxjshe4znve743ody4npi4nbu3_156), 
	.wr_ack(c727j1p2gfb24lkbwcs1ije3b7sd_492), 
	.data_valid(qebednajs8p2obemu_68), 

	.wr_clk(clk_in_1), 

	.rd_clk(clk_out_1), 
	.rst(rst_in_1) 
); 

defparam o8pyqw09i8y3m9c8_1585.WRITE_DATA_WIDTH = 128; 
defparam o8pyqw09i8y3m9c8_1585.FIFO_WRITE_DEPTH = 256; 
defparam o8pyqw09i8y3m9c8_1585.PROG_FULL_THRESH = 66; 
defparam o8pyqw09i8y3m9c8_1585.PROG_EMPTY_THRESH = 66; 
defparam o8pyqw09i8y3m9c8_1585.READ_MODE = "STD"; 
defparam o8pyqw09i8y3m9c8_1585.WR_DATA_COUNT_WIDTH = 8; 
defparam o8pyqw09i8y3m9c8_1585.RD_DATA_COUNT_WIDTH = 8; 
defparam o8pyqw09i8y3m9c8_1585.DOUT_RESET_VALUE = "0"; 
defparam o8pyqw09i8y3m9c8_1585.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async o8pyqw09i8y3m9c8_1585 (
	.wr_en(k28c6yj1t9okuh54e10v0gb92tchs_889),
	.din(ryv8ps0qcgl43wg68epojz_288),
	.rd_en(i3i907218pu8l2b8s_561),
	.sleep(d59fyc35g0yxnblqcy_162),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(fs9wek5otmzkiynkr_217), 
	.dout(ubzizgg70b4ss9cttcvv17v22q7dmu_443), 
	.empty(j19oxjdvnvaogs6l6_79), 
	.prog_full(gv0rkzh4is316qjzd04iy3u_65), 
	.full(z1mkrhqr8bd9b7pjaf50xxb3ioufpav_320), 
	.rd_data_count(z6mvfes28ir72775v6qa2epl_506), 
	.wr_data_count(v7dzmtc3lzkz4vjh4evlpa2wpy0t1fj_874), 
	.wr_rst_busy(ss63ia5te4g4sxmhzpnxi3a3fpet0tp_606), 
	.rd_rst_busy(ec2tz4m9co4lm0oy3er_446), 
	.overflow(y93xabkok3ujmskm4poh5js_339), 
	.underflow(z66bzuco2svn9sr4gm_190), 
	.sbiterr(l0cki18n1a9r6kezbenk_488), 
	.dbiterr(hpjz8gmvshwion0d40zyw_256), 
	.almost_empty(hh6dn2oij87u6513lkrcegzo16xgxfm_20), 
	.almost_full(q6x42eo26lna4spqj787hv8z8ge5_639), 
	.wr_ack(u3uev4bopnl0pbv1ot6egbc6tt_479), 
	.data_valid(if8okuuggv1f1mqbhzr8alew3qhwt_454), 

	.wr_clk(clk_in_2), 

	.rd_clk(clk_out_2), 
	.rst(rst_in_2) 
); 

endmodule 
