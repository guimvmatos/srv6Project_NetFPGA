/* -*- P4_16 -*- */
#include <core.p4>
#include <sume_switch.p4>
/* ok */
/* will be in udp header */
const bit<16> TYPE_IPV6 = 0x86dd;
const bit<16> TYPE_GTP = 2152;

/* will be in ipv6 header*/
const bit<8> TYPE_UDP = 17;
const bit<8> TYPE_TCP = 6;
const bit<8> TYPE_SRV6 = 43;

/* lenght of the SIDs list */
#define MAX_HOPS 4

const bit<8> pdu_container = 133;

#define REG_READ 8w0
#define REG_WRITE 8w1
/*************************************************************************
*********************** H E A D E R S  ***********************************
*************************************************************************/

typedef bit<48> macAddr_t;
typedef bit<128> ip6Addr_t;


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

header gtp_t {
    bit<3>  version_field_id;
    bit<1>  proto_type_id;
    bit<1>  spare;
    bit<1>  extension_header_flag_id;
    bit<1>  sequence_number_flag_id;
    bit<1>  npdu_number_flag_id;
    bit<8>  msgtype;
    bit<16> msglen;
    bit<32> teid;
}

header gtp_ext_t {
	bit<8> next_extension;
}

header pdu_container_t {
	bit<4> pdu_type;
	bit<5> spare;
	bit<1> rqi;
	bit<6> qosid;
	bit<8> padding; 
}

header udp_t {
    bit<16> sport;
    bit<16> dport;
    bit<16> len;
    bit<16> checksum;
}

header tcp_t {
    bit<16> srcPort;
    bit<16> dstPort;
    bit<32> seqNo;
    bit<32> ackNo;
    bit<4>  dataOffset;
    bit<3>  res;
    bit<3>  ecn;
    bit<6>  ctrl;
    bit<16> window;
    bit<16> checksum;
    bit<16> urgentPtr;
}

header srv6_t {
    bit<8> next_hdr;
    bit<8> hdr_ext_len;
    bit<8> routing_type;
    bit<8> segment_left;
    bit<8> last_entry;
    bit<8> flags;
    bit<16> tag;
}

header srv6_list_t {
    ip6Addr_t segment_id;
}   


struct headers {
    ethernet_t   ethernet;
    ipv6_t       ipv6_outer;
    srv6_t       srv6;
    srv6_list_t[MAX_HOPS]   srv6_list;
    udp_t        udp;
    gtp_t        gtp;
    gtp_ext_t    gtp_ext;
	pdu_container_t    pdu_container;
    ipv6_t       ipv6_inner;
    tcp_t		 tcp_inner;
    udp_t		 udp_inner;

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
        transition select(hdr.ipv6_outer.next_hdr){
            TYPE_UDP: parse_udp;
            TYPE_SRV6: parse_srv6;
            default: accept;
        }
    }

    state parse_srv6{
        packet.extract(hdr.srv6);
        transition accept;
    }

    state parse_udp {
        packet.extract(hdr.udp);
        transition select(hdr.udp.dport){
            TYPE_GTP: parse_gtp;
        }
    }

    state parse_gtp {
        packet.extract(hdr.gtp);
        transition select(hdr.gtp.extension_header_flag_id){
            1 : parse_gtp_ext;
            0 : parse_ipv6_inner;
        }  
    }


    state parse_gtp_ext{
    	packet.extract(hdr.gtp_ext);
    	transition select(hdr.gtp_ext.next_extension){
		pdu_container: parse_pdu_container; 
    	}
    }

    state parse_pdu_container{
    	packet.extract(hdr.pdu_container);
    	transition parse_ipv6_inner;
    }

    state parse_ipv6_inner {
    	packet.extract(hdr.ipv6_inner);
    	transition select(hdr.ipv6_inner.next_hdr){
    		TYPE_UDP: parse_udp_inner;
    		TYPE_TCP: parse_tcp_inner;
    		default: accept;
    	}
    }

    state parse_udp_inner{
    	packet.extract(hdr.udp_inner);
    	transition accept;
    }

    state parse_tcp_inner{
    	packet.extract(hdr.tcp_inner);
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
 
   action build_srv6(bit<8> num_segments) {
        hdr.srv6.setValid();
        hdr.srv6.next_hdr = TYPE_UDP;
        hdr.srv6.hdr_ext_len =  num_segments * 2;
        hdr.srv6.routing_type = 4;
        hdr.srv6.segment_left = num_segments -1;
        hdr.srv6.last_entry = num_segments - 1;
        hdr.srv6.flags = 0;
        hdr.srv6.tag = 0;
        hdr.ipv6_outer.next_hdr = TYPE_SRV6;

    }

    action srv6_t_insert_2(ip6Addr_t s1, ip6Addr_t s2){
        hdr.ipv6_outer.payload_len = hdr.ipv6_outer.payload_len + 40;
        hdr.srv6_list[0].setValid();
        hdr.srv6_list[0].segment_id = s1;
        hdr.srv6_list[1].setValid();
        hdr.srv6_list[1].segment_id = s2;
        hdr.ipv6_outer.dst_addr = s2;
        build_srv6(2);
    }   

        action srv6_t_insert_3(ip6Addr_t s1, ip6Addr_t s2,  ip6Addr_t s3){
        hdr.ipv6_outer.payload_len = hdr.ipv6_outer.payload_len + 56;
        hdr.srv6_list[0].setValid();
        hdr.srv6_list[0].segment_id = s1;
        hdr.srv6_list[1].setValid();
        hdr.srv6_list[1].segment_id = s2;
        hdr.srv6_list[2].setValid();
        hdr.srv6_list[2].segment_id = s3;
        hdr.ipv6_outer.dst_addr = s3;
        build_srv6(3);
    }


    
    table ipv6_outer_lpm {
        key = {
            hdr.ipv6_outer.dst_addr: exact;
        }
        actions = {
            ipv6_forward;
            NoAction;
        }
        default_action = NoAction();
    }


    table teid_exact{
        key = {
            hdr.gtp.teid: ternary;
            hdr.pdu_container.qosid: ternary;
            hdr.ipv6_inner.dst_addr: ternary;
            hdr.ipv6_inner.src_addr: ternary;
            hdr.ipv6_inner.next_hdr: ternary;
            hdr.tcp_inner.dstPort: ternary;
            hdr.tcp_inner.srcPort: ternary;
            hdr.udp_inner.dport: ternary;
            hdr.udp_inner.sport: ternary;
        }
        actions = {
            srv6_t_insert_2;
            srv6_t_insert_3;
        }
    }


    apply{
        

        if (!hdr.srv6.isValid() && hdr.gtp.spare == 0){
            teid_exact.apply();
        } 
        ipv6_outer_lpm.apply();
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
        packet.emit(hdr.srv6);
        packet.emit(hdr.srv6_list);
        packet.emit(hdr.udp);
        packet.emit(hdr.gtp);
        packet.emit(hdr.gtp_ext);
        packet.emit(hdr.pdu_container);
        packet.emit(hdr.ipv6_inner);
        packet.emit(hdr.tcp_inner);
        packet.emit(hdr.udp_inner);
        
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
