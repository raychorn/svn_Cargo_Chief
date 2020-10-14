#!/usr/bin/env bash

echo "BEGIN: check-cargochief"

if [ -f /var/run/cargochief.pid ]; then
	pid=$(cat /var/run/cargochief.pid)
	x=$(ps aux | grep cargochief/manage2.py | grep -v grep | awk '{print $2}' | tail -n 1)
	if [ "$x" -ne "$pid" ] 2>/dev/null; then
		echo "CargoChief is possibly not running !!!"
	fi
	echo $x,$pid
else
	echo "CargoChief is not running !!!"
fi

echo "END! check-cargochief"


