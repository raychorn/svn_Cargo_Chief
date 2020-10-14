#!/usr/bin/python

import sys

def __test1__(__host__):
    import pylibmc
    print 'Testing <pylibmc> ... %s' % (__host__)
    mc = pylibmc.Client([__host__], binary=True, behaviors={"tcp_nodelay": True,"ketama": True})
    print mc

    mc["some_key"] = "Some value"
    print mc["some_key"]

    assert(mc["some_key"] == "Some value")
    print 'DONE !!!'

def __test2__(__host__):
    import umemcache

    print 'Testing <umemcache> ... %s' % (__host__)

    mc = umemcache.Client(__host__)
    mc.connect()
    print mc

    mc.set('key', 'Some value')
    print mc.get('key')[0]


    #mc["some_key"] = "Some value"
    #print mc["some_key"][0]

    assert(mc.get('key')[0] == "Some value")
    print 'DONE !!!'

try:
    __test1__('127.0.0.1:11211')
    __test1__('memcached1.fs7l9z.cfg.use1.cache.amazonaws.com:11211')
except:
    print 'ERROR #1'
    sys.exit(1)


try:
    __test2__('127.0.0.1:11211')
    __test2__('memcached1.fs7l9z.cfg.use1.cache.amazonaws.com:11211')
except:
    print 'ERROR #2'
    sys.exit(1)

print "It's all good."