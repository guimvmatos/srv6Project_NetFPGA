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

 tx latency = 28 (cycles)
 min latency = 27 (cycles)
 max latency = 27 (cycles)

input/output tuple 'control'
	section 3-bit field @ [22:20]
	activeBank 1-bit field @ [19:19]
	offset 15-bit field @ [18:4]
	done 1-bit field @ [3:3]
	errorCode 3-bit field @ [2:0]

output tuple 'hdr'
	ethernet_isValid 1-bit field @ [433:433]
	ethernet_dstAddr 48-bit field @ [432:385]
	ethernet_srcAddr 48-bit field @ [384:337]
	ethernet_etherType 16-bit field @ [336:321]
	ipv6_outer_isValid 1-bit field @ [320:320]
	ipv6_outer_version 4-bit field @ [319:316]
	ipv6_outer_traffic_class 8-bit field @ [315:308]
	ipv6_outer_flow_label 20-bit field @ [307:288]
	ipv6_outer_payload_len 16-bit field @ [287:272]
	ipv6_outer_next_hdr 8-bit field @ [271:264]
	ipv6_outer_hop_limit 8-bit field @ [263:256]
	ipv6_outer_src_addr 128-bit field @ [255:128]
	ipv6_outer_dst_addr 128-bit field @ [127:0]

output tuple 'user_metadata'
	unused 8-bit field @ [7:0]

output tuple 'digest_data'
	unused 256-bit field @ [255:0]

input/output tuple 'sume_metadata'
	dma_q_size 16-bit field @ [127:112]
	nf3_q_size 16-bit field @ [111:96]
	nf2_q_size 16-bit field @ [95:80]
	nf1_q_size 16-bit field @ [79:64]
	nf0_q_size 16-bit field @ [63:48]
	send_dig_to_cpu 8-bit field @ [47:40]
	drop 8-bit field @ [39:32]
	dst_port 8-bit field @ [31:24]
	src_port 8-bit field @ [23:16]
	pkt_len 16-bit field @ [15:0]

output tuple 'MyParser_extracts'
	size 32-bit field @ [31:0]

*/

