#!/usr/bin/env python

import os
import sys
import json
import platform
from kazoo.client import KazooClient, KazooState


args = sys.argv
if len(args) != 2:
    print("usage: <%s> <node-name>" % args[0])
    exit(-1)

node_name = args[1]

client = KazooClient(hosts='127.0.0.1:2181')


def listener(state):
    if state == KazooState.CONNECTED:
        print("    connected!")
    elif state == KazooState.SUSPENDED:
        print("[?] suspended")
    elif state == KazooState.LOST:
        print("[x] lost")


client.add_listener(listener)
client.start(timeout=5)

# getting the root node
data, stat = client.get(node_name)

data_json = json.loads(data.decode('utf-8'))

if platform.system() == 'Windows':
    fs = open('%windir%:\\system32\\drivers\\etc\\HOSTS', 'rw')
else:
    fs = open('/etc/hosts', 'rw')
for domain, address in data_json['others']:
    entry = '%s    %s' % (address, domain)
    content = fs.readlines()
    if entry in content:
        continue
    fs.write('\n%s' % entry)

fs.close()
