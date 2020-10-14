#!/bin/bash

echo "BEGIN: stop-cargochief-tornado"

if [ -f /var/run/cargochief-tornado.pid ]; then
	x=$(cat /var/run/cargochief-tornado.pid)
	kill -9 $x
	rm -f /var/run/cargochief-tornado.pid
else
	echo "Nothing to do !!!"
fi

echo "END! stop-cargochief-tornado"


