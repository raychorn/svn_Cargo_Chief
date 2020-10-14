#!/bin/bash

echo "BEGIN: start-djangocloud"

if [ -f /var/run/djangocloud.pid ]; then
	rm -f /var/run/djangocloud.pid
	echo "Nothing to do !!!"
else
	nohup /usr/local/djangocloud/djangocloud/run2.sh > /usr/local/djangocloud/djangocloud/nohup2.out 2>&1&
	sleep 5
	ps aux | grep djangocloud/manage2.py | grep -v grep | awk '{print $2}' | tail -n 1 > /var/run/djangocloud.pid
fi

echo "END! start-djangocloud"

