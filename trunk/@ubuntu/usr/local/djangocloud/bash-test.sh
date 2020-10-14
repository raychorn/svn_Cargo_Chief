#!/bin/bash

DIRNAME="/usr/local/@@TEMPLATE@@/_Django-1.3_Multi-Threaded"
parts=(${DIRNAME//\// })

tLen=${#parts[@]}
echo ${tLen}
for i in "${parts[@]}"
do
	echo $i
done
echo "---------------------------"
echo ${parts[tLen-1]}


