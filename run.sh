#!/bin/sh
#UNIX_SOCKET_PATH=/var/run/faucet/faucet.sock
#UDP_URI=dojo-acl-manager:5343

while ! socat -d UNIX-CONNECT:${UNIX_SOCKET_PATH} UDP4-DATAGRAM:${UDP_URI} ; do 
	sleep 5
done
