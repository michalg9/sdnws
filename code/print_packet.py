from ryu.lib.packet import packet
from ryu.lib.packet import ethernet
from ryu.lib.packet import ether_types
from ryu.lib.packet import arp
from ryu.lib.packet import ipv4
from ryu.lib.packet import icmp
import array

def print_packet(msg):
    print ''
    
    dpid = msg.datapath.id
    in_port = msg.match['in_port']
    
    print 'switch ', dpid, ' port', in_port
    
    pkt = packet.Packet(msg.data)
    for p in pkt:
        #print p.protocol_name
        if p.protocol_name == 'ethernet':
            eth_pkt = pkt.get_protocol(ethernet.ethernet);
            print 'eth.src = ', eth_pkt.src, ' eth.dst = ', eth_pkt.dst

        if p.protocol_name == 'arp':
            arp_pkt = pkt.get_protocol(arp.arp);
            print 'arp.src_mac = ', arp_pkt.src_mac, ' eth.dst_mac = ', arp_pkt.dst_mac
            print 'arp.src_ip = ', arp_pkt.src_ip, ' eth.dst_ip = ', arp_pkt.dst_ip
            
        if p.protocol_name == 'ipv4':
            ipv4_pkt = pkt.get_protocol(ipv4.ipv4);
            print 'ipv4.src', ipv4_pkt.src, 'ipv4.dst', ipv4_pkt.dst, 'protocol', ipv4_pkt.proto
            
        if p.protocol_name == 'icmp':
            icmp_pkt = pkt.get_protocol(icmp.icmp);
            print 'icmp type', icmp_pkt.type, ' code ', icmp_pkt.code
            
    print ''
