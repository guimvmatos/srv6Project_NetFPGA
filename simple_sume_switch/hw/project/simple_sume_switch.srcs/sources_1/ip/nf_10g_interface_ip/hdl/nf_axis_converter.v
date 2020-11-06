//-
// Copyright (C) 2010, 2011 The Board of Trustees of The Leland Stanford
//                          Junior University
// Copyright (C) 2010, 2011 James Hongyi Zeng
// Copyright (C) 2015 Noa Zilberman
// All rights reserved.
//
// This software was developed by
// Stanford University and the University of Cambridge Computer Laboratory
// under National Science Foundation under Grant No. CNS-0855268,
// the University of Cambridge Computer Laboratory under EPSRC INTERNET Project EP/H040536/1 and
// by the University of Cambridge Computer Laboratory under DARPA/AFRL contract FA8750-11-C-0249 ("MRC2"), 
// as part of the DARPA MRC research programme.
//
// @NETFPGA_LICENSE_HEADER_START@
//
// Licensed to NetFPGA C.I.C. (NetFPGA) under one or more contributor
// license agreements.  See the NOTICE file distributed with this work for
// additional information regarding copyright ownership.  NetFPGA licenses this
// file to you under the NetFPGA Hardware-Software License, Version 1.0 (the
// "License"); you may not use this file except in compliance with the
// License.  You may obtain a copy of the License at:
//
//   http://www.netfpga-cic.org
//
// Unless required by applicable law or agreed to in writing, Work distributed
// under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations under the License.
//
// @NETFPGA_LICENSE_HEADER_END@
//
/*******************************************************************************
 *
 *  File:
 *        nf_axis_converter.v
 *
 *  Module:
 *        nf_axis_converter
 *
 *  Author:
 *        James Hongyi Zeng
 *        modified by Noa Zilberman
 *
 *  Description:
 *        Convert AXI4-Streams to different data width
 *        Add LEN subchannel
 *
 */


