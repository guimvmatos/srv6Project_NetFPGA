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
// File created: 2020/11/05 15:52:02
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






 reg	byneh5mc61xwpucgzi87wpqse_595;	 initial byneh5mc61xwpucgzi87wpqse_595 = 1'b0 ;
 wire	djyq38qxv3lj46w0ou_898 ;
 wire [289:0] zzzvdafa8cg9ryqnt_731 ;
 wire	cn05g9jb1bbbu4ys4rlkvj_620 ;
 wire	bmobzfp9f6mu9h76dahcz6sylx2m240l_848 ;
 wire	wwnahcvgec9z12b8ftjl7fy47zpv2z_43 ;
 wire [8:0] qt8vbwf74hte0uls9h6d1wbzqqg3sv6_271 ;
 wire [8:0] j9xr9j4xuht7ggv1corapm7_673 ;
 wire	y9juoa138l3qtbzz5i_661 ;
 wire	hkf6wwoddlstohshdqcoy9vu_109 ;
 wire	n28snng1ll7svgki3tkt_183 ;
 wire	vds56aonmxxivy9zw9d_696 ;
 wire	hsijnmxg65n7k3xl7m3ka26q_206 ;
 wire	lq0nahrr7z2asbn3_548 ;
 wire	eno919jj14dxr8khu_795 ;
 wire	qzqxtfzfa8to3b45c7bqbjex0hocq_70 ;
 wire	ja2a20edzafxv6rm_611 ;
 wire	x7270my7b0rv3aau2kedi9pxug_440 ;
 wire	js3z5wu2f2ovevwq_266 ;
 reg	sccfgxiou3g4faiu2897r2z_610;	 initial sccfgxiou3g4faiu2897r2z_610 = 1'b0 ;
 wire	hrz8afe9vnyr5w0fr0ak6of8n6x_245 ;
 reg	kj1dtlik3k63nowmkbxe0_328;	 initial kj1dtlik3k63nowmkbxe0_328 = 1'b0 ;
 reg	vr2e1vv99jzegqb3zy4_339;	 initial vr2e1vv99jzegqb3zy4_339 = 1'b0 ;
 wire	m7vn4saxcztlcx7d_675 ;
 wire [0:0] z5gb3n9ahx1avtj1dw85k_521 ;
 wire	chyjroxy13zk0wx0jzlduc_231 ;
 wire	u5b632z7lxcj7u6ftwwmpte7_339 ;
 wire	ne5jf3q99zfx4oy0ksv40qczbnk_315 ;
 wire [8:0] x409b003p40eqbmrdpx3w2qb_520 ;
 wire [8:0] emy9lckc0yq872wu0i8mcowpezno_781 ;
 wire	wk21ex8gragwuvzg76kdr1m_675 ;
 wire	unsjelggbdpnq9xf_226 ;
 wire	hp8xwvze42dommdpfd_680 ;
 wire	wmpggarchx3hadw6799v5_537 ;
 wire	q9l7baouy5rx0efyzn8y_872 ;
 wire	qgvdi31xdssi1i6feap4vded2oqeuh_115 ;
 wire	kmxjgc0fu592kpnymq7p3mu1e512a_677 ;
 wire	jxvkz79tdszg5eux1l7_313 ;
 wire	vli34duorqjc665p_794 ;
 wire	k9hmuf4g716vkybd86zt83ba8vv_209 ;
 reg	ugopf3wwwck97u7mduos_635;	 initial ugopf3wwwck97u7mduos_635 = 1'b0 ;
 reg	x282mn2tddiao5tsv_693;	 initial x282mn2tddiao5tsv_693 = 1'b1 ;
 reg [8:0] msmhg3yfh90boeq90q89z_70;	 initial msmhg3yfh90boeq90q89z_70 = 9'b000000000 ;
 reg	ivkl03188fcybo8wnrboflf2a6_469;	 initial ivkl03188fcybo8wnrboflf2a6_469 = 1'b0 ;
 wire	jq25guzjcv3550c2ssbsni5mm_864 ;
 wire [255:0] hmi3r38f4bp2zm4hv5pkployvcd1dnb_739 ;
 wire	i80h2fsuryjrgty0vhqm0uv5_849 ;
 wire	t3i36ktei5psilxdqzrfcsk37zuy_786 ;
 wire	asniwciskfbadchhp9_519 ;
 wire [7:0] bzt0tun61iz9wgo22ujro6kv94smazyp_775 ;
 wire [7:0] uuwx2pe7oqgfnb91rd6u8s_182 ;
 wire	lvpzhbq17rfkz6c1i5nd_294 ;
 wire	dpe28lipfa0zua3x5b5zrbn6kqwo_306 ;
 wire	hfsq95w51zb0kzpkruug6y6_692 ;
 wire	vbwt99kvih5tr6n0_828 ;
 wire	yau7qxqjls0sfhv3x4f00kfxjts5n5qn_810 ;
 wire	z55w1kflitllo5mnh4n4o_783 ;
 wire	vlginff8o5ih1yiubm3jem_163 ;
 wire	ich6h7imkk07eh9pb97ru3yq5gyjc2kp_749 ;
 wire	ljoz3quy3nl64cdz2uuogd2dgpv3zg_95 ;
 wire	ac1so9h3u9loyoqtzj0f06our34_822 ;
 wire	z2b4xq7dknehevagq26f_825 ;
 wire [127:0] gfec1q0mmrjy6cbs73lihhbt1_834 ;
 wire	j80pwexe3pzdil3aw0t1eyh07x39_138 ;
 wire	b7u0ftvj6ioghvkfqwlmi2hnn2rgo_546 ;
 wire	wzc1tfuufl50spcpo2zdv36_141 ;
 wire [7:0] ykdagyn6idwp5k97fvfk5l9k284uge_489 ;
 wire [7:0] v4g8zcw9o1b89sw3_463 ;
 wire	r9r8y8uio2ihwqsktrspq3w_757 ;
 wire	err5z6ev5gw02ip4ucy_160 ;
 wire	hd7wxnrzshoh5bvwgjauewdpt9rdwhgk_387 ;
 wire	hrhgtwezbgucepknyvaowckydzrt_36 ;
 wire	h0nsdhfmta0sfe49z3txn39pc1rj0y3_179 ;
 wire	rlo12ogodt0ddrktap6_714 ;
 wire	l2tod1gmrpj7gderrg9u703db45yu8r_536 ;
 wire	rj3lm2648kg6ekcna2ddb_340 ;
 wire	iisv0whbt37q0jdt0x78cjred81l_635 ;
 wire	nl0x774nkmivbkig1lfurglpq_146 ;
 reg	anuccmg235c5vwi4z532e3913_226;	 initial anuccmg235c5vwi4z532e3913_226 = 1'b0 ;
 reg	nmu3noihilm7i1nr1_81;	 initial nmu3noihilm7i1nr1_81 = 1'b0 ;
 reg	dzfsrl99f2ql4l1nnguyl3c19zvnxhcs_55;	 initial dzfsrl99f2ql4l1nnguyl3c19zvnxhcs_55 = 1'b0 ;
 wire	qnpa7s6po3d965wkydqk2tcp4c_362 ;
 wire [289:0] fcs8dv0mr12wy4aggfcy_432 ;
 wire	yd6chwbj0g1majabjgmrzcbtj623t_26 ;
 wire [289:0] pzr442u2amcwhljdn4yg_587 ;
 wire	ef269ssnxujd47n5xqy35_54 ;
 wire	u59i69yb7j1fsu9ys1xxejqadwpv5to_560 ;
 wire	md3859oecbr4ww9hut7ko2m07_807 ;
 wire	olhmxigmnx8htpo6mcc18c9bm_821 ;
 wire	j4i465jqctfbzc98sx2332w2dj_157 ;
 wire	fqc0ah5465v64zitzzsm877anw6kz2_75 ;
 wire	xbglb4zj9s920jq8ubp28sl_128 ;
 wire	yspcci557scmidcvsaj8i5o45p_664 ;
 wire	avwuarq5yp2z5npnfuf80_471 ;
 wire	sekk9brljmlsdkeum63ob_786 ;
 wire	sb7wol8j143wjkgm_167 ;
 wire	ggm6lzvtf70aaefsn_868 ;
 wire	psg4fkt8aq656g04_489 ;
 wire	lhzayqsw0fanjc19ap1s_235 ;
 wire [31:0] tgutlqfxgbi8lrr78im2lih1l9yh_672 ;
 wire [255:0] h6xw1b8g5fq6k1t9j0jw1dyjc2gh_41 ;
 wire	ubdh0xdskaa51q6tzj9q1awonfsmh5_804 ;
 wire	a25plc8pst2vs81bid2l_665 ;
 wire	hkibgx2ohwrocf3mrob_6 ;
 wire	mq4fshagf2nt5ece218idngurdffn_637 ;
 wire	blwnu4lefn8mps2tqvzziwpqpre_618 ;
 wire	qaxy7xehw3usshcb9igjnce25_610 ;
 wire	q3v13k783dyb0svxw0nrdafc_548 ;
 wire	v42af2es1za1w6ntdg9z6uys0_279 ;
 wire	xp372qsm4409idhsu_91 ;
 wire	j49og49tqe04kt3r44x_181 ;
 wire	xvqaaypxlijyus3t_430 ;
 wire	lk0s6b8wyfwt85jfr3f8x168svx_160 ;
 wire	lyy1d57hx8xq9ici41t0b8pf81ph_427 ;
 wire	cigmt57pzo7eocnibzrwa71c_869 ;
 wire	vmuogeltvwr2xbu3gbcd8d_710 ;
 wire	fq73c2f8kmm2scvp92dih9qyq4_28 ;
 wire [0:0] btovmo4xkn5ztpepa_557 ;
 wire	owo1sffay9u14cdlr7z3kf_518 ;
 wire	u0kowh7bbhvfvn6x5dw0zip0lo_516 ;
 wire [8:0] t0lyt0xw5vota9vtcf5ykcfkzwfrzt_842 ;
 wire	knb870eb6fcnbrp6ts7p1_531 ;
 wire	pcbtwhhgpo829pti_453 ;
 wire	u9eaedw1ljoravz9fnrd3acs1v6p_283 ;
 wire	b47bzhei4r80gxi5_773 ;
 wire	i2ahnfascflxfsxgdvvwm0q2ha7_570 ;
 wire	ywj6c6gjbn1fjjstrq7ctsxeg6l6lt_650 ;
 wire	c0htgw06i5dix6awxykj_472 ;
 wire [255:0] tswkdbn2rsuzh41isxjdue5ev_856 ;
 wire	tlkrk8za24lfweo4u99_759 ;
 wire [255:0] pfndll7civrmfg6vpukq_617 ;
 wire	v9om92lc8rh40gqf5rj_338 ;
 wire	grffvhgbukr9tvqf37l0pf09i647_25 ;
 wire	dmnl12fj6e3olgwvn9cjpnk_356 ;
 wire [127:0] fz4elmmj7nebwiblr1kj21b3_3 ;
 wire	l5dr88lns7uzlyc37pixlsngn5_125 ;
 wire [127:0] ilkrlhonr67jfykh08ilp53byjv_738 ;
 wire	i5xdk87voc47isf1_571 ;
 wire	c1a8jzk5vqfz4ooif_858 ;
 wire	pzp7czoiqjd066ifldxljusc0sf7_618 ;
 wire	lmgvsg53v4842ppm5budgv3c0_824 ;
 wire	wnyvuae2kf8ozqqkgqf_536 ;


 assign qnpa7s6po3d965wkydqk2tcp4c_362 = 
	 ~(backpressure_in) ;
 assign fcs8dv0mr12wy4aggfcy_432 = 
	{packet_in_PACKET2_TVALID, packet_in_PACKET2_TDATA, packet_in_PACKET2_TKEEP, packet_in_PACKET2_TLAST} ;
 assign yd6chwbj0g1majabjgmrzcbtj623t_26 	= packet_in_PACKET2_TVALID ;
 assign pzr442u2amcwhljdn4yg_587 	= fcs8dv0mr12wy4aggfcy_432[289:0] ;
 assign ef269ssnxujd47n5xqy35_54 = 
	b47bzhei4r80gxi5_773 | lmgvsg53v4842ppm5budgv3c0_824 ;
 assign u59i69yb7j1fsu9ys1xxejqadwpv5to_560 = 
	1'b0 ;
 assign md3859oecbr4ww9hut7ko2m07_807 = 
	1'b1 ;
 assign olhmxigmnx8htpo6mcc18c9bm_821 = 
	 ~(hrz8afe9vnyr5w0fr0ak6of8n6x_245) ;
 assign j4i465jqctfbzc98sx2332w2dj_157 = 
	ywj6c6gjbn1fjjstrq7ctsxeg6l6lt_650 & ef269ssnxujd47n5xqy35_54 & psg4fkt8aq656g04_489 ;
 assign fqc0ah5465v64zitzzsm877anw6kz2_75 = 
	olhmxigmnx8htpo6mcc18c9bm_821 & sccfgxiou3g4faiu2897r2z_610 & psg4fkt8aq656g04_489 & b47bzhei4r80gxi5_773 & ywj6c6gjbn1fjjstrq7ctsxeg6l6lt_650 ;
 assign xbglb4zj9s920jq8ubp28sl_128 = 
	j4i465jqctfbzc98sx2332w2dj_157 | fqc0ah5465v64zitzzsm877anw6kz2_75 ;
 assign yspcci557scmidcvsaj8i5o45p_664 = 
	qnpa7s6po3d965wkydqk2tcp4c_362 & xbglb4zj9s920jq8ubp28sl_128 ;
 assign avwuarq5yp2z5npnfuf80_471 = 
	backpressure_in & byneh5mc61xwpucgzi87wpqse_595 & ywj6c6gjbn1fjjstrq7ctsxeg6l6lt_650 & u9eaedw1ljoravz9fnrd3acs1v6p_283 & lmgvsg53v4842ppm5budgv3c0_824 & olhmxigmnx8htpo6mcc18c9bm_821 ;
 assign sekk9brljmlsdkeum63ob_786 = 
	yspcci557scmidcvsaj8i5o45p_664 | avwuarq5yp2z5npnfuf80_471 ;
 assign sb7wol8j143wjkgm_167 	= sekk9brljmlsdkeum63ob_786 ;
 assign ggm6lzvtf70aaefsn_868 = 
	1'b0 ;
 assign psg4fkt8aq656g04_489 = 
	 ~(cn05g9jb1bbbu4ys4rlkvj_620) ;
 assign lhzayqsw0fanjc19ap1s_235 	= zzzvdafa8cg9ryqnt_731[0] ;
 assign tgutlqfxgbi8lrr78im2lih1l9yh_672 	= zzzvdafa8cg9ryqnt_731[32:1] ;
 assign h6xw1b8g5fq6k1t9j0jw1dyjc2gh_41 	= zzzvdafa8cg9ryqnt_731[288:33] ;
 assign ubdh0xdskaa51q6tzj9q1awonfsmh5_804 	= zzzvdafa8cg9ryqnt_731[289] ;
 assign a25plc8pst2vs81bid2l_665 = 
	byneh5mc61xwpucgzi87wpqse_595 | vr2e1vv99jzegqb3zy4_339 ;
 assign hkibgx2ohwrocf3mrob_6 = 
	kj1dtlik3k63nowmkbxe0_328 | psg4fkt8aq656g04_489 ;
 assign mq4fshagf2nt5ece218idngurdffn_637 = 
	hkibgx2ohwrocf3mrob_6 & ywj6c6gjbn1fjjstrq7ctsxeg6l6lt_650 & ef269ssnxujd47n5xqy35_54 ;
 assign blwnu4lefn8mps2tqvzziwpqpre_618 = 
	mq4fshagf2nt5ece218idngurdffn_637 | sccfgxiou3g4faiu2897r2z_610 ;
 assign qaxy7xehw3usshcb9igjnce25_610 = 
	backpressure_in & ubdh0xdskaa51q6tzj9q1awonfsmh5_804 & blwnu4lefn8mps2tqvzziwpqpre_618 ;
 assign q3v13k783dyb0svxw0nrdafc_548 = 
	u9eaedw1ljoravz9fnrd3acs1v6p_283 & ivkl03188fcybo8wnrboflf2a6_469 ;
 assign v42af2es1za1w6ntdg9z6uys0_279 = 
	q3v13k783dyb0svxw0nrdafc_548 | b47bzhei4r80gxi5_773 | lhzayqsw0fanjc19ap1s_235 ;
 assign xp372qsm4409idhsu_91 = 
	qnpa7s6po3d965wkydqk2tcp4c_362 & sccfgxiou3g4faiu2897r2z_610 & ubdh0xdskaa51q6tzj9q1awonfsmh5_804 & v42af2es1za1w6ntdg9z6uys0_279 ;
 assign j49og49tqe04kt3r44x_181 	= sccfgxiou3g4faiu2897r2z_610 ;
 assign xvqaaypxlijyus3t_430 	= packet_in_PACKET2_TVALID ;
 assign lk0s6b8wyfwt85jfr3f8x168svx_160 = 
	1'b0 ;
 assign lyy1d57hx8xq9ici41t0b8pf81ph_427 = 
	1'b1 ;
 assign cigmt57pzo7eocnibzrwa71c_869 = (
	((ugopf3wwwck97u7mduos_635 == 1'b1) && (packet_in_PACKET2_TVALID == 1'b1))?1'b1:
	((x282mn2tddiao5tsv_693 == 1'b1) && (packet_in_PACKET2_TVALID == 1'b1))?1'b1:
	0)  ;
 assign vmuogeltvwr2xbu3gbcd8d_710 = (
	((packet_in_PACKET2_TVALID == 1'b1) && (packet_in_PACKET2_TLAST == 1'b1))?1'b1:
	0)  ;
 assign fq73c2f8kmm2scvp92dih9qyq4_28 = (
	((packet_in_PACKET2_TVALID == 1'b1) && (packet_in_PACKET2_TLAST == 1'b0))?1'b1:
	0)  ;
 assign btovmo4xkn5ztpepa_557 = cigmt57pzo7eocnibzrwa71c_869 ;
 assign owo1sffay9u14cdlr7z3kf_518 	= sekk9brljmlsdkeum63ob_786 ;
 assign u0kowh7bbhvfvn6x5dw0zip0lo_516 = 
	1'b0 ;
 assign t0lyt0xw5vota9vtcf5ykcfkzwfrzt_842 	= x409b003p40eqbmrdpx3w2qb_520[8:0] ;
 assign knb870eb6fcnbrp6ts7p1_531 = (
	((t0lyt0xw5vota9vtcf5ykcfkzwfrzt_842 != msmhg3yfh90boeq90q89z_70))?1'b1:
	0)  ;
 assign pcbtwhhgpo829pti_453 = z5gb3n9ahx1avtj1dw85k_521 ;
 assign u9eaedw1ljoravz9fnrd3acs1v6p_283 = z5gb3n9ahx1avtj1dw85k_521 ;
 assign b47bzhei4r80gxi5_773 = 
	 ~(u9eaedw1ljoravz9fnrd3acs1v6p_283) ;
 assign i2ahnfascflxfsxgdvvwm0q2ha7_570 	= chyjroxy13zk0wx0jzlduc_231 ;
 assign ywj6c6gjbn1fjjstrq7ctsxeg6l6lt_650 = 
	 ~(chyjroxy13zk0wx0jzlduc_231) ;
 assign c0htgw06i5dix6awxykj_472 = 
	lmgvsg53v4842ppm5budgv3c0_824 & ywj6c6gjbn1fjjstrq7ctsxeg6l6lt_650 & pcbtwhhgpo829pti_453 & sekk9brljmlsdkeum63ob_786 ;
 assign tswkdbn2rsuzh41isxjdue5ev_856 = 
	tuple_in_TUPLE0_DATA ;
 assign tlkrk8za24lfweo4u99_759 	= tuple_in_TUPLE0_VALID ;
 assign pfndll7civrmfg6vpukq_617 	= tswkdbn2rsuzh41isxjdue5ev_856[255:0] ;
 assign v9om92lc8rh40gqf5rj_338 = 
	 ~(i80h2fsuryjrgty0vhqm0uv5_849) ;
 assign grffvhgbukr9tvqf37l0pf09i647_25 	= c0htgw06i5dix6awxykj_472 ;
 assign dmnl12fj6e3olgwvn9cjpnk_356 = 
	1'b0 ;
 assign fz4elmmj7nebwiblr1kj21b3_3 = 
	tuple_in_TUPLE1_DATA ;
 assign l5dr88lns7uzlyc37pixlsngn5_125 	= tuple_in_TUPLE1_VALID ;
 assign ilkrlhonr67jfykh08ilp53byjv_738 	= fz4elmmj7nebwiblr1kj21b3_3[127:0] ;
 assign i5xdk87voc47isf1_571 = 
	 ~(j80pwexe3pzdil3aw0t1eyh07x39_138) ;
 assign c1a8jzk5vqfz4ooif_858 	= c0htgw06i5dix6awxykj_472 ;
 assign pzp7czoiqjd066ifldxljusc0sf7_618 = 
	1'b0 ;
 assign lmgvsg53v4842ppm5budgv3c0_824 = 
	psg4fkt8aq656g04_489 & v9om92lc8rh40gqf5rj_338 & i5xdk87voc47isf1_571 ;
 assign wnyvuae2kf8ozqqkgqf_536 = 
	anuccmg235c5vwi4z532e3913_226 | nmu3noihilm7i1nr1_81 | dzfsrl99f2ql4l1nnguyl3c19zvnxhcs_55 ;
 assign packet_out_PACKET2_TVALID 	= j49og49tqe04kt3r44x_181 ;
 assign packet_out_PACKET2_TDATA 	= h6xw1b8g5fq6k1t9j0jw1dyjc2gh_41[255:0] ;
 assign packet_out_PACKET2_TKEEP 	= tgutlqfxgbi8lrr78im2lih1l9yh_672[31:0] ;
 assign packet_out_PACKET2_TLAST 	= lhzayqsw0fanjc19ap1s_235 ;
 assign packet_in_PACKET2_TREADY 	= packet_out_PACKET2_TREADY ;
 assign tuple_out_TUPLE0_VALID 	= ivkl03188fcybo8wnrboflf2a6_469 ;
 assign tuple_out_TUPLE0_DATA 	= hmi3r38f4bp2zm4hv5pkployvcd1dnb_739[255:0] ;
 assign tuple_out_TUPLE1_VALID 	= ivkl03188fcybo8wnrboflf2a6_469 ;
 assign tuple_out_TUPLE1_DATA 	= gfec1q0mmrjy6cbs73lihhbt1_834[127:0] ;


