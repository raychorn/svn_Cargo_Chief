#!/bin/bash

echo "BEGIN: stop-djangocloud-tornado"

if [ -f /var/run/djangocloud-tornado.pid ]; then
	x=$(cat /var/run/djangocloud-tornado.pid)
	kill -9 $x
	rm -f /var/run/djangocloud-tornado.pid
else
	echo "Nothing to do !!!"
fi

echo "END! stop-djangocloud-tornado"


