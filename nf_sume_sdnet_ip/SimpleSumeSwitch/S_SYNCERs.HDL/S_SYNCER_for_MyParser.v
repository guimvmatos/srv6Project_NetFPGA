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
// File created: 2020/11/07 02:06:19
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






 reg	i70nqb41xwyulfhdo_840;	 initial i70nqb41xwyulfhdo_840 = 1'b0 ;
 wire	rvt7tm0c0c2qstnj9_96 ;
 wire [265:0] nm1ncww913196hk1r6qii9d9yd_16 ;
 wire	jpc5wu8vgsop22ku4if9x7egel0r_242 ;
 wire	yos5nss6cntdexiryudm5eldertrcf5_203 ;
 wire	tsoolqk5img6910ml9prhgfbhgm_774 ;
 wire [8:0] pqheu4e5txdh52e6jtgw_772 ;
 wire [8:0] z6h7lonpknnm5kcnr9g_200 ;
 wire	h5fnjk4l8ilechlirmpmobj17kklxp99_378 ;
 wire	t0e61ry1j4k6yrcu08sy00jm_663 ;
 wire	ljh8zw5ps1hv4jln4q_859 ;
 wire	bw5oxb9skcwunej9y72_401 ;
 wire	uu0v8esthvjg8yznqc3lcqp42z7g12hu_592 ;
 wire	mytoe1csc9a441mclyq_876 ;
 wire	rffhhoxh6x1jb6dqkt9qgvcfm4p0g6_91 ;
 wire	l0s5gr41p96ih75345sxcy_621 ;
 wire	puvh6onccnbtmulzncof_851 ;
 wire	wdpdhijs2vi41fr868x_438 ;
 wire	q91drk38wx64hgtkmh_30 ;
 reg	crht6pcy75lia26j6yi1i5zzjj15k4ea_201;	 initial crht6pcy75lia26j6yi1i5zzjj15k4ea_201 = 1'b0 ;
 wire	zn6shsjezapbm35et022dsupx_538 ;
 reg	axsgtpl5bfgkumujtsh3zrs2pz_569;	 initial axsgtpl5bfgkumujtsh3zrs2pz_569 = 1'b0 ;
 reg	u3ug9tp2uaiop5iq5eq1pfrikv9gs9d_328;	 initial u3ug9tp2uaiop5iq5eq1pfrikv9gs9d_328 = 1'b0 ;
 wire	i3hsr1mxqktk5tmeko07wv8z3_308 ;
 wire [0:0] l8fmcgfkzi45qtplz_393 ;
 wire	hlngdgv6mnw8x9h5hvok4p7q_786 ;
 wire	na9qme40uaraw3bxmgvadxtxnl79zbof_417 ;
 wire	cj8iv3mw797m1qlpxx3qrs9aftaujm0_540 ;
 wire [8:0] b4awvm1zot87hdvzddo5_486 ;
 wire [8:0] jucap2j7nioerwk38znjrgnzc_699 ;
 wire	pb0x8qi7rdiy8lct_373 ;
 wire	b6u8i4zqdn8kz2elnyu4olla6ivx2_725 ;
 wire	ukyj9xunfhrcn8sv1m2_31 ;
 wire	fdnu1f6xlkex9fdxodyvmwturb5jc4_883 ;
 wire	vgx4rxvldv7mhnokrsuvlik60jxuti_783 ;
 wire	uk49hbq1wr7itk59zooxisd_896 ;
 wire	jf6r921j9nx3ah1jzu5l2_3 ;
 wire	pejtyzfvwuc0purk77cht5sle69s8n_155 ;
 wire	inn8izn39qwer9ltusxjjps72c_806 ;
 wire	ym0puy9v6c18lcdd1dow0isf8w17hnv2_592 ;
 reg [8:0] w19ag9n1t5d0m21i0a8zqhk_470;	 initial w19ag9n1t5d0m21i0a8zqhk_470 = 9'b000000000 ;
 reg	zhxu790j1zebwequmvc9iziddqwoieo_905;	 initial zhxu790j1zebwequmvc9iziddqwoieo_905 = 1'b0 ;
 wire	wyrhfeplr91bdt5rjlca08zzwr9unwk4_125 ;
 wire [127:0] fdf2k5u3498kb00bu7ml8k0g_491 ;
 wire	i6ah8us7qorp7pghfop9qs3dy_518 ;
 wire	hlbn5pvrh1c49plz0em_494 ;
 wire	adhuo55xxk8afx3q003q4yf1_100 ;
 wire [7:0] ejijfwdszvn48rlokt7u1g5m40u1n_27 ;
 wire [7:0] xer2lrxubw7uld0e7lsnnp_103 ;
 wire	tan92vzat3zne4vk0xmw81a2uv9xpi_432 ;
 wire	z62vj404hcrstfmmwh7xve_768 ;
 wire	ejiet7tgxfvhx1u6egvg3cpoc_161 ;
 wire	oy2ql7b3yqlbz5vd3446u2ece52u50_810 ;
 wire	c4zbprjrhp37cc2axjhts52z_391 ;
 wire	ykk5vxz4l4g88fhju4qk9k9_688 ;
 wire	k1q5ymnemtgptodluo1xxmn_756 ;
 wire	oyhxntu5lzj1xvgdl0qecqi9shk15hs_109 ;
 wire	hy04ho241i9vrlvvrcmfbo_488 ;
 wire	kcma236o5qp1li02n9nbpm_872 ;
 wire	nv6h0j8a7f0bfoj29r_577 ;
 wire [22:0] jz4cejstid5tbcq28x0c2qlztayi7s_389 ;
 wire	i27t4whetgvpwjllvmsdum2y_105 ;
 wire	iuxduzhfsxks6wc32w62224xv_177 ;
 wire	k58zctdmt7di8ugxwtqv27pc_168 ;
 wire [7:0] cqx8g8wx9zn3o2bg4_85 ;
 wire [7:0] khhwceer3kwa0ibko7iwktbei8b_748 ;
 wire	yxf3c3mr7b0yz7furgcv2_665 ;
 wire	h2q1wblwwlzg87pwlyw4n3_705 ;
 wire	ebtiyvrfmboj6lfn8unfc_508 ;
 wire	s2mnjn0pjwlk4x92lam_107 ;
 wire	f71osg90o6811takkpvv9_705 ;
 wire	iia3mw6sy80tzrir9ijzc6isyf3_741 ;
 wire	tkz9d9hn82v6088bw25tvgxbmp4_389 ;
 wire	bm5x8un16wqkydk6_512 ;
 wire	pqgidis7c0ppp0iqx0tvs421fhcqore_59 ;
 wire	o2bjlbsqlzmb4ul0wt82c0cf9l6mny5x_276 ;
 reg	u2idkysxh6s74iz0avzw1m3_679;	 initial u2idkysxh6s74iz0avzw1m3_679 = 1'b0 ;
 reg	wef6g7dnh92717rxhxh6vjnl_848;	 initial wef6g7dnh92717rxhxh6vjnl_848 = 1'b0 ;
 reg	f1o01akfebkd20unewueme4ae52_1;	 initial f1o01akfebkd20unewueme4ae52_1 = 1'b0 ;
 wire	f0mdx2vlbxn0pssmok7fo0594vhnc_93 ;
 wire [265:0] jj09dont43ijitlt0nfzhugpy6j0xf72_717 ;
 wire	w5i9azwfsbfce38arp89_557 ;
 wire [265:0] ld7jj850yytgkhv4k6tgdorehy1cw1v_396 ;
 wire	j8e1l11zhcpwge47jmazbedo_144 ;
 wire	dqaf5i3clixilnsm54j4wueto_277 ;
 wire	x0haifptjf9aeqopswo5ftnx_83 ;
 wire	pqg5bjbhoa8hf8ybnwier2_417 ;
 wire	q51xu0xtzisb212t8dgl6srukufb_198 ;
 wire	q8x7v9yjseinduq5j4k6h26wdd_820 ;
 wire	umrkdm8akj4h2bcp1a4gb_143 ;
 wire	hmwwk7vsd12hst3866x9asy_543 ;
 wire	sbmytb43gxzjhtbmwk86_608 ;
 wire	g4k8e28p9kjtu0a93_212 ;
 wire [5:0] vp51wtxaxjx5cl12sej72l3a2voyz6_371 ;
 wire [255:0] nmdhyb4jca152zlbsbyz2inzet9_654 ;
 wire	u4tzn8je56s58rkg71kg_531 ;
 wire	qcn7xjctif1y6md45n8nlw8yw3qqqb34_790 ;
 wire	n0n5ctlmqw4slidxof1hor9girwk_284 ;
 wire	wlf1y3xcyxqvhthvzcngrb1xl_633 ;
 wire	j7ua0i0wtti8rjjgd1udqxb6vnomsjn1_755 ;
 wire [0:0] ntdwoofipl4iifjm0qevp8lrx8yy2_407 ;
 wire	n0q4gn4ascb22y052lzk8d7r_344 ;
 wire	rlwxyfkqkbqasfv2w6g0kwz5_403 ;
 wire [8:0] vdiujyzo7earqr4x3in7qw_191 ;
 wire	es3knnhj4b95uulu8kdh01da27n8c5y_86 ;
 wire	o1uthhgaz0pzzgsf7cfx9_221 ;
 wire	a49wqonrx22bri82_548 ;
 wire	rnkb7932diqycgjz8ilx4oc7qo44rr_575 ;
 wire	nxpufvjogh6f9l1mtoil2g_18 ;
 wire	qt7tse14a2fen73irbcx_232 ;
 wire	rjmn5dcxw0z9ucg2s_806 ;
 wire [127:0] woy6jk953zhan5m5l3al4iwe72t5_196 ;
 wire	a64q6xf6yl9uaeh53r0cd91zv328o_840 ;
 wire [127:0] a68831d5k5evnrz1vln19g2_680 ;
 wire	m4a8a34j6g4theh9b0z_574 ;
 wire	f7fd5i5g2x52ikj7xumoigm4ri_171 ;
 wire	y71bty1qg79xb4dae08azw6smqzsdx6w_699 ;
 wire [22:0] qtw3i8tjxot52skwrol1_529 ;
 wire	k9470xzy51msvgefw22auquvxn5oqm_725 ;
 wire [22:0] kagdfms7wv2ay2f54md3jt25ma4w5vzb_373 ;
 wire	wsk7ribcaqzrv5drdtf64c6d232af1j_635 ;
 wire	bjanwyy7pnrj3yl38gi1fatjw3gm9mi_770 ;
 wire	zwz186ceo7v5ykob7atd872np_739 ;
 wire	id3j8xfvi2qvppl46mhmh_872 ;
 wire	e5jiyjvdzrldf2r0975mann3m54j_716 ;


 assign f0mdx2vlbxn0pssmok7fo0594vhnc_93 = 
	 ~(backpressure_in) ;
 assign jj09dont43ijitlt0nfzhugpy6j0xf72_717 = 
	{packet_in_PACKET2_SOF, packet_in_PACKET2_EOF, packet_in_PACKET2_VAL, packet_in_PACKET2_DAT, packet_in_PACKET2_CNT, packet_in_PACKET2_ERR} ;
 assign w5i9azwfsbfce38arp89_557 	= packet_in_PACKET2_VAL ;
 assign ld7jj850yytgkhv4k6tgdorehy1cw1v_396 	= jj09dont43ijitlt0nfzhugpy6j0xf72_717[265:0] ;
 assign j8e1l11zhcpwge47jmazbedo_144 = 
	rnkb7932diqycgjz8ilx4oc7qo44rr_575 | id3j8xfvi2qvppl46mhmh_872 ;
 assign dqaf5i3clixilnsm54j4wueto_277 = 
	1'b0 ;
 assign x0haifptjf9aeqopswo5ftnx_83 = 
	1'b1 ;
 assign pqg5bjbhoa8hf8ybnwier2_417 = 
	 ~(zn6shsjezapbm35et022dsupx_538) ;
 assign q51xu0xtzisb212t8dgl6srukufb_198 = 
	f0mdx2vlbxn0pssmok7fo0594vhnc_93 & qt7tse14a2fen73irbcx_232 & j8e1l11zhcpwge47jmazbedo_144 ;
 assign q8x7v9yjseinduq5j4k6h26wdd_820 	= q51xu0xtzisb212t8dgl6srukufb_198 ;
 assign umrkdm8akj4h2bcp1a4gb_143 	= q8x7v9yjseinduq5j4k6h26wdd_820 ;
 assign hmwwk7vsd12hst3866x9asy_543 = 
	1'b0 ;
 assign sbmytb43gxzjhtbmwk86_608 = 
	 ~(jpc5wu8vgsop22ku4if9x7egel0r_242) ;
 assign g4k8e28p9kjtu0a93_212 	= nm1ncww913196hk1r6qii9d9yd_16[0] ;
 assign vp51wtxaxjx5cl12sej72l3a2voyz6_371 	= nm1ncww913196hk1r6qii9d9yd_16[6:1] ;
 assign nmdhyb4jca152zlbsbyz2inzet9_654 	= nm1ncww913196hk1r6qii9d9yd_16[262:7] ;
 assign u4tzn8je56s58rkg71kg_531 	= nm1ncww913196hk1r6qii9d9yd_16[263] ;
 assign qcn7xjctif1y6md45n8nlw8yw3qqqb34_790 	= nm1ncww913196hk1r6qii9d9yd_16[264] ;
 assign n0n5ctlmqw4slidxof1hor9girwk_284 	= nm1ncww913196hk1r6qii9d9yd_16[265] ;
 assign wlf1y3xcyxqvhthvzcngrb1xl_633 = 
	u3ug9tp2uaiop5iq5eq1pfrikv9gs9d_328 & u4tzn8je56s58rkg71kg_531 ;
 assign j7ua0i0wtti8rjjgd1udqxb6vnomsjn1_755 	= packet_in_PACKET2_VAL ;
 assign ntdwoofipl4iifjm0qevp8lrx8yy2_407 = packet_in_PACKET2_SOF ;
 assign n0q4gn4ascb22y052lzk8d7r_344 	= q8x7v9yjseinduq5j4k6h26wdd_820 ;
 assign rlwxyfkqkbqasfv2w6g0kwz5_403 = 
	1'b0 ;
 assign vdiujyzo7earqr4x3in7qw_191 	= b4awvm1zot87hdvzddo5_486[8:0] ;
 assign es3knnhj4b95uulu8kdh01da27n8c5y_86 = (
	((vdiujyzo7earqr4x3in7qw_191 != w19ag9n1t5d0m21i0a8zqhk_470))?1'b1:
	0)  ;
 assign o1uthhgaz0pzzgsf7cfx9_221 = l8fmcgfkzi45qtplz_393 ;
 assign a49wqonrx22bri82_548 = l8fmcgfkzi45qtplz_393 ;
 assign rnkb7932diqycgjz8ilx4oc7qo44rr_575 = 
	 ~(a49wqonrx22bri82_548) ;
 assign nxpufvjogh6f9l1mtoil2g_18 	= hlngdgv6mnw8x9h5hvok4p7q_786 ;
 assign qt7tse14a2fen73irbcx_232 = 
	 ~(hlngdgv6mnw8x9h5hvok4p7q_786) ;
 assign rjmn5dcxw0z9ucg2s_806 = 
	f0mdx2vlbxn0pssmok7fo0594vhnc_93 & id3j8xfvi2qvppl46mhmh_872 & qt7tse14a2fen73irbcx_232 & o1uthhgaz0pzzgsf7cfx9_221 ;
 assign woy6jk953zhan5m5l3al4iwe72t5_196 = 
	tuple_in_TUPLE0_DATA ;
 assign a64q6xf6yl9uaeh53r0cd91zv328o_840 	= tuple_in_TUPLE0_VALID ;
 assign a68831d5k5evnrz1vln19g2_680 	= woy6jk953zhan5m5l3al4iwe72t5_196[127:0] ;
 assign m4a8a34j6g4theh9b0z_574 = 
	 ~(i6ah8us7qorp7pghfop9qs3dy_518) ;
 assign f7fd5i5g2x52ikj7xumoigm4ri_171 	= rjmn5dcxw0z9ucg2s_806 ;
 assign y71bty1qg79xb4dae08azw6smqzsdx6w_699 = 
	1'b0 ;
 assign qtw3i8tjxot52skwrol1_529 = 
	tuple_in_TUPLE1_DATA ;
 assign k9470xzy51msvgefw22auquvxn5oqm_725 	= tuple_in_TUPLE1_VALID ;
 assign kagdfms7wv2ay2f54md3jt25ma4w5vzb_373 	= qtw3i8tjxot52skwrol1_529[22:0] ;
 assign wsk7ribcaqzrv5drdtf64c6d232af1j_635 = 
	 ~(i27t4whetgvpwjllvmsdum2y_105) ;
 assign bjanwyy7pnrj3yl38gi1fatjw3gm9mi_770 	= rjmn5dcxw0z9ucg2s_806 ;
 assign zwz186ceo7v5ykob7atd872np_739 = 
	1'b0 ;
 assign id3j8xfvi2qvppl46mhmh_872 = 
	sbmytb43gxzjhtbmwk86_608 & m4a8a34j6g4theh9b0z_574 & wsk7ribcaqzrv5drdtf64c6d232af1j_635 ;
 assign e5jiyjvdzrldf2r0975mann3m54j_716 = 
	u2idkysxh6s74iz0avzw1m3_679 | wef6g7dnh92717rxhxh6vjnl_848 | f1o01akfebkd20unewueme4ae52_1 ;
 assign packet_out_PACKET2_SOF 	= n0n5ctlmqw4slidxof1hor9girwk_284 ;
 assign packet_out_PACKET2_EOF 	= qcn7xjctif1y6md45n8nlw8yw3qqqb34_790 ;
 assign packet_out_PACKET2_VAL 	= wlf1y3xcyxqvhthvzcngrb1xl_633 ;
 assign packet_out_PACKET2_DAT 	= nmdhyb4jca152zlbsbyz2inzet9_654[255:0] ;
 assign packet_out_PACKET2_CNT 	= vp51wtxaxjx5cl12sej72l3a2voyz6_371[5:0] ;
 assign packet_out_PACKET2_ERR 	= g4k8e28p9kjtu0a93_212 ;
 assign packet_in_PACKET2_RDY 	= packet_out_PACKET2_RDY ;
 assign tuple_out_TUPLE0_VALID 	= zhxu790j1zebwequmvc9iziddqwoieo_905 ;
 assign tuple_out_TUPLE0_DATA 	= fdf2k5u3498kb00bu7ml8k0g_491[127:0] ;
 assign tuple_out_TUPLE1_VALID 	= zhxu790j1zebwequmvc9iziddqwoieo_905 ;
 assign tuple_out_TUPLE1_DATA 	= jz4cejstid5tbcq28x0c2qlztayi7s_389[22:0] ;


