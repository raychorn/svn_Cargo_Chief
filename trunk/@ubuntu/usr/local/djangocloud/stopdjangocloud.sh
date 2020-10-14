#!/bin/bash

echo "BEGIN: stop-djangocloud"

if [ -f /var/run/djangocloud.pid ]; then
	x=$(cat /var/run/djangocloud.pid)
	kill -9 $x
	rm -f /var/run/djangocloud.pid
else
	echo "Nothing to do !!!"
fi

echo "END! stop-djangocloud"


