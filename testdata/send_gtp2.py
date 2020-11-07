#!/usr/bin/env python
import argparse
import sys
import socket
import random
import struct
import argparse

import gpt2

from scapy.all import sendp, send, get_if_list, get_if_hwaddr, hexdump
from scapy.all import Packet
from scapy.all import Ether, IPv6, UDP, TCP
from gpt2 import *

def main():

    if len(sys.argv)<2:
        print 'pass 2 arguments: <destination> "<message>"'
        exit(1)]

    addr = "2001:0DB8:AC10:FE01:0000:0000:0000:0002"

    iface = "enp0s8" 

    print "sending on interface %s to %s" % (iface, str(addr))
    pkt =  Ether(src=get_if_hwaddr(iface), dst='00:00:00:00:00:04') / IPv6(dst="fc00::2" , src="fc00::1") / UDP (sport=64515, dport=2152 ) / GTP_U_Header(TEID=32, Reserved=0, E=1) / dl_pdu_session(gtp_ext=133,QoSID=14) / IPv6(dst="fc00::2" , src="fc00::1") / UDP(dport=80,sport=35000) / sys.argv[1]
    pkt.show2()
    pkt.summary()
    sendp(pkt, iface=iface, verbose=False)


'''
    if (0 < 1):
        print "sending on interface {}".format(iface)
        pkt =  Ether(src=get_if_hwaddr(iface), dst='ff:ff:ff:ff:ff:ff')
        pkt = pkt / IPv6(dst="2001:0DB8:AC10:FE01:0000:0000:0000:0002", src="2001:0DB8:AC10:FE01:0000:0000:0002:0002") / UDP (sport=64515, dport=2152) / GTP_U_Header() / IPv6(dst=addr) / TCP(dport=random.randint(29152,65535), sport=random.randint(49152,65535)) / args.message
    else:
        print "deu erro~"
        print "sending on interface {} to IP addr {}".format(iface, str(addr))
        pkt =  Ether(src=get_if_hwaddr(iface), dst='ff:ff:ff:ff:ff:ff')
        pkt = pkt / IP(dst=addr) / TCP(dport=2152, sport=random.randint(49152,65535)) / args.message

    pkt.show2()
    pkt.summary()
#    hexdump(pkt)
#    print "len(pkt) = ", len(pkt)
    sendp(pkt, iface=iface, verbose=False)
'''

if __name__ == '__main__':
    main()
