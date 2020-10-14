#!/bin/bash

echo "BEGIN: start-cargochief"

if [ -f /var/run/cargochief.pid ]; then
	rm -f /var/run/cargochief.pid
	echo "Nothing to do !!!"
else
	nohup /usr/local/cargochief/cargochief/run2.sh > /usr/local/cargochief/cargochief/nohup2.out 2>&1&
	sleep 5
	ps aux | grep cargochief/manage2.py | grep -v grep | awk '{print $2}' | tail -n 1 > /var/run/cargochief.pid
fi

echo "END! start-cargochief"


