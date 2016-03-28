#!/bin/sh

#set -x

for i in `seq 1 $1`
do
	echo 'Configuration of OpenFlow13 on s'$i
	sudo ovs-vsctl set bridge s$i protocols=OpenFlow13
	echo '------------\n'
done
