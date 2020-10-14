#!/bin/bash

echo "BEGIN: start-cargochief-tornado"

if [ -f /var/run/cargochief-tornado.pid ]; then
	rm -f /var/run/cargochief-tornado.pid
	echo "Nothing to do !!!"
else
	nohup /usr/local/cargochief/cargochief/runtornado.sh > /usr/local/cargochief/cargochief/nohup2.out 2>&1&
	sleep 5
	ps aux | grep cargochief/tornadowsgi.py | grep -v grep | awk '{print $2}' | tail -n 1 > /var/run/cargochief-tornado.pid
fi

echo "END! start-cargochief-tornado"


