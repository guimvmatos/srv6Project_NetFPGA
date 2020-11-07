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
// Xilinx SDNet Compiler version 2018.2, build 2342300
//----------------------------------------------------------------------------
/*

*/

`timescale 1 ps / 1 ps

module ipv6_exact_t (
	clk_lookup_rst_high,
	clk_lookup,
	tuple_in_request_VALID,
	tuple_in_request_DATA,
	tuple_out_response_VALID,
	tuple_out_response_DATA,
	clk_control,
	clk_control_rst_low,
	control_S_AXI_AWADDR,
	control_S_AXI_AWVALID,
	control_S_AXI_AWREADY,
	control_S_AXI_WDATA,
	control_S_AXI_WSTRB,
	control_S_AXI_WVALID,
	control_S_AXI_WREADY,
	control_S_AXI_BREADY,
	control_S_AXI_BRESP,
	control_S_AXI_BVALID,
	control_S_AXI_ARADDR,
	control_S_AXI_ARVALID,
	control_S_AXI_ARREADY,
	control_S_AXI_RREADY,
	control_S_AXI_RDATA,
	control_S_AXI_RRESP,
	control_S_AXI_RVALID
);

localparam K = 128 ;
localparam V = 58 ;
input clk_lookup_rst_high ;
input clk_lookup ;
input tuple_in_request_VALID ;
input [127:0] tuple_in_request_DATA ;
output tuple_out_response_VALID ;
output [58:0] tuple_out_response_DATA ;
input clk_control ;
input clk_control_rst_low ;
input [7:0] control_S_AXI_AWADDR ;
input control_S_AXI_AWVALID ;
output control_S_AXI_AWREADY ;
input [31:0] control_S_AXI_WDATA ;
input [3:0] control_S_AXI_WSTRB ;
input control_S_AXI_WVALID ;
output control_S_AXI_WREADY ;
input control_S_AXI_BREADY ;
output [1:0] control_S_AXI_BRESP ;
output control_S_AXI_BVALID ;
input [7:0] control_S_AXI_ARADDR ;
input control_S_AXI_ARVALID ;
output control_S_AXI_ARREADY ;
input control_S_AXI_RREADY ;
output [31:0] control_S_AXI_RDATA ;
output [1:0] control_S_AXI_RRESP ;
output control_S_AXI_RVALID ;

wire tuple_out_response_VALID ;
wire [58:0] tuple_out_response_DATA ;
wire control_S_AXI_AWREADY ;
wire control_S_AXI_WREADY ;
wire [1:0] control_S_AXI_BRESP ;
wire control_S_AXI_BVALID ;
wire control_S_AXI_ARREADY ;
wire [31:0] control_S_AXI_RDATA ;
wire [1:0] control_S_AXI_RRESP ;
wire control_S_AXI_RVALID ;
wire LookupReqValid ;
wire [127:0] LookupReqKey ;
wire LookupRespValid ;
wire [127:0] LookupRespKey /* unused */ ;
wire LookupRespMatch ;
wire [57:0] LookupRespValue ;
wire ReqValid ;
wire [1:0] ReqOp ;
wire [127:0] ReqKey ;
wire [63:0] ReqValue ;
wire ReqStatic /* unused */ ;
wire RespStatic ;
wire RespCode ;
wire [127:0] RespKey ;
wire [63:0] RespValue ;
wire RespFound ;
wire [31:0] Size ;
wire [31:0] AgingTime_int /* unused */ ;
wire InitEnb ;
wire InitDone ;
wire AgingMode /* unused */ ;
wire AgingCapable /* unused */ ;
reg rstflop ;
reg doInit ;
wire RespValid ;
wire [31:0] deviceid ;
wire AgingCapability ;

always @( posedge clk_control ) begin
	rstflop <= ~clk_control_rst_low ;
	if ( ~clk_control_rst_low ) begin
		doInit <= 0 ;
	end
	else  begin
		if ( ( InitEnb || rstflop ) ) begin
			if ( InitDone ) begin
				doInit <= 0 ;
			end
			else  begin
				doInit <= 1 ;
			end
		end
		else  begin
			if ( InitDone ) begin
				doInit <= 0 ;
			end
			else  begin
				doInit <= doInit ;
			end
		end
	end
end

assign AgingCapable = 1'd0 ;

assign deviceid = 32'h32 ;

assign LookupReqValid = tuple_in_request_VALID ;

assign LookupReqKey = tuple_in_request_DATA ;

assign tuple_out_response_VALID = LookupRespValid ;

assign tuple_out_response_DATA = { LookupRespMatch, LookupRespValue } ;

assign AgingCapability = 1'd0 ;

assign RespStatic = 0 ;

ipv6_exact_t_Wrap
ipv6_exact_t_Wrap_inst
(
	.Rst                 	( clk_lookup_rst_high ),
	.Clk                 	( clk_lookup ),
	.InitEnb             	( doInit ),
	.InitDone            	( InitDone ),
	.Size                	( Size[7:0] ),
	.LookupReqValid      	( LookupReqValid ),
	.LookupReqKey        	( LookupReqKey ),
	.LookupRespValid     	( LookupRespValid ),
	.LookupRespMatch     	( LookupRespMatch ),
	.LookupRespKey       	( LookupRespKey ),
	.LookupRespValue     	( LookupRespValue ),
	.UpdateReqValid      	( ReqValid ),
	.UpdateReqOp         	( ReqOp ),
	.UpdateReqKey        	( ReqKey[127:0] ),
	.UpdateReqValue      	( ReqValue[57:0] ),
	.UpdateRespValid     	( RespValid ),
	.UpdateRespCode      	( RespCode ),
	.UpdateRespKey       	( RespKey[127:0] ),
	.UpdateRespValue     	( RespValue[57:0] ),
	.UpdateRespFound     	( RespFound )
);

ipv6_exact_t_csr
ipv6_exact_t_csr_inst
(
	.csripv6_exact_t_csrDeviceID_UpdData	( deviceid ),
	.csripv6_exact_t_csrDeviceID_UpdEn	( 1'd1 ),
	.csripv6_exact_t_csrCamAgingCapability_UpdEn	( 1'd1 ),
	.csripv6_exact_t_csrCamAgingCapability_UpdData	( AgingCapability ),
	.csripv6_exact_t_csrCamAgingMode	( AgingMode ),
	.csripv6_exact_t_csrCamAgingTime	( AgingTime_int ),
	.csripv6_exact_t_csrCamInitDone_UpdData	( InitDone ),
	.csripv6_exact_t_csrCamInitDone_UpdEn	( 1'd1 ),
	.csripv6_exact_t_csrCamInitEnb	( InitEnb ),
	.csripv6_exact_t_csrCamSize_UpdData	( { 25'd0, Size[6:0] } ),
	.csripv6_exact_t_csrCamSize_UpdEn	( 1'd1 ),
	.csripv6_exact_t_csrCamUpdReqCfgOp	( ReqOp ),
	.csripv6_exact_t_csrCamUpdReqCfgOp_SwWrEn	( ReqValid ),
	.csripv6_exact_t_csrCamUpdReqStatic	( ReqStatic ),
	.csripv6_exact_t_csrCamUpdRespAck_Set	( 1'd1 ),
	.csripv6_exact_t_csrCamUpdRespAck_Clr	( ReqValid ),
	.csripv6_exact_t_csrCamUpdRespCode_UpdData	( RespCode ),
	.csripv6_exact_t_csrCamUpdRespCode_UpdEn	( RespValid ),
	.csripv6_exact_t_csrCamUpdRespStatic_UpdData	( RespStatic ),
	.csripv6_exact_t_csrCamUpdRespStatic_UpdEn	( RespValid ),
	.csripv6_exact_t_csrCamUpdReadbackFound_UpdData	( RespFound ),
	.csripv6_exact_t_csrCamUpdReadbackFound_UpdEn	( RespValid ),
	.csripv6_exact_t_csrCamPrgKey0	( ReqKey[31:0] ),
	.csripv6_exact_t_csrCamPrgKey0_UpdData	( RespKey[31:0] ),
	.csripv6_exact_t_csrCamPrgKey0_UpdEn	( RespValid ),
	.csripv6_exact_t_csrCamPrgKey1	( ReqKey[63:32] ),
	.csripv6_exact_t_csrCamPrgKey1_UpdData	( RespKey[63:32] ),
	.csripv6_exact_t_csrCamPrgKey1_UpdEn	( RespValid ),
	.csripv6_exact_t_csrCamPrgKey2	( ReqKey[95:64] ),
	.csripv6_exact_t_csrCamPrgKey2_UpdData	( RespKey[95:64] ),
	.csripv6_exact_t_csrCamPrgKey2_UpdEn	( RespValid ),
	.csripv6_exact_t_csrCamPrgKey3	( ReqKey[127:96] ),
	.csripv6_exact_t_csrCamPrgKey3_UpdData	( RespKey[127:96] ),
	.csripv6_exact_t_csrCamPrgKey3_UpdEn	( RespValid ),
	.csripv6_exact_t_csrCamPrgValue0	( ReqValue[31:0] ),
	.csripv6_exact_t_csrCamPrgValue0_UpdData	( RespValue[31:0] ),
	.csripv6_exact_t_csrCamPrgValue0_UpdEn	( RespValid ),
	.csripv6_exact_t_csrCamPrgValue1	( ReqValue[63:32] ),
	.csripv6_exact_t_csrCamPrgValue1_UpdData	( { 6'd0, RespValue[57:32] } ),
	.csripv6_exact_t_csrCamPrgValue1_UpdEn	( RespValid ),
	.csripv6_exact_t_csrCamUpdReqCfgOp_WrAck	( 1'd1 ),
	.aclk                	( clk_control ),
	.aresetn             	( clk_control_rst_low ),
	.awaddr              	( control_S_AXI_AWADDR ),
	.awvalid             	( control_S_AXI_AWVALID ),
	.awready             	( control_S_AXI_AWREADY ),
	.wdata               	( control_S_AXI_WDATA ),
	.wstrb               	( control_S_AXI_WSTRB ),
	.wvalid              	( control_S_AXI_WVALID ),
	.wready              	( control_S_AXI_WREADY ),
	.bready              	( control_S_AXI_BREADY ),
	.bresp               	( control_S_AXI_BRESP ),
	.bvalid              	( control_S_AXI_BVALID ),
	.araddr              	( control_S_AXI_ARADDR ),
	.arvalid             	( control_S_AXI_ARVALID ),
	.arready             	( control_S_AXI_ARREADY ),
	.rready              	( control_S_AXI_RREADY ),
	.rdata               	( control_S_AXI_RDATA ),
	.rresp               	( control_S_AXI_RRESP ),
	.rvalid              	( control_S_AXI_RVALID )
);


endmodule

// machine-generated file - do NOT modify by hand !
// File created on 2020/11/07 02:06:09
// by Barista HDL generation library, version TRUNK @ 1007984
