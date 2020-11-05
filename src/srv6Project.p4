/* -*- P4_16 -*- */
#include <core.p4>
#include <sume_switch.p4>


#define REG_READ 8w0
#define REG_WRITE 8w1
/*************************************************************************
*********************** H E A D E R S  ***********************************
*************************************************************************/

typedef bit<48> macAddr_t;

header ethernet_t {
    macAddr_t dstAddr;
    macAddr_t srcAddr;
    bit<16>   etherType;
}

struct headers {
    ethernet_t   ethernet;
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

    action mac_forward(port_t port){
        sume_metadata.dst_port = sume_metadata.src_port;
    }

    table mac_exact{
        key = {
            hdr.ethernet.dstAddr:   exact;
        }
        actions = {
            mac_forward;
            NoAction;
        }
        size = 64;
        default_action = NoAction;
    }

    apply{
    mac_exact.apply();
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