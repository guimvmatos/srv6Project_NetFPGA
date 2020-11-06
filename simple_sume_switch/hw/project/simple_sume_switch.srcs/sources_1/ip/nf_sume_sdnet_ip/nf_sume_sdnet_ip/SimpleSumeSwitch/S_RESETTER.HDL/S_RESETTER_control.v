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
// File created: 2020/11/05 15:52:03
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






 reg	wk50u7ssopozo63ubasx6oi4_252;	 initial wk50u7ssopozo63ubasx6oi4_252 = 1'b0 ;
 reg	zgu6fusvx4i9lmu6fmqq3_421;	 initial zgu6fusvx4i9lmu6fmqq3_421 = 1'b0 ;
 reg [4:0] c37m5uuhj4w4q9p1p4wa1ce_806;	 initial c37m5uuhj4w4q9p1p4wa1ce_806 = 5'b00000 ;
 reg [6:0] n4byej9io8yzgfyry7cbf2q1i7s_891;	 initial n4byej9io8yzgfyry7cbf2q1i7s_891 = 7'b0000000 ;
 wire	bu5frd1s3nenl4p8rq48_232 ;
 reg	e8ciry9fnpt6jjp6wtjgh_404;	 initial e8ciry9fnpt6jjp6wtjgh_404 = 1'b1 ;
 reg	a31xekzej05jfgyp_246;	 initial a31xekzej05jfgyp_246 = 1'b0 ;
 reg	r6w1sdkkgp7efrmrls87t6f47_710;	 initial r6w1sdkkgp7efrmrls87t6f47_710 = 1'b1 ;
 reg	wb28p8tk2hc8aawjygsd6qtd_180;	 initial wb28p8tk2hc8aawjygsd6qtd_180 = 1'b0 ;
 wire [4:0] c5t9h6a03y9b0cwue6c8qsn273u_105 ;
 wire [6:0] bahtqn5hr1ke99ydroetkcx0l_353 ;
 wire	ho3bzakcfnstwp8p924abb5dy_531 ;
 wire	y3zpv2tir9t0znk4cy3nbe793_905 ;
 wire	rmzt9wkp2z8uhaqa8pjw4t8_766 ;
 wire	wj4mdoim23mrsbobrit2b8gkj2gvfb_462 ;
 wire	rfww3cm1vxzxw0ge8874qcpzyh_532 ;
 wire	x2wwvdafi3e3ng57ubr5rb99v4u0d_821 ;
 wire	rlgsv3iymx2ztb55cpfwg1dop7vz_285 ;
 wire	i0hczysi80zwyy0tcmq0vc85pcvxiq_110 ;
 wire	dfrr8sp2hwc15ylt7ng28t97g3v6l9_633 ;
 wire	l5jw9a8zq6d79e7wtmvlkd6nw_478 ;
 wire	k857akurle3pebtfigw26oxnvvn_334 ;
 wire	cxy2w07buwl2eihgne5380spq78hc_644 ;


 assign c5t9h6a03y9b0cwue6c8qsn273u_105 = 
	c37m5uuhj4w4q9p1p4wa1ce_806 + 1 ;
 assign bahtqn5hr1ke99ydroetkcx0l_353 = 
	n4byej9io8yzgfyry7cbf2q1i7s_891 + 1 ;
 assign ho3bzakcfnstwp8p924abb5dy_531 = (
	((c37m5uuhj4w4q9p1p4wa1ce_806 > 5'b00000))?1'b1:
	0)  ;
 assign y3zpv2tir9t0znk4cy3nbe793_905 = 
	rst | zgu6fusvx4i9lmu6fmqq3_421 ;
 assign rmzt9wkp2z8uhaqa8pjw4t8_766 = 
	y3zpv2tir9t0znk4cy3nbe793_905 | ho3bzakcfnstwp8p924abb5dy_531 ;
 assign wj4mdoim23mrsbobrit2b8gkj2gvfb_462 = (
	((zgu6fusvx4i9lmu6fmqq3_421 == 1'b1) && (cxy2w07buwl2eihgne5380spq78hc_644 == 1'b1) && (c37m5uuhj4w4q9p1p4wa1ce_806 == 5'b00000))?1'b1:
	((c37m5uuhj4w4q9p1p4wa1ce_806 != 5'b00000) && (zgu6fusvx4i9lmu6fmqq3_421 != 1'b1))?1'b1:
	0)  ;
 assign rfww3cm1vxzxw0ge8874qcpzyh_532 = (
	((wk50u7ssopozo63ubasx6oi4_252 == 1'b1))?1'b1:
	0)  ;
 assign x2wwvdafi3e3ng57ubr5rb99v4u0d_821 = (
	((c37m5uuhj4w4q9p1p4wa1ce_806 == 5'b01111) && (zgu6fusvx4i9lmu6fmqq3_421 != 1'b1) && (cxy2w07buwl2eihgne5380spq78hc_644 == 1'b1))?1'b1:
	((n4byej9io8yzgfyry7cbf2q1i7s_891 != 7'b0000000) && (n4byej9io8yzgfyry7cbf2q1i7s_891 != 7'b0111111) && (zgu6fusvx4i9lmu6fmqq3_421 != 1'b1) && (cxy2w07buwl2eihgne5380spq78hc_644 == 1'b1))?1'b1:
	0)  ;
 assign rlgsv3iymx2ztb55cpfwg1dop7vz_285 = (
	((n4byej9io8yzgfyry7cbf2q1i7s_891 == 7'b0111111))?1'b1:
	0)  ;
 assign i0hczysi80zwyy0tcmq0vc85pcvxiq_110 = 
	1'b1 ;
 assign dfrr8sp2hwc15ylt7ng28t97g3v6l9_633 = 
	1'b0 ;
 assign l5jw9a8zq6d79e7wtmvlkd6nw_478 = 
	 ~(bu5frd1s3nenl4p8rq48_232) ;
 assign k857akurle3pebtfigw26oxnvvn_334 = (
	((n4byej9io8yzgfyry7cbf2q1i7s_891 == 7'b0111111))?1'b1:
	0)  ;
 assign cxy2w07buwl2eihgne5380spq78hc_644 = 
	1'b1 ;
 assign reset_out_active_high 	= r6w1sdkkgp7efrmrls87t6f47_710 ;
 assign reset_out_active_low 	= wb28p8tk2hc8aawjygsd6qtd_180 ;


assign bu5frd1s3nenl4p8rq48_232 = (
	((rmzt9wkp2z8uhaqa8pjw4t8_766 == 1'b1) && (c37m5uuhj4w4q9p1p4wa1ce_806 < 5'b10000))?i0hczysi80zwyy0tcmq0vc85pcvxiq_110 :
1'b0) ;



always @(posedge clk)
begin
		wk50u7ssopozo63ubasx6oi4_252 <= rst ;
		zgu6fusvx4i9lmu6fmqq3_421 <= wk50u7ssopozo63ubasx6oi4_252 ;
	if (rfww3cm1vxzxw0ge8874qcpzyh_532) 
	begin 
	  c37m5uuhj4w4q9p1p4wa1ce_806 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (wj4mdoim23mrsbobrit2b8gkj2gvfb_462) 
		begin 
			c37m5uuhj4w4q9p1p4wa1ce_806 <= c5t9h6a03y9b0cwue6c8qsn273u_105 ;
		end 
	end 
	if (rfww3cm1vxzxw0ge8874qcpzyh_532) 
	begin 
	  n4byej9io8yzgfyry7cbf2q1i7s_891 <= 7'b0000000 ;
	 end 
	else 
	begin 
		if (x2wwvdafi3e3ng57ubr5rb99v4u0d_821) 
		begin 
			n4byej9io8yzgfyry7cbf2q1i7s_891 <= bahtqn5hr1ke99ydroetkcx0l_353 ;
		end 
	end 
	if (rst) 
	begin 
	  e8ciry9fnpt6jjp6wtjgh_404 <= 1'b1 ;
	 end 
	else 
	begin 
			e8ciry9fnpt6jjp6wtjgh_404 <= bu5frd1s3nenl4p8rq48_232 ;
	end 
	if (rst) 
	begin 
	  a31xekzej05jfgyp_246 <= 1'b0 ;
	 end 
	else 
	begin 
			a31xekzej05jfgyp_246 <= l5jw9a8zq6d79e7wtmvlkd6nw_478 ;
	end 
	if (rst) 
	begin 
	  r6w1sdkkgp7efrmrls87t6f47_710 <= 1'b1 ;
	 end 
	else 
	begin 
			r6w1sdkkgp7efrmrls87t6f47_710 <= e8ciry9fnpt6jjp6wtjgh_404 ;
	end 
	if (rst) 
	begin 
	  wb28p8tk2hc8aawjygsd6qtd_180 <= 1'b0 ;
	 end 
	else 
	begin 
			wb28p8tk2hc8aawjygsd6qtd_180 <= a31xekzej05jfgyp_246 ;
	end 
		init_done <= k857akurle3pebtfigw26oxnvvn_334 ;
end

endmodule 