`timescale 1 ps / 1 ps

module MyParser_t (
	rst,
	clk_line,
	packet_in_RDY,
	packet_in_VAL,
	packet_in_SOF,
	packet_in_EOF,
	packet_in_ERR,
	packet_in_CNT,
	packet_in_DAT,
	tuple_in_control_VALID,
	tuple_in_control_DATA,
	tuple_in_sume_metadata_VALID,
	tuple_in_sume_metadata_DATA,
	packet_out_RDY,
	packet_out_VAL,
	packet_out_SOF,
	packet_out_EOF,
	packet_out_ERR,
	packet_out_CNT,
	packet_out_DAT,
	tuple_out_control_VALID,
	tuple_out_control_DATA,
	tuple_out_hdr_VALID,
	tuple_out_hdr_DATA,
	tuple_out_user_metadata_VALID,
	tuple_out_user_metadata_DATA,
	tuple_out_digest_data_VALID,
	tuple_out_digest_data_DATA,
	tuple_out_sume_metadata_VALID,
	tuple_out_sume_metadata_DATA,
	tuple_out_MyParser_extracts_VALID,
	tuple_out_MyParser_extracts_DATA
);

input rst ;
input clk_line ;
output packet_in_RDY ;
input packet_in_VAL ;
input packet_in_SOF ;
input packet_in_EOF ;
input packet_in_ERR ;
input [5:0] packet_in_CNT ;
input [255:0] packet_in_DAT ;
input tuple_in_control_VALID ;
input [22:0] tuple_in_control_DATA ;
input tuple_in_sume_metadata_VALID /* unused */ ;
input [127:0] tuple_in_sume_metadata_DATA ;
input packet_out_RDY /* unused */ ;
output packet_out_VAL ;
output packet_out_SOF ;
output packet_out_EOF ;
output packet_out_ERR ;
output [5:0] packet_out_CNT ;
output [255:0] packet_out_DAT ;
output tuple_out_control_VALID ;
output [22:0] tuple_out_control_DATA ;
output tuple_out_hdr_VALID ;
output [433:0] tuple_out_hdr_DATA ;
output tuple_out_user_metadata_VALID ;
output [7:0] tuple_out_user_metadata_DATA ;
output tuple_out_digest_data_VALID ;
output [255:0] tuple_out_digest_data_DATA ;
output tuple_out_sume_metadata_VALID ;
output [127:0] tuple_out_sume_metadata_DATA ;
output tuple_out_MyParser_extracts_VALID ;
output [31:0] tuple_out_MyParser_extracts_DATA ;

wire packet_in_RDY ;
wire tuple_in_valid ;
reg [22:0] tuple_in_control_i ;
wire [127:0] tuple_in_sume_metadata ;
wire packet_out_VAL ;
wire packet_out_SOF ;
wire packet_out_EOF ;
wire packet_out_ERR ;
wire [5:0] packet_out_CNT ;
wire [255:0] packet_out_DAT ;
wire tuple_out_control_VALID ;
wire tuple_out_valid ;
reg [22:0] tuple_out_control_DATA ;
wire [22:0] tuple_out_control_i ;
wire tuple_out_hdr_VALID ;
wire [433:0] tuple_out_hdr_DATA ;
wire [433:0] tuple_out_hdr ;
wire tuple_out_user_metadata_VALID ;
wire [7:0] tuple_out_user_metadata_DATA ;
wire [7:0] tuple_out_user_metadata ;
wire tuple_out_digest_data_VALID ;
wire [255:0] tuple_out_digest_data_DATA ;
wire [255:0] tuple_out_digest_data ;
wire tuple_out_sume_metadata_VALID ;
wire [127:0] tuple_out_sume_metadata_DATA ;
wire [127:0] tuple_out_sume_metadata ;
wire tuple_out_MyParser_extracts_VALID ;
wire [31:0] tuple_out_MyParser_extracts_DATA ;
wire [31:0] tuple_out_MyParser_extracts ;

assign tuple_in_valid = tuple_in_control_VALID ;

always @* begin
	tuple_in_control_i = 0 ;
	if ( ( tuple_in_control_DATA[3] == 0 ) ) begin
		tuple_in_control_i[22:20] = 1 ;
	end
end

assign tuple_in_sume_metadata = tuple_in_sume_metadata_DATA ;

assign tuple_out_control_VALID = tuple_out_valid ;

always @* begin
	tuple_out_control_DATA = tuple_out_control_i ;
	tuple_out_control_DATA[3] = 0 ;
	tuple_out_control_DATA[22:20] = 0 ;
	tuple_out_control_DATA[18:4] = 0 ;
	if ( ( tuple_out_control_i[2:0] == 0 ) ) begin
		if ( ( ( tuple_out_control_i[3] == 0 ) || ( tuple_out_control_i[22:20] != 0 ) ) ) begin
			tuple_out_control_DATA[2:0] = 1 ;
		end
	end
end

assign tuple_out_hdr_VALID = tuple_out_valid ;

assign tuple_out_hdr_DATA = tuple_out_hdr ;

assign tuple_out_user_metadata_VALID = tuple_out_valid ;

assign tuple_out_user_metadata_DATA = tuple_out_user_metadata ;

assign tuple_out_digest_data_VALID = tuple_out_valid ;

assign tuple_out_digest_data_DATA = tuple_out_digest_data ;

assign tuple_out_sume_metadata_VALID = tuple_out_valid ;

assign tuple_out_sume_metadata_DATA = tuple_out_sume_metadata ;

assign tuple_out_MyParser_extracts_VALID = tuple_out_valid ;

assign tuple_out_MyParser_extracts_DATA = tuple_out_MyParser_extracts ;

MyParser_t_Engine
MyParser_t_inst
(
	.reset               	( rst ),
	.clock               	( clk_line ),
	.RX_TUPLE_VALID      	( tuple_in_valid ),
	.RX_TUPLE_control    	( tuple_in_control_i ),
	.TX_TUPLE_VALID      	( tuple_out_valid ),
	.TX_TUPLE_control    	( tuple_out_control_i ),
	.TX_TUPLE_hdr        	( tuple_out_hdr ),
	.TX_TUPLE_user_metadata	( tuple_out_user_metadata ),
	.TX_TUPLE_digest_data	( tuple_out_digest_data ),
	.RX_TUPLE_sume_metadata	( tuple_in_sume_metadata ),
	.TX_TUPLE_sume_metadata	( tuple_out_sume_metadata ),
	.TX_TUPLE_MyParser_extracts	( tuple_out_MyParser_extracts ),
	.RX_PKT_RDY          	( packet_in_RDY ),
	.TX_PKT_RDY          	( 1'd1 ),
	.RX_PKT_VLD          	( packet_in_VAL ),
	.RX_PKT_SOP          	( packet_in_SOF ),
	.RX_PKT_EOP          	( packet_in_EOF ),
	.RX_PKT_ERR          	( packet_in_ERR ),
	.RX_PKT_CNT          	( packet_in_CNT ),
	.RX_PKT_DAT          	( packet_in_DAT ),
	.TX_PKT_VLD          	( packet_out_VAL ),
	.TX_PKT_SOP          	( packet_out_SOF ),
	.TX_PKT_EOP          	( packet_out_EOF ),
	.TX_PKT_ERR          	( packet_out_ERR ),
	.TX_PKT_CNT          	( packet_out_CNT ),
	.TX_PKT_DAT          	( packet_out_DAT )
);


endmodule

// machine-generated file - do NOT modify by hand !
// File created on 2020/11/07 02:06:07
// by Barista HDL generation library, version TRUNK @ 1007984

