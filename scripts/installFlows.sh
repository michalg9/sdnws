#!/bin/sh

for i in `seq 1 $1`
do
	echo 'Flows installed at switch s'$i
	sudo ovs-ofctl add-flow s$i -O OpenFlow13 priority=101,dl_type=0x88cc,actions=CONTROLLER
	echo '------------\n'
done
