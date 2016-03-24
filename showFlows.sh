#!/bin/sh

#set -x

for i in `seq 1 $1`
do
	echo 'Flows installed at switch s'$i
	sudo ovs-ofctl -OOpenFlow13 dump-flows s$i
	echo '------------\n'
done
