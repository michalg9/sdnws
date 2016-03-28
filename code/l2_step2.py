from ryu.base import app_manager
from ryu.ofproto import ofproto_v1_3

from ryu.controller import ofp_event
from ryu.controller.handler import HANDSHAKE_DISPATCHER
from ryu.controller.handler import set_ev_cls

class L2Switch(app_manager.RyuApp):
    OFP_VERSIONS = [ofproto_v1_3.OFP_VERSION]
    
    def __init__(self, *args, **kwargs):
        super(L2Switch, self).__init__(*args, **kwargs)
        print "Hello Ryu"
        
    @set_ev_cls(ofp_event.EventOFPHello, HANDSHAKE_DISPATCHER)
    def of_hello_world(self, ev):
        msg = ev.msg
        print "Hello openflow", msg


