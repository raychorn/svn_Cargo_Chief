#!/usr/bin/env bash

echo "BEGIN: check-djangocloud"

if [ -f /var/run/djangocloud.pid ]; then
	pid=$(cat /var/run/djangocloud.pid)
	x=$(ps aux | grep djangocloud/manage2.py | grep -v grep | awk '{print $2}' | tail -n 1)
	if [ "$x" -ne "$pid" ] 2>/dev/null; then
		echo "djangocloud is possibly not running !!!"
	fi
	echo $x,$pid
else
	echo "djangocloud is not running !!!"
fi

echo "END! check-djangocloud"


