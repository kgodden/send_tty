#!/bin/sh
#
# Send a packet to the specified serial port
# and wait for, and output the response, it is assumed
# that the response will end with an EOL character.
#
# usage: send_tty.sh <data-to-send> <port>
#
# [backgound]  Wait for, and read a line from the serial port into RESP,
# max 128 characters, timeout=10s, then output $RESP
#
(read -n128 -t10 RESP < $2; echo $RESP)&
 
# Hack - use read to pause for 200ms to give previous
# command a chance to get started..
read -p "" -t 0.2
 
# Send command
printf "$1\r" > $2
 
# Wait for background read to complete
wait
