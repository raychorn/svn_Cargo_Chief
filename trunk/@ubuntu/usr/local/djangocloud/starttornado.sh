#!/bin/bash

echo "BEGIN: start-djangocloud-tornado"

if [ -f /var/run/djangocloud-tornado.pid ]; then
	rm -f /var/run/djangocloud-tornado.pid
	echo "Nothing to do !!!"
else
	nohup /usr/local/djangocloud/djangocloud/runtornado.sh > /usr/local/djangocloud/djangocloud/nohup2.out 2>&1&
	sleep 5
	ps aux | grep djangocloud/tornadowsgi.py | grep -v grep | awk '{print $2}' | tail -n 1 > /var/run/djangocloud-tornado.pid
fi

echo "END! start-djangocloud-tornado"