assign q91drk38wx64hgtkmh_30 = (
	((q8x7v9yjseinduq5j4k6h26wdd_820 == 1'b1))?x0haifptjf9aeqopswo5ftnx_83 :
	((f0mdx2vlbxn0pssmok7fo0594vhnc_93 == 1'b1))?dqaf5i3clixilnsm54j4wueto_277 :
	crht6pcy75lia26j6yi1i5zzjj15k4ea_201 ) ;

assign zn6shsjezapbm35et022dsupx_538 = (
	((crht6pcy75lia26j6yi1i5zzjj15k4ea_201 == 1'b1) && (f0mdx2vlbxn0pssmok7fo0594vhnc_93 == 1'b1))?dqaf5i3clixilnsm54j4wueto_277 :
	crht6pcy75lia26j6yi1i5zzjj15k4ea_201 ) ;



always @(posedge clk_out_0)
begin
  if (rst_in_0) 
  begin
	i70nqb41xwyulfhdo_840 <= 1'b0 ;
	crht6pcy75lia26j6yi1i5zzjj15k4ea_201 <= 1'b0 ;
	axsgtpl5bfgkumujtsh3zrs2pz_569 <= 1'b0 ;
	u3ug9tp2uaiop5iq5eq1pfrikv9gs9d_328 <= 1'b0 ;
	w19ag9n1t5d0m21i0a8zqhk_470 <= 9'b000000000 ;
	u2idkysxh6s74iz0avzw1m3_679 <= 1'b0 ;
	backpressure_out <= 1'b0 ;
   end
  else
  begin
		i70nqb41xwyulfhdo_840 <= backpressure_in ;
		crht6pcy75lia26j6yi1i5zzjj15k4ea_201 <= q91drk38wx64hgtkmh_30 ;
		axsgtpl5bfgkumujtsh3zrs2pz_569 <= sbmytb43gxzjhtbmwk86_608 ;
		u3ug9tp2uaiop5iq5eq1pfrikv9gs9d_328 <= q8x7v9yjseinduq5j4k6h26wdd_820 ;
		w19ag9n1t5d0m21i0a8zqhk_470 <= vdiujyzo7earqr4x3in7qw_191 ;
		u2idkysxh6s74iz0avzw1m3_679 <= yos5nss6cntdexiryudm5eldertrcf5_203 ;
		backpressure_out <= e5jiyjvdzrldf2r0975mann3m54j_716 ;
  end
end

always @(posedge clk_out_1)
begin
  if (rst_in_0) 
  begin
	zhxu790j1zebwequmvc9iziddqwoieo_905 <= 1'b0 ;
	wef6g7dnh92717rxhxh6vjnl_848 <= 1'b0 ;
   end
  else
  begin
		zhxu790j1zebwequmvc9iziddqwoieo_905 <= rjmn5dcxw0z9ucg2s_806 ;
		wef6g7dnh92717rxhxh6vjnl_848 <= hlbn5pvrh1c49plz0em_494 ;
  end
end

always @(posedge clk_out_2)
begin
  if (rst_in_0) 
  begin
	f1o01akfebkd20unewueme4ae52_1 <= 1'b0 ;
   end
  else
  begin
		f1o01akfebkd20unewueme4ae52_1 <= iuxduzhfsxks6wc32w62224xv_177 ;
  end
end

defparam ga7xz6c4mnr122eu91241mszg7zn_1998.WRITE_DATA_WIDTH = 266; 
defparam ga7xz6c4mnr122eu91241mszg7zn_1998.FIFO_WRITE_DEPTH = 512; 
defparam ga7xz6c4mnr122eu91241mszg7zn_1998.PROG_FULL_THRESH = 129; 
defparam ga7xz6c4mnr122eu91241mszg7zn_1998.PROG_EMPTY_THRESH = 129; 
defparam ga7xz6c4mnr122eu91241mszg7zn_1998.READ_MODE = "STD"; 
defparam ga7xz6c4mnr122eu91241mszg7zn_1998.WR_DATA_COUNT_WIDTH = 9; 
defparam ga7xz6c4mnr122eu91241mszg7zn_1998.RD_DATA_COUNT_WIDTH = 9; 
defparam ga7xz6c4mnr122eu91241mszg7zn_1998.DOUT_RESET_VALUE = "0"; 
defparam ga7xz6c4mnr122eu91241mszg7zn_1998.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_sync ga7xz6c4mnr122eu91241mszg7zn_1998 (
	.wr_en(w5i9azwfsbfce38arp89_557),
	.din(ld7jj850yytgkhv4k6tgdorehy1cw1v_396),
	.rd_en(umrkdm8akj4h2bcp1a4gb_143),
	.sleep(hmwwk7vsd12hst3866x9asy_543),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(rvt7tm0c0c2qstnj9_96), 
	.dout(nm1ncww913196hk1r6qii9d9yd_16), 
	.empty(jpc5wu8vgsop22ku4if9x7egel0r_242), 
	.prog_full(yos5nss6cntdexiryudm5eldertrcf5_203), 
	.full(tsoolqk5img6910ml9prhgfbhgm_774), 
	.rd_data_count(pqheu4e5txdh52e6jtgw_772), 
	.wr_data_count(z6h7lonpknnm5kcnr9g_200), 
	.wr_rst_busy(h5fnjk4l8ilechlirmpmobj17kklxp99_378), 
	.rd_rst_busy(t0e61ry1j4k6yrcu08sy00jm_663), 
	.overflow(ljh8zw5ps1hv4jln4q_859), 
	.underflow(bw5oxb9skcwunej9y72_401), 
	.sbiterr(uu0v8esthvjg8yznqc3lcqp42z7g12hu_592), 
	.dbiterr(mytoe1csc9a441mclyq_876), 
	.almost_empty(rffhhoxh6x1jb6dqkt9qgvcfm4p0g6_91), 
	.almost_full(l0s5gr41p96ih75345sxcy_621), 
	.wr_ack(puvh6onccnbtmulzncof_851), 
	.data_valid(wdpdhijs2vi41fr868x_438), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam jv7f2lty4978k5a1vc6pa_2613.WRITE_DATA_WIDTH = 1; 
defparam jv7f2lty4978k5a1vc6pa_2613.FIFO_WRITE_DEPTH = 512; 
defparam jv7f2lty4978k5a1vc6pa_2613.PROG_FULL_THRESH = 129; 
defparam jv7f2lty4978k5a1vc6pa_2613.PROG_EMPTY_THRESH = 129; 
defparam jv7f2lty4978k5a1vc6pa_2613.READ_MODE = "FWFT"; 
defparam jv7f2lty4978k5a1vc6pa_2613.WR_DATA_COUNT_WIDTH = 9; 
defparam jv7f2lty4978k5a1vc6pa_2613.RD_DATA_COUNT_WIDTH = 9; 
defparam jv7f2lty4978k5a1vc6pa_2613.DOUT_RESET_VALUE = "0"; 
defparam jv7f2lty4978k5a1vc6pa_2613.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_sync jv7f2lty4978k5a1vc6pa_2613 (
	.wr_en(j7ua0i0wtti8rjjgd1udqxb6vnomsjn1_755),
	.din(ntdwoofipl4iifjm0qevp8lrx8yy2_407),
	.rd_en(n0q4gn4ascb22y052lzk8d7r_344),
	.sleep(rlwxyfkqkbqasfv2w6g0kwz5_403),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(i3hsr1mxqktk5tmeko07wv8z3_308), 
	.dout(l8fmcgfkzi45qtplz_393), 
	.empty(hlngdgv6mnw8x9h5hvok4p7q_786), 
	.prog_full(na9qme40uaraw3bxmgvadxtxnl79zbof_417), 
	.full(cj8iv3mw797m1qlpxx3qrs9aftaujm0_540), 
	.rd_data_count(b4awvm1zot87hdvzddo5_486), 
	.wr_data_count(jucap2j7nioerwk38znjrgnzc_699), 
	.wr_rst_busy(pb0x8qi7rdiy8lct_373), 
	.rd_rst_busy(b6u8i4zqdn8kz2elnyu4olla6ivx2_725), 
	.overflow(ukyj9xunfhrcn8sv1m2_31), 
	.underflow(fdnu1f6xlkex9fdxodyvmwturb5jc4_883), 
	.sbiterr(vgx4rxvldv7mhnokrsuvlik60jxuti_783), 
	.dbiterr(uk49hbq1wr7itk59zooxisd_896), 
	.almost_empty(jf6r921j9nx3ah1jzu5l2_3), 
	.almost_full(pejtyzfvwuc0purk77cht5sle69s8n_155), 
	.wr_ack(inn8izn39qwer9ltusxjjps72c_806), 
	.data_valid(ym0puy9v6c18lcdd1dow0isf8w17hnv2_592), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam d0zczesknof70r1t715lcjn_1132.WRITE_DATA_WIDTH = 128; 
defparam d0zczesknof70r1t715lcjn_1132.FIFO_WRITE_DEPTH = 256; 
defparam d0zczesknof70r1t715lcjn_1132.PROG_FULL_THRESH = 66; 
defparam d0zczesknof70r1t715lcjn_1132.PROG_EMPTY_THRESH = 66; 
defparam d0zczesknof70r1t715lcjn_1132.READ_MODE = "STD"; 
defparam d0zczesknof70r1t715lcjn_1132.WR_DATA_COUNT_WIDTH = 8; 
defparam d0zczesknof70r1t715lcjn_1132.RD_DATA_COUNT_WIDTH = 8; 
defparam d0zczesknof70r1t715lcjn_1132.DOUT_RESET_VALUE = "0"; 
defparam d0zczesknof70r1t715lcjn_1132.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async d0zczesknof70r1t715lcjn_1132 (
	.wr_en(a64q6xf6yl9uaeh53r0cd91zv328o_840),
	.din(a68831d5k5evnrz1vln19g2_680),
	.rd_en(f7fd5i5g2x52ikj7xumoigm4ri_171),
	.sleep(y71bty1qg79xb4dae08azw6smqzsdx6w_699),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(wyrhfeplr91bdt5rjlca08zzwr9unwk4_125), 
	.dout(fdf2k5u3498kb00bu7ml8k0g_491), 
	.empty(i6ah8us7qorp7pghfop9qs3dy_518), 
	.prog_full(hlbn5pvrh1c49plz0em_494), 
	.full(adhuo55xxk8afx3q003q4yf1_100), 
	.rd_data_count(ejijfwdszvn48rlokt7u1g5m40u1n_27), 
	.wr_data_count(xer2lrxubw7uld0e7lsnnp_103), 
	.wr_rst_busy(tan92vzat3zne4vk0xmw81a2uv9xpi_432), 
	.rd_rst_busy(z62vj404hcrstfmmwh7xve_768), 
	.overflow(ejiet7tgxfvhx1u6egvg3cpoc_161), 
	.underflow(oy2ql7b3yqlbz5vd3446u2ece52u50_810), 
	.sbiterr(c4zbprjrhp37cc2axjhts52z_391), 
	.dbiterr(ykk5vxz4l4g88fhju4qk9k9_688), 
	.almost_empty(k1q5ymnemtgptodluo1xxmn_756), 
	.almost_full(oyhxntu5lzj1xvgdl0qecqi9shk15hs_109), 
	.wr_ack(hy04ho241i9vrlvvrcmfbo_488), 
	.data_valid(kcma236o5qp1li02n9nbpm_872), 

	.wr_clk(clk_in_1), 

	.rd_clk(clk_out_1), 
	.rst(rst_in_1) 
); 

defparam vp1pesfmr40vi4tk0ucoy0_2626.WRITE_DATA_WIDTH = 23; 
defparam vp1pesfmr40vi4tk0ucoy0_2626.FIFO_WRITE_DEPTH = 256; 
defparam vp1pesfmr40vi4tk0ucoy0_2626.PROG_FULL_THRESH = 65; 
defparam vp1pesfmr40vi4tk0ucoy0_2626.PROG_EMPTY_THRESH = 65; 
defparam vp1pesfmr40vi4tk0ucoy0_2626.READ_MODE = "STD"; 
defparam vp1pesfmr40vi4tk0ucoy0_2626.WR_DATA_COUNT_WIDTH = 8; 
defparam vp1pesfmr40vi4tk0ucoy0_2626.RD_DATA_COUNT_WIDTH = 8; 
defparam vp1pesfmr40vi4tk0ucoy0_2626.DOUT_RESET_VALUE = "0"; 
defparam vp1pesfmr40vi4tk0ucoy0_2626.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_async vp1pesfmr40vi4tk0ucoy0_2626 (
	.wr_en(k9470xzy51msvgefw22auquvxn5oqm_725),
	.din(kagdfms7wv2ay2f54md3jt25ma4w5vzb_373),
	.rd_en(bjanwyy7pnrj3yl38gi1fatjw3gm9mi_770),
	.sleep(zwz186ceo7v5ykob7atd872np_739),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(nv6h0j8a7f0bfoj29r_577), 
	.dout(jz4cejstid5tbcq28x0c2qlztayi7s_389), 
	.empty(i27t4whetgvpwjllvmsdum2y_105), 
	.prog_full(iuxduzhfsxks6wc32w62224xv_177), 
	.full(k58zctdmt7di8ugxwtqv27pc_168), 
	.rd_data_count(cqx8g8wx9zn3o2bg4_85), 
	.wr_data_count(khhwceer3kwa0ibko7iwktbei8b_748), 
	.wr_rst_busy(yxf3c3mr7b0yz7furgcv2_665), 
	.rd_rst_busy(h2q1wblwwlzg87pwlyw4n3_705), 
	.overflow(ebtiyvrfmboj6lfn8unfc_508), 
	.underflow(s2mnjn0pjwlk4x92lam_107), 
	.sbiterr(f71osg90o6811takkpvv9_705), 
	.dbiterr(iia3mw6sy80tzrir9ijzc6isyf3_741), 
	.almost_empty(tkz9d9hn82v6088bw25tvgxbmp4_389), 
	.almost_full(bm5x8un16wqkydk6_512), 
	.wr_ack(pqgidis7c0ppp0iqx0tvs421fhcqore_59), 
	.data_valid(o2bjlbsqlzmb4ul0wt82c0cf9l6mny5x_276), 

	.wr_clk(clk_in_2), 

	.rd_clk(clk_out_2), 
	.rst(rst_in_2) 
); 

endmodule 
