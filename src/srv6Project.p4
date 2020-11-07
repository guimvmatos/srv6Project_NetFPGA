/* -*- P4_16 -*- */
#include <core.p4>
#include <sume_switch.p4>


#define REG_READ 8w0
#define REG_WRITE 8w1
/*************************************************************************
*********************** H E A D E R S  ***********************************
*************************************************************************/
/* will be in Ethernet header */
const bit<16> TYPE_IPV6 = 0x86dd;

typedef bit<48> macAddr_t;

header ethernet_t {
    macAddr_t dstAddr;
    macAddr_t srcAddr;
    bit<16>   etherType;
}

header ipv6_t {
    bit<4> version;
    bit<8> traffic_class;
    bit<20> flow_label;
    bit<16> payload_len;
    bit<8> next_hdr;
    bit<8> hop_limit;
    bit<128> src_addr;
    bit<128> dst_addr;
}

struct headers {
    ethernet_t   ethernet;
    ipv6_t       ipv6_outer;
}

struct user_metadata_t {
    bit<8> unused;
}

struct digest_data_t {
    bit<256> unused;
}

/*************************************************************************
*********************** P A R S E R  ***********************************
*************************************************************************/
@Xilinx_MaxPacketRegion(16384)
parser MyParser(packet_in packet,
                out headers hdr,
                out user_metadata_t user_metadata,
                out digest_data_t digest_data,
                inout sume_metadata_t sume_metadata) {

    state start {
        transition parse_ethernet;
    }

    state parse_ethernet {
        packet.extract(hdr.ethernet);
        user_metadata.unused = 0;
        digest_data.unused = 0;    
        transition select(hdr.ethernet.etherType) {
            TYPE_IPV6: parse_ipv6_outer;
        }
    }

    state parse_ipv6_outer {
        packet.extract(hdr.ipv6_outer);
        transition accept;
    }
}

/*************************************************************************
**************  I N G R E S S   P R O C E S S I N G   *******************
*************************************************************************/

control MyIngress(inout headers hdr,
                 inout user_metadata_t user_metadata,
                 inout digest_data_t digest_data,
                 inout sume_metadata_t sume_metadata) {

    action ipv6_forward(macAddr_t dstAddr, port_t port) {
        sume_metadata.dst_port = port;
        hdr.ethernet.srcAddr = hdr.ethernet.dstAddr;
        hdr.ethernet.dstAddr = dstAddr;
    }
    
    table ipv6_exact{
        key = {
            hdr.ipv6_outer.dst_addr:   exact;
        }
        actions = {
            ipv6_forward;
            NoAction;
        }
        size = 64;
        default_action = NoAction;
    }

    apply{
    ipv6_exact.apply();
    }
}

/*************************************************************************
***********************  D E P A R S E R  *******************************
*************************************************************************/
@Xilinx_MaxPacketRegion(16384)
control MyDeparser(packet_out packet, 
		   in headers hdr,
                   in user_metadata_t user_metadata,
                   inout digest_data_t digest_data,
                   inout sume_metadata_t sume_metadata) {

    apply {
        packet.emit(hdr.ethernet);
        packet.emit(hdr.ipv6_outer);
 
    }
}   

/*************************************************************************
***********************  S W I T C H  *******************************
*************************************************************************/

SimpleSumeSwitch(
MyParser(),
MyIngress(),
MyDeparser()
) main;