assign js3z5wu2f2ovevwq_266 = (
	((sekk9brljmlsdkeum63ob_786 == 1'b1))?md3859oecbr4ww9hut7ko2m07_807 :
	((qnpa7s6po3d965wkydqk2tcp4c_362 == 1'b1))?u59i69yb7j1fsu9ys1xxejqadwpv5to_560 :
	sccfgxiou3g4faiu2897r2z_610 ) ;

assign hrz8afe9vnyr5w0fr0ak6of8n6x_245 = (
	((sccfgxiou3g4faiu2897r2z_610 == 1'b1) && (qnpa7s6po3d965wkydqk2tcp4c_362 == 1'b1))?u59i69yb7j1fsu9ys1xxejqadwpv5to_560 :
	sccfgxiou3g4faiu2897r2z_610 ) ;



always @(posedge clk_out_0)
begin
  if (rst_in_0) 
  begin
	byneh5mc61xwpucgzi87wpqse_595 <= 1'b0 ;
	sccfgxiou3g4faiu2897r2z_610 <= 1'b0 ;
	kj1dtlik3k63nowmkbxe0_328 <= 1'b0 ;
	vr2e1vv99jzegqb3zy4_339 <= 1'b0 ;
	msmhg3yfh90boeq90q89z_70 <= 9'b000000000 ;
	anuccmg235c5vwi4z532e3913_226 <= 1'b0 ;
	backpressure_out <= 1'b0 ;
   end
  else
  begin
		byneh5mc61xwpucgzi87wpqse_595 <= backpressure_in ;
		sccfgxiou3g4faiu2897r2z_610 <= js3z5wu2f2ovevwq_266 ;
		kj1dtlik3k63nowmkbxe0_328 <= psg4fkt8aq656g04_489 ;
		vr2e1vv99jzegqb3zy4_339 <= sekk9brljmlsdkeum63ob_786 ;
		msmhg3yfh90boeq90q89z_70 <= t0lyt0xw5vota9vtcf5ykcfkzwfrzt_842 ;
		anuccmg235c5vwi4z532e3913_226 <= bmobzfp9f6mu9h76dahcz6sylx2m240l_848 ;
		backpressure_out <= wnyvuae2kf8ozqqkgqf_536 ;
  end
end

always @(posedge clk_in_0)
begin
  if (rst_in_0) 
  begin
	ugopf3wwwck97u7mduos_635 <= 1'b0 ;
	x282mn2tddiao5tsv_693 <= 1'b1 ;
   end
  else
  begin
	if (fq73c2f8kmm2scvp92dih9qyq4_28) 
	begin 
	  ugopf3wwwck97u7mduos_635 <= 1'b0 ;
	 end 
	else 
	begin 
		if (vmuogeltvwr2xbu3gbcd8d_710) 
		begin 
			ugopf3wwwck97u7mduos_635 <= lyy1d57hx8xq9ici41t0b8pf81ph_427 ;
		end 
	end 
	if (cigmt57pzo7eocnibzrwa71c_869) 
	begin 
		x282mn2tddiao5tsv_693 <= lk0s6b8wyfwt85jfr3f8x168svx_160 ;
	end 
  end
end

always @(posedge clk_out_1)
begin
  if (rst_in_0) 
  begin
	ivkl03188fcybo8wnrboflf2a6_469 <= 1'b0 ;
	nmu3noihilm7i1nr1_81 <= 1'b0 ;
   end
  else
  begin
		ivkl03188fcybo8wnrboflf2a6_469 <= c0htgw06i5dix6awxykj_472 ;
		nmu3noihilm7i1nr1_81 <= t3i36ktei5psilxdqzrfcsk37zuy_786 ;
  end
end

always @(posedge clk_out_2)
begin
  if (rst_in_0) 
  begin
	dzfsrl99f2ql4l1nnguyl3c19zvnxhcs_55 <= 1'b0 ;
   end
  else
  begin
		dzfsrl99f2ql4l1nnguyl3c19zvnxhcs_55 <= b7u0ftvj6ioghvkfqwlmi2hnn2rgo_546 ;
  end
end

defparam v26keyzm8pjqvn3md1bx0l7v_448.WRITE_DATA_WIDTH = 290; 
defparam v26keyzm8pjqvn3md1bx0l7v_448.FIFO_WRITE_DEPTH = 512; 
defparam v26keyzm8pjqvn3md1bx0l7v_448.PROG_FULL_THRESH = 195; 
defparam v26keyzm8pjqvn3md1bx0l7v_448.PROG_EMPTY_THRESH = 195; 
defparam v26keyzm8pjqvn3md1bx0l7v_448.READ_MODE = "STD"; 
defparam v26keyzm8pjqvn3md1bx0l7v_448.WR_DATA_COUNT_WIDTH = 9; 
defparam v26keyzm8pjqvn3md1bx0l7v_448.RD_DATA_COUNT_WIDTH = 9; 
defparam v26keyzm8pjqvn3md1bx0l7v_448.DOUT_RESET_VALUE = "0"; 
defparam v26keyzm8pjqvn3md1bx0l7v_448.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_sync v26keyzm8pjqvn3md1bx0l7v_448 (
	.wr_en(yd6chwbj0g1majabjgmrzcbtj623t_26),
	.din(pzr442u2amcwhljdn4yg_587),
	.rd_en(sb7wol8j143wjkgm_167),
	.sleep(ggm6lzvtf70aaefsn_868),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(djyq38qxv3lj46w0ou_898), 
	.dout(zzzvdafa8cg9ryqnt_731), 
	.empty(cn05g9jb1bbbu4ys4rlkvj_620), 
	.prog_full(bmobzfp9f6mu9h76dahcz6sylx2m240l_848), 
	.full(wwnahcvgec9z12b8ftjl7fy47zpv2z_43), 
	.rd_data_count(qt8vbwf74hte0uls9h6d1wbzqqg3sv6_271), 
	.wr_data_count(j9xr9j4xuht7ggv1corapm7_673), 
	.wr_rst_busy(y9juoa138l3qtbzz5i_661), 
	.rd_rst_busy(hkf6wwoddlstohshdqcoy9vu_109), 
	.overflow(n28snng1ll7svgki3tkt_183), 
	.underflow(vds56aonmxxivy9zw9d_696), 
	.sbiterr(hsijnmxg65n7k3xl7m3ka26q_206), 
	.dbiterr(lq0nahrr7z2asbn3_548), 
	.almost_empty(eno919jj14dxr8khu_795), 
	.almost_full(qzqxtfzfa8to3b45c7bqbjex0hocq_70), 
	.wr_ack(ja2a20edzafxv6rm_611), 
	.data_valid(x7270my7b0rv3aau2kedi9pxug_440), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam b5kuvdeggv1q86en2dieqs20dgr3_1178.WRITE_DATA_WIDTH = 1; 
defparam b5kuvdeggv1q86en2dieqs20dgr3_1178.FIFO_WRITE_DEPTH = 512; 
defparam b5kuvdeggv1q86en2dieqs20dgr3_1178.PROG_FULL_THRESH = 195; 
defparam b5kuvdeggv1q86en2dieqs20dgr3_1178.PROG_EMPTY_THRESH = 195; 
defparam b5kuvdeggv1q86en2dieqs20dgr3_1178.READ_MODE = "FWFT"; 
defparam b5kuvdeggv1q86en2dieqs20dgr3_1178.WR_DATA_COUNT_WIDTH = 9; 
defparam b5kuvdeggv1q86en2dieqs20dgr3_1178.RD_DATA_COUNT_WIDTH = 9; 
defparam b5kuvdeggv1q86en2dieqs20dgr3_1178.DOUT_RESET_VALUE = "0"; 
defparam b5kuvdeggv1q86en2dieqs20dgr3_1178.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_sync b5kuvdeggv1q86en2dieqs20dgr3_1178 (
	.wr_en(xvqaaypxlijyus3t_430),
	.din(btovmo4xkn5ztpepa_557),
	.rd_en(owo1sffay9u14cdlr7z3kf_518),
	.sleep(u0kowh7bbhvfvn6x5dw0zip0lo_516),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(m7vn4saxcztlcx7d_675), 
	.dout(z5gb3n9ahx1avtj1dw85k_521), 
	.empty(chyjroxy13zk0wx0jzlduc_231), 
	.prog_full(u5b632z7lxcj7u6ftwwmpte7_339), 
	.full(ne5jf3q99zfx4oy0ksv40qczbnk_315), 
	.rd_data_count(x409b003p40eqbmrdpx3w2qb_520), 
	.wr_data_count(emy9lckc0yq872wu0i8mcowpezno_781), 
	.wr_rst_busy(wk21ex8gragwuvzg76kdr1m_675), 
	.rd_rst_busy(unsjelggbdpnq9xf_226), 
	.overflow(hp8xwvze42dommdpfd_680), 
	.underflow(wmpggarchx3hadw6799v5_537), 
	.sbiterr(q9l7baouy5rx0efyzn8y_872), 
	.dbiterr(qgvdi31xdssi1i6feap4vded2oqeuh_115), 
	.almost_empty(kmxjgc0fu592kpnymq7p3mu1e512a_677), 
	.almost_full(jxvkz79tdszg5eux1l7_313), 
	.wr_ack(vli34duorqjc665p_794), 
	.data_valid(k9hmuf4g716vkybd86zt83ba8vv_209), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam wv0d55iktz9uwrn5j116pb2sqpn20u_216.WRITE_DATA_WIDTH = 256; 
defparam wv0d55iktz9uwrn5j116pb2sqpn20u_216.FIFO_WRITE_DEPTH = 256; 
defparam wv0d55iktz9uwrn5j116pb2sqpn20u_216.PROG_FULL_THRESH = 66; 
defparam wv0d55iktz9uwrn5j116pb2sqpn20u_216.PROG_EMPTY_THRESH = 66; 
defparam wv0d55iktz9uwrn5j116pb2sqpn20u_216.READ_MODE = "STD"; 
defparam wv0d55iktz9uwrn5j116pb2sqpn20u_216.WR_DATA_COUNT_WIDTH = 8; 
defparam wv0d55iktz9uwrn5j116pb2sqpn20u_216.RD_DATA_COUNT_WIDTH = 8; 
defparam wv0d55iktz9uwrn5j116pb2sqpn20u_216.DOUT_RESET_VALUE = "0"; 
defparam wv0d55iktz9uwrn5j116pb2sqpn20u_216.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async wv0d55iktz9uwrn5j116pb2sqpn20u_216 (
	.wr_en(tlkrk8za24lfweo4u99_759),
	.din(pfndll7civrmfg6vpukq_617),
	.rd_en(grffvhgbukr9tvqf37l0pf09i647_25),
	.sleep(dmnl12fj6e3olgwvn9cjpnk_356),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(jq25guzjcv3550c2ssbsni5mm_864), 
	.dout(hmi3r38f4bp2zm4hv5pkployvcd1dnb_739), 
	.empty(i80h2fsuryjrgty0vhqm0uv5_849), 
	.prog_full(t3i36ktei5psilxdqzrfcsk37zuy_786), 
	.full(asniwciskfbadchhp9_519), 
	.rd_data_count(bzt0tun61iz9wgo22ujro6kv94smazyp_775), 
	.wr_data_count(uuwx2pe7oqgfnb91rd6u8s_182), 
	.wr_rst_busy(lvpzhbq17rfkz6c1i5nd_294), 
	.rd_rst_busy(dpe28lipfa0zua3x5b5zrbn6kqwo_306), 
	.overflow(hfsq95w51zb0kzpkruug6y6_692), 
	.underflow(vbwt99kvih5tr6n0_828), 
	.sbiterr(yau7qxqjls0sfhv3x4f00kfxjts5n5qn_810), 
	.dbiterr(z55w1kflitllo5mnh4n4o_783), 
	.almost_empty(vlginff8o5ih1yiubm3jem_163), 
	.almost_full(ich6h7imkk07eh9pb97ru3yq5gyjc2kp_749), 
	.wr_ack(ljoz3quy3nl64cdz2uuogd2dgpv3zg_95), 
	.data_valid(ac1so9h3u9loyoqtzj0f06our34_822), 

	.wr_clk(clk_in_1), 

	.rd_clk(clk_out_1), 
	.rst(rst_in_1) 
); 

defparam p7bisww0xg2n48dnpw1gbvw5tuxosc_1547.WRITE_DATA_WIDTH = 128; 
defparam p7bisww0xg2n48dnpw1gbvw5tuxosc_1547.FIFO_WRITE_DEPTH = 256; 
defparam p7bisww0xg2n48dnpw1gbvw5tuxosc_1547.PROG_FULL_THRESH = 66; 
defparam p7bisww0xg2n48dnpw1gbvw5tuxosc_1547.PROG_EMPTY_THRESH = 66; 
defparam p7bisww0xg2n48dnpw1gbvw5tuxosc_1547.READ_MODE = "STD"; 
defparam p7bisww0xg2n48dnpw1gbvw5tuxosc_1547.WR_DATA_COUNT_WIDTH = 8; 
defparam p7bisww0xg2n48dnpw1gbvw5tuxosc_1547.RD_DATA_COUNT_WIDTH = 8; 
defparam p7bisww0xg2n48dnpw1gbvw5tuxosc_1547.DOUT_RESET_VALUE = "0"; 
defparam p7bisww0xg2n48dnpw1gbvw5tuxosc_1547.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async p7bisww0xg2n48dnpw1gbvw5tuxosc_1547 (
	.wr_en(l5dr88lns7uzlyc37pixlsngn5_125),
	.din(ilkrlhonr67jfykh08ilp53byjv_738),
	.rd_en(c1a8jzk5vqfz4ooif_858),
	.sleep(pzp7czoiqjd066ifldxljusc0sf7_618),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(z2b4xq7dknehevagq26f_825), 
	.dout(gfec1q0mmrjy6cbs73lihhbt1_834), 
	.empty(j80pwexe3pzdil3aw0t1eyh07x39_138), 
	.prog_full(b7u0ftvj6ioghvkfqwlmi2hnn2rgo_546), 
	.full(wzc1tfuufl50spcpo2zdv36_141), 
	.rd_data_count(ykdagyn6idwp5k97fvfk5l9k284uge_489), 
	.wr_data_count(v4g8zcw9o1b89sw3_463), 
	.wr_rst_busy(r9r8y8uio2ihwqsktrspq3w_757), 
	.rd_rst_busy(err5z6ev5gw02ip4ucy_160), 
	.overflow(hd7wxnrzshoh5bvwgjauewdpt9rdwhgk_387), 
	.underflow(hrhgtwezbgucepknyvaowckydzrt_36), 
	.sbiterr(h0nsdhfmta0sfe49z3txn39pc1rj0y3_179), 
	.dbiterr(rlo12ogodt0ddrktap6_714), 
	.almost_empty(l2tod1gmrpj7gderrg9u703db45yu8r_536), 
	.almost_full(rj3lm2648kg6ekcna2ddb_340), 
	.wr_ack(iisv0whbt37q0jdt0x78cjred81l_635), 
	.data_valid(nl0x774nkmivbkig1lfurglpq_146), 

	.wr_clk(clk_in_2), 

	.rd_clk(clk_out_2), 
	.rst(rst_in_2) 
); 

endmodule 
