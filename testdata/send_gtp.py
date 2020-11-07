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
        exit(1)
    
    addr = "2001:0DB8:AC10:FE01:0000:0000:0000:0002"

    iface = "eno7" 

    print "sending on interface %s to %s" % (iface, str(addr))
    pkt =  Ether(src=get_if_hwaddr(iface), dst='ac:1f:6b:67:07:0c') / IPv6(dst="fc00::2" , src="fc00::1") / UDP (sport=64515, dport=2152 ) / GTP_U_Header(TEID=32, Reserved=0)/ IPv6(dst="fc00::2" , src="fc00::1") / TCP(dport=81) / sys.argv[1]
    pkt.show2()
    sendp(pkt, iface=iface, verbose=False)

if __name__ == '__main__':
    main()
