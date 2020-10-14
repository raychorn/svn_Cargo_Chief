#!/bin/bash

echo "BEGIN: stop-cargochief"

if [ -f /var/run/cargochief.pid ]; then
	x=$(cat /var/run/cargochief.pid)
	kill -9 $x
	rm -f /var/run/cargochief.pid
else
	echo "Nothing to do !!!"
fi

echo "END! stop-cargochief"