//Need to add support for err bit (1 bit tuser) 
module nf_axis_converter
#(
    // Master AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH=64,
    parameter C_S_AXIS_DATA_WIDTH=256,

    parameter C_M_AXIS_TUSER_WIDTH=128,
    parameter C_S_AXIS_TUSER_WIDTH=128,

    parameter C_LEN_WIDTH=16,
    parameter C_SPT_WIDTH=8,
    parameter C_DPT_WIDTH=8,

    parameter C_DEFAULT_VALUE_ENABLE=0,
    parameter C_DEFAULT_SRC_PORT=0,
    parameter C_DEFAULT_DST_PORT=0
)
(
    // Part 1: System side signals
    // Global Ports
    input axi_aclk,
    input axi_resetn,
    
    input [7:0] interface_number,

    // Master Stream Ports
    output reg [C_M_AXIS_DATA_WIDTH - 1:0] m_axis_tdata,
    output reg [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] m_axis_tkeep,
    output [C_M_AXIS_TUSER_WIDTH-1:0] m_axis_tuser,
    output reg m_axis_tvalid,
    input  m_axis_tready,
    output reg m_axis_tlast,

    // Slave Stream Ports
    input [C_S_AXIS_DATA_WIDTH - 1:0] s_axis_tdata,
    input [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0] s_axis_tkeep,
    input [C_S_AXIS_TUSER_WIDTH-1:0] s_axis_tuser,
    input  s_axis_tvalid,
    output reg s_axis_tready,
    input  s_axis_tlast
);

   function integer log2;
      input integer number;
      begin
         log2=0;
         while(2**log2<number) begin
            log2=log2+1;
         end
      end
   endfunction 

   localparam MAX_PKT_SIZE = 1600; // In bytes
   localparam LENGTH_COUNTER_WIDTH = log2(C_S_AXIS_DATA_WIDTH / 8);
   localparam IN_FIFO_DEPTH_BIT = log2(MAX_PKT_SIZE/(C_S_AXIS_DATA_WIDTH / 8));
   localparam M_S_RATIO_COUNT = C_M_AXIS_DATA_WIDTH / C_S_AXIS_DATA_WIDTH;
   localparam S_M_RATIO_COUNT = C_S_AXIS_DATA_WIDTH / C_M_AXIS_DATA_WIDTH;

   wire in_fifo_nearly_full;
   reg  in_fifo_rd_en;
   wire in_fifo_empty;
   wire [C_S_AXIS_DATA_WIDTH - 1:0] s_axis_tdata_fifo;
   wire [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0] s_axis_tkeep_fifo;
   wire s_axis_tlast_fifo;

   reg  info_fifo_wr_en;
   reg  info_fifo_rd_en;
   wire info_fifo_empty;
   wire info_fifo_nearly_full;
   reg  [C_LEN_WIDTH - 1:0] length_in;
   reg  [C_LEN_WIDTH - 1:0] length_prev, length_prev_next;
   reg  [LENGTH_COUNTER_WIDTH:0] local_sum;

   reg  [C_M_AXIS_DATA_WIDTH - 1:0] m_axis_tdata_prev, m_axis_tdata_prev_next;
   reg  [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] m_axis_tkeep_prev, m_axis_tkeep_prev_next;


   reg  first_time, first_time_next;

   integer i, j, k;

    wire [C_LEN_WIDTH - 1:0] tuser_len;
   	wire [C_SPT_WIDTH - 1:0] tuser_spt = interface_number;
   	wire [C_DPT_WIDTH - 1:0] tuser_dpt = C_DEFAULT_DST_PORT;

    reg metadata_state, metadata_state_next;
    localparam METADATA_STATE_WAIT_START = 0;
    localparam METADATA_STATE_WAIT_END = 1;

    fallthrough_small_fifo 
    #(.WIDTH(C_S_AXIS_DATA_WIDTH+C_S_AXIS_DATA_WIDTH / 8+1),
     .MAX_DEPTH_BITS(IN_FIFO_DEPTH_BIT)
    )
      input_fifo
        (.din           ({s_axis_tlast, s_axis_tkeep, s_axis_tdata}),  // Data in
         .wr_en         (s_axis_tvalid & s_axis_tready),             // Write enable
         .rd_en         (in_fifo_rd_en),    // Read the next word
         .dout          ({s_axis_tlast_fifo, s_axis_tkeep_fifo, s_axis_tdata_fifo}),
         .full          (),
         .nearly_full   (in_fifo_nearly_full),
         .prog_full     (),
         .empty         (in_fifo_empty),
         .reset         (~axi_resetn),
         .clk           (axi_aclk)
         );

	////////////////////////////////////////////////////////////////
	// The following code generates metadata for each packet
	// 1. Count incoming bytes and present to tuser_len
	// 2. Fill tuser_dpt and tuser_spt with default value
	////////////////////////////////////////////////////////////////


    always @(posedge axi_aclk) begin
        s_axis_tready <= ~in_fifo_nearly_full & ~info_fifo_nearly_full;
    end

    generate
    if(C_DEFAULT_VALUE_ENABLE == 1) begin: DEFAULT_VALUE_ENABLE

    fallthrough_small_fifo 
    #(.WIDTH(C_LEN_WIDTH),
     .MAX_DEPTH_BITS(5))
      info_fifo
        (.din           (length_in),  // Data in
         .wr_en         (info_fifo_wr_en),             // Write enable
         .rd_en         (info_fifo_rd_en),    // Read the next word
         .dout          (tuser_len),
         .full          (),
         .nearly_full   (info_fifo_nearly_full),
         .prog_full     (),
         .empty         (info_fifo_empty),
         .reset         (~axi_resetn),
         .clk           (axi_aclk)
         );

	always @(*) begin
		local_sum = 0;
		for ( i=0; i< C_S_AXIS_DATA_WIDTH / 8; i=i+1 ) begin
			if ( s_axis_tkeep[i] ) begin
				local_sum = i+1;
			end
		end
    end

    always @(*) begin
        info_fifo_wr_en = 1'b0;
        length_prev_next = length_prev;
        length_in = length_prev + local_sum;
        if(s_axis_tvalid & s_axis_tready) begin
        	length_prev_next = length_prev + local_sum;
        	if(s_axis_tlast) begin
        	   info_fifo_wr_en = 1'b1;
        	   length_prev_next = 0;
        	end
        end
    end

    assign m_axis_tuser = {96'b0, tuser_dpt, tuser_spt, tuser_len}; 

    end

	////////////////////////////////////////////////////////////////
	// The following code passes the slave port TUSER along
	////////////////////////////////////////////////////////////////
    else begin: DEFAULT_VALUE_DISABLE

    always @(*) begin
    	info_fifo_wr_en = 1'b0;
    	metadata_state_next = metadata_state;
    	case(metadata_state)
    		METADATA_STATE_WAIT_START: begin
    			if(s_axis_tvalid & s_axis_tready) begin
    				info_fifo_wr_en = 1'b1;
    				metadata_state_next = METADATA_STATE_WAIT_END;
    			end
    		end
    		METADATA_STATE_WAIT_END: begin
    			if(s_axis_tvalid & s_axis_tready & s_axis_tlast) begin
    				metadata_state_next = METADATA_STATE_WAIT_START;
    			end
    		end
    	endcase
    end

    always @(posedge axi_aclk) begin
        if (~axi_resetn) begin
            metadata_state <= METADATA_STATE_WAIT_START;
        end
        else begin
        	metadata_state <= metadata_state_next;
        end
    end

    fallthrough_small_fifo
     #(.WIDTH(C_M_AXIS_TUSER_WIDTH),
     .MAX_DEPTH_BITS(5))
      info_fifo
        (.din           (s_axis_tuser),  // Data in
         .wr_en         (info_fifo_wr_en),             // Write enable
         .rd_en         (info_fifo_rd_en),    // Read the next word
         .dout          (m_axis_tuser),
         .full          (),
         .nearly_full   (info_fifo_nearly_full),
         .prog_full     (),
         .empty         (info_fifo_empty),
         .reset         (~axi_resetn),
         .clk           (axi_aclk)
         );
    end
    endgenerate

	////////////////////////////////////////////////////////////////
	// Convert data width
	// There are 2 cases
	// 1. MASTER_WIDER
	// 2. SLAVE_WIDER
	////////////////////////////////////////////////////////////////
    generate
    if(C_M_AXIS_DATA_WIDTH >= C_S_AXIS_DATA_WIDTH) begin: MASTER_WIDER

    reg  [log2(M_S_RATIO_COUNT)-1:0] counter, counter_next;
    wire [log2(M_S_RATIO_COUNT)-1:0] counter_plus_1 = counter + 1'b1;

    always @(*) begin
        in_fifo_rd_en = 1'b0;
        info_fifo_rd_en = 1'b0;

        m_axis_tdata = m_axis_tdata_prev;
        m_axis_tkeep = m_axis_tkeep_prev;
        m_axis_tlast = 1'b0;

        m_axis_tdata_prev_next = m_axis_tdata_prev;
        m_axis_tkeep_prev_next = m_axis_tkeep_prev;

        counter_next = counter;
        first_time_next = first_time;
        m_axis_tvalid = 1'b0;

		  for(j=0;j<C_S_AXIS_DATA_WIDTH;j=j+1) m_axis_tdata[C_S_AXIS_DATA_WIDTH*counter+j] = s_axis_tdata_fifo[j];
        for(k=0;k<C_S_AXIS_DATA_WIDTH/8;k=k+1) m_axis_tkeep[C_S_AXIS_DATA_WIDTH/8*counter+k] = s_axis_tkeep_fifo[k];

        if(~in_fifo_empty) begin

            if(counter == M_S_RATIO_COUNT - 1) begin
				if(first_time) begin
					if(~info_fifo_empty) begin
                        m_axis_tvalid = 1'b1;
                        if(m_axis_tready) begin
                            in_fifo_rd_en = 1'b1;
                            info_fifo_rd_en = 1'b1;
                        	 counter_next = 0;
                        	 first_time_next = 1'b0;
                        	 m_axis_tdata_prev_next = {C_M_AXIS_DATA_WIDTH{1'b0}};
                            m_axis_tkeep_prev_next = {C_M_AXIS_DATA_WIDTH/8{1'b0}};
                        end
                    end
                end
                else begin
                    m_axis_tvalid = 1'b1;
						  if(s_axis_tlast_fifo) begin
						      m_axis_tlast = 1'b1;
						  end
                    if(m_axis_tready) begin
                    	counter_next = 0;
                    	m_axis_tdata_prev_next = {C_M_AXIS_DATA_WIDTH{1'b0}};
                     m_axis_tkeep_prev_next = {C_M_AXIS_DATA_WIDTH/8{1'b0}};
                    	in_fifo_rd_en = 1'b1;
                    	if(s_axis_tlast_fifo) begin
                    	    first_time_next = 1'b1;
                    	end
                    end
                end
            end
			else begin
			    if(s_axis_tlast_fifo) begin
			        m_axis_tvalid = 1'b1;
					  m_axis_tlast = 1'b1;
                    if(m_axis_tready) begin
                        in_fifo_rd_en = 1'b1;
                        counter_next = 0;
                        m_axis_tdata_prev_next = {C_M_AXIS_DATA_WIDTH{1'b0}};
                        m_axis_tkeep_prev_next = {C_M_AXIS_DATA_WIDTH/8{1'b0}};
                        first_time_next = 1'b1;
                    end
			    end
			    else begin
			        in_fifo_rd_en = 1'b1;
				    counter_next = counter_plus_1;
					m_axis_tdata_prev_next = m_axis_tdata;
					m_axis_tkeep_prev_next = m_axis_tkeep;
				 end
			end
		end
    end

    always @(posedge axi_aclk) begin
        if (~axi_resetn) begin
            counter <= 0;
            first_time <= 1'b1;
            length_prev <= 1'b0;
            m_axis_tdata_prev <= {C_M_AXIS_DATA_WIDTH{1'b0}};
            m_axis_tkeep_prev <= {C_M_AXIS_DATA_WIDTH/8{1'b0}};
        end
        else begin
            counter <= counter_next;
            first_time <= first_time_next;
            length_prev <= length_prev_next;
            m_axis_tdata_prev <= m_axis_tdata_prev_next;
            m_axis_tkeep_prev <= m_axis_tkeep_prev_next;
        end
    end
    end

    else if(C_M_AXIS_DATA_WIDTH == 8) begin: SPECIAL_CASE

    reg  [log2(S_M_RATIO_COUNT)-1:0] counter, counter_next;
    wire [log2(S_M_RATIO_COUNT)-1:0] counter_plus_1 = counter + 1'b1;

    always @(*) begin
        in_fifo_rd_en = 1'b0;
        info_fifo_rd_en = 1'b0;

        m_axis_tdata = s_axis_tdata_fifo[C_M_AXIS_DATA_WIDTH * (counter) +: C_M_AXIS_DATA_WIDTH];
        m_axis_tkeep = s_axis_tkeep_fifo[C_M_AXIS_DATA_WIDTH/8 * (counter)];
        m_axis_tlast = 1'b0;

        counter_next = counter;
        first_time_next = first_time;
        m_axis_tvalid = 1'b0;

        if(~in_fifo_empty) begin
            if(first_time) begin
                if(~info_fifo_empty) begin
                    m_axis_tvalid = 1'b1;
                    if(m_axis_tready) begin
                        info_fifo_rd_en = 1'b1;
                        first_time_next = 1'b0;
                        counter_next = counter_plus_1;
                    end
                end
            end
			else begin
			    m_axis_tvalid = 1'b1;
			    if(s_axis_tlast_fifo) begin // Last SLAVE word
				    if(counter == S_M_RATIO_COUNT - 1) begin
					     m_axis_tlast = 1'b1;
					 end
			       else if(~|s_axis_tkeep_fifo[C_M_AXIS_DATA_WIDTH/8 * (counter_plus_1)]) begin
					     m_axis_tlast = 1'b1;
					 end
			    end

			    if(m_axis_tready) begin
			          counter_next = counter_plus_1;
			    	  if(counter == S_M_RATIO_COUNT - 1) begin
							in_fifo_rd_en = 1'b1;
							counter_next = 0;
							if(s_axis_tlast_fifo) begin
							    first_time_next = 1'b1;
							end
					  end
			        else if(s_axis_tlast_fifo) begin // Last SLAVE word
			            if(~|s_axis_tkeep_fifo[C_M_AXIS_DATA_WIDTH/8 * (counter_plus_1)]) begin
			            // Next MASTER strobe is empty == This master word is the last
			            // Clean up the current word
			                counter_next = 0;
			                first_time_next = 1'b1;
								 in_fifo_rd_en = 1'b1;
			            end
			        end
				end
			end
		end
    end


    always @(posedge axi_aclk) begin
        if (~axi_resetn) begin
            counter <= 0;
            first_time <= 1'b1;
            length_prev <= 1'b0;
        end
        else begin
            counter <= counter_next;
            first_time <= first_time_next;
            length_prev <= length_prev_next;
        end
    end
    end


    else begin: SLAVE_WIDER

    reg  [log2(S_M_RATIO_COUNT)-1:0] counter, counter_next;
    wire [log2(S_M_RATIO_COUNT)-1:0] counter_plus_1 = counter + 1'b1;

    always @(*) begin
        in_fifo_rd_en = 1'b0;
        info_fifo_rd_en = 1'b0;

        m_axis_tdata = s_axis_tdata_fifo[C_M_AXIS_DATA_WIDTH * (counter) +: C_M_AXIS_DATA_WIDTH];
        m_axis_tkeep = s_axis_tkeep_fifo[C_M_AXIS_DATA_WIDTH/8 * (counter) +: C_M_AXIS_DATA_WIDTH/8];
        m_axis_tlast = 1'b0;

        counter_next = counter;
        first_time_next = first_time;
        m_axis_tvalid = 1'b0;

        if(~in_fifo_empty) begin
        	if(first_time) begin
                    if(~info_fifo_empty) begin
                        m_axis_tvalid = 1'b1;
                        if(m_axis_tready) begin
                            info_fifo_rd_en = 1'b1;
                            first_time_next = 1'b0;
                            counter_next = counter_plus_1;
                        end
                    end
                end
                else begin
                    m_axis_tvalid = 1'b1;
                    if(s_axis_tlast_fifo) begin // Last SLAVE word
               	       if(counter == S_M_RATIO_COUNT - 1) begin
                           m_axis_tlast = 1'b1;
                       end
                       else if(~|s_axis_tkeep_fifo[C_M_AXIS_DATA_WIDTH/8 * (counter_plus_1) +: C_M_AXIS_DATA_WIDTH/8]) begin
                           m_axis_tlast = 1'b1;
                       end
                    end
                
                    if(m_axis_tready) begin
                          counter_next = counter_plus_1;
                    	  if(counter == S_M_RATIO_COUNT - 1) begin
                              in_fifo_rd_en = 1'b1;
                              counter_next = 0;
                              if(s_axis_tlast_fifo) begin
                                  first_time_next = 1'b1;
                              end
                	  end
                          else if(s_axis_tlast_fifo) begin // Last SLAVE word
                              if(~|s_axis_tkeep_fifo[C_M_AXIS_DATA_WIDTH/8 * (counter_plus_1) +: C_M_AXIS_DATA_WIDTH/8]) begin
                              // Next MASTER strobe is empty == This master word is the last
                              // Clean up the current word
                                  counter_next = 0;
                                  first_time_next = 1'b1;
                	          in_fifo_rd_en = 1'b1;
                              end
                        end
                    end
                end
        end
    end

    always @(posedge axi_aclk) begin
        if (~axi_resetn) begin
            counter <= 0;
            first_time <= 1'b1;
            length_prev <= 1'b0;
        end
        else begin
            counter <= counter_next;
            first_time <= first_time_next;
            length_prev <= length_prev_next;
        end
    end
    end
    endgenerate

endmodule

