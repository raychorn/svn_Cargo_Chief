#!/bin/bash

apt-get install libreadline-dev
apt-get build-dep python2.7

# for 64 bit
apt-get install gcc-multilib libc6-i386 lib6-dev-i386 libc6-dev-i386

#To compile your program so we just attach the-m32: 
#gcc -m32 test.c -o test

cd stackless    
./configure --prefix=/opt/stackless --enable-unicode=ucs4 -m32
make
    
make install

sudo ln -s /opt/stackless/bin/python2.5 /usr/bin/stackless
