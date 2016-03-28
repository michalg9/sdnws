#!/bin/sh

#set -x

for i in `seq 1 $1`
do
	echo 'Flows deleted at switch s'$i
	sudo ovs-ofctl -OOpenFlow13 del-flows s$i
	echo '------------\n'
done
