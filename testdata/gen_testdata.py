#!/usr/bin/env python

#
# Copyright (c) 2017 Stephen Ibanez
# All rights reserved.
#
# This software was developed by Stanford University and the University of Cambridge Computer Laboratory 
# under National Science Foundation under Grant No. CNS-0855268,
# the University of Cambridge Computer Laboratory under EPSRC INTERNET Project EP/H040536/1 and
# by the University of Cambridge Computer Laboratory under DARPA/AFRL contract FA8750-11-C-0249 ("MRC2"), 
# as part of the DARPA MRC research programme.
#
# @NETFPGA_LICENSE_HEADER_START@
#
# Licensed to NetFPGA C.I.C. (NetFPGA) under one or more contributor
# license agreements.  See the NOTICE file distributed with this work for
# additional information regarding copyright ownership.  NetFPGA licenses this
# file to you under the NetFPGA Hardware-Software License, Version 1.0 (the
# "License"); you may not use this file except in compliance with the
# License.  You may obtain a copy of the License at:
#
#   http://www.netfpga-cic.org
#
# Unless required by applicable law or agreed to in writing, Work distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations under the License.
#
# @NETFPGA_LICENSE_HEADER_END@
#


from nf_sim_tools import *
import random
from collections import OrderedDict
import sss_sdnet_tuples
from gpt2 import *

###########
# pkt generation tools
###########

pktsApplied = []
pktsExpected = []

# Pkt lists for SUME simulations
nf_applied = OrderedDict()
nf_applied[0] = []
nf_applied[1] = []
nf_applied[2] = []
nf_applied[3] = []
nf_expected = OrderedDict()
nf_expected[0] = []
nf_expected[1] = []
nf_expected[2] = []
nf_expected[3] = []

nf_port_map = {"nf0":0b00000001, "nf1":0b00000100, "nf2":0b00010000, "nf3":0b01000000, "dma0":0b00000010}
nf_id_map = {"nf0":0, "nf1":1, "nf2":2, "nf3":3}

sss_sdnet_tuples.clear_tuple_files()

def applyPkt(pkt, ingress, time):
    pktsApplied.append(pkt)
    sss_sdnet_tuples.sume_tuple_in['pkt_len'] = len(pkt) 
    sss_sdnet_tuples.sume_tuple_in['src_port'] = nf_port_map[ingress]
    sss_sdnet_tuples.sume_tuple_expect['pkt_len'] = len(pkt) 
    sss_sdnet_tuples.sume_tuple_expect['src_port'] = nf_port_map[ingress]
    pkt.time = time
    nf_applied[nf_id_map[ingress]].append(pkt)

def expPkt(pkt, egress):
    pktsExpected.append(pkt)
    sss_sdnet_tuples.sume_tuple_expect['dst_port'] = nf_port_map[egress]
    sss_sdnet_tuples.write_tuples()
    if egress in ["nf0","nf1","nf2","nf3"]:
        nf_expected[nf_id_map[egress]].append(pkt)
    elif egress == 'bcast':
        nf_expected[0].append(pkt)
        nf_expected[1].append(pkt)
        nf_expected[2].append(pkt)
        nf_expected[3].append(pkt)

def write_pcap_files():
    wrpcap("src.pcap", pktsApplied)
    wrpcap("dst.pcap", pktsExpected)

    for i in nf_applied.keys():
        if (len(nf_applied[i]) > 0):
            wrpcap('nf{0}_applied.pcap'.format(i), nf_applied[i])

    for i in nf_expected.keys():
        if (len(nf_expected[i]) > 0):
            wrpcap('nf{0}_expected.pcap'.format(i), nf_expected[i])

    for i in nf_applied.keys():
        print "nf{0}_applied times: ".format(i), [p.time for p in nf_applied[i]]

#####################
# generate testdata #
#####################


MAC1 = "08:11:11:11:11:08"
MAC2 = "08:22:22:22:22:08"
MAC3 = "08:33:33:33:33:08"
MAC4 = "08:44:44:44:44:08"
pktCnt = 0

def pkt_send():
    global pktCnt
    ''' PKT ONE -> TEID = 1 -> REGRA TESTADA: IPV6_FORWARD'''
    pkt = Ether(src=MAC1, dst=MAC2) / IPv6(src="fc00::1",dst="fc00::2") / UDP (sport=64515, dport=2152 ) / GTP_U_Header(TEID=1, Reserved=0, E=1) / dl_pdu_session(gtp_ext=133,QoSID=14) / IPv6(dst="fc00::2" , src="fc00::1") / UDP(dport=80,sport=35000)
    pkt.show2()
    pkt = pad_pkt(pkt, 64)
    applyPkt(pkt, 'nf0', pktCnt)
    pktCnt += 1
    pkt = Ether(src=MAC2, dst=MAC2) / IPv6(src="fc00::1",dst="fc00::2") / UDP (sport=64515, dport=2152 ) / GTP_U_Header(TEID=1, Reserved=0, E=1) / dl_pdu_session(gtp_ext=133,QoSID=14) / IPv6(dst="fc00::2" , src="fc00::1") / UDP(dport=80,sport=35000)
    pkt.show2()
    pkt = pad_pkt(pkt, 64)
    expPkt(pkt, 'nf1')

    ''' PKT TWO -> TEID = 32 -> REGRA TESTADA: TEID_EXACT + IPV6_FORWARD'''
    pkt1 = Ether(src=MAC1, dst=MAC2) / IPv6(src="fc00::1",dst="fc00::2") / UDP (sport=64515, dport=2152 ) / GTP_U_Header(TEID=32, Reserved=0, E=1) / dl_pdu_session(gtp_ext=133,QoSID=14) / IPv6(dst="fc00::2" , src="fc00::1") / UDP(dport=80,sport=35000)
    pkt1.show2()
    pkt1 = pad_pkt(pkt1, 64)
    applyPkt(pkt1, 'nf0', pktCnt)
    pktCnt += 1
    pkt1 = Ether(src=MAC2, dst=MAC3) / IPv6(src="fc00::1",dst="fc00::3") / IPv6ExtHdrRouting(type=4,segleft=1,addresses=["fc00::4","fc00::3"]) / UDP (sport=64515, dport=2152 ) / GTP_U_Header(TEID=32, Reserved=0, E=1) / dl_pdu_session(gtp_ext=133,QoSID=14) / IPv6(dst="fc00::2" , src="fc00::1") / UDP(dport=80,sport=35000)
    pkt1.show2()
    pkt1 = pad_pkt(pkt1, 64)
    expPkt(pkt1, 'nf2')

for i in range(5):
    pkt_send()

write_pcap_files()

