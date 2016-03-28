#!/bin/bash

echo 'Installing flows for s1'

sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=2,dl_dst=00:00:00:00:00:02,actions=output:3
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=2,dl_dst=00:00:00:00:00:04,actions=output:3
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=3,dl_dst=00:00:00:00:00:01,actions=output:1
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=1,dl_dst=00:00:00:00:00:04,actions=output:3
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=1,dl_dst=00:00:00:00:00:03,actions=output:2
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=2,dl_dst=00:00:00:00:00:01,actions=output:1
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=1,dl_dst=00:00:00:00:00:02,actions=output:3
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=3,dl_dst=00:00:00:00:00:03,actions=output:2

echo 'Installing flows for s2'

sudo ovs-ofctl add-flow s2 -O OpenFlow13 priority=1,in_port=2,dl_dst=00:00:00:00:00:02,actions=output:1
sudo ovs-ofctl add-flow s2 -O OpenFlow13 priority=1,in_port=1,dl_dst=00:00:00:00:00:01,actions=output:3
sudo ovs-ofctl add-flow s2 -O OpenFlow13 priority=1,in_port=1,dl_dst=00:00:00:00:00:04,actions=output:2
sudo ovs-ofctl add-flow s2 -O OpenFlow13 priority=1,in_port=1,dl_dst=00:00:00:00:00:03,actions=output:3
sudo ovs-ofctl add-flow s2 -O OpenFlow13 priority=1,in_port=3,dl_dst=00:00:00:00:00:02,actions=output:1
sudo ovs-ofctl add-flow s2 -O OpenFlow13 priority=1,in_port=3,dl_dst=00:00:00:00:00:04,actions=output:2
sudo ovs-ofctl add-flow s2 -O OpenFlow13 priority=1,in_port=2,dl_dst=00:00:00:00:00:01,actions=output:3
sudo ovs-ofctl add-flow s2 -O OpenFlow13 priority=1,in_port=2,dl_dst=00:00:00:00:00:03,actions=output:3

echo 'All flows for installed'

echo -e '------------\n'



