#!/bin/bash

echo 'Installing flows for s1'

echo 'Connectivity between h1 and h2'
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=1,dl_dst=00:00:00:00:00:02,actions=output:2
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=2,dl_dst=00:00:00:00:00:01,actions=output:1

read -p "Check ping between h1 and h2 and press Enter."
echo -e '\n'

echo 'Connectivity between h1 and h3'
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=1,dl_dst=00:00:00:00:00:03,actions=output:3
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=3,dl_dst=00:00:00:00:00:01,actions=output:1

read -p "Check ping between h1 and h3 and press Enter."
echo -e '\n'

echo 'Connectivity between h2 and h3'
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=2,dl_dst=00:00:00:00:00:03,actions=output:3
sudo ovs-ofctl add-flow s1 -O OpenFlow13 priority=1,in_port=3,dl_dst=00:00:00:00:00:02,actions=output:2

read -p "Check ping between h2 and h3 and press Enter."
echo -e '\n'

echo 'All flows for s1 installed'

echo -e '------------\n'

