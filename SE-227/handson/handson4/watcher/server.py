#!/usr/bin/env python

import json
from kazoo.client import KazooClient, KazooState

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
data, stat = client.get('/')

# get his sub-nodes
children = client.get_children('/')

while children:
    node = children.pop(0)
    if node == '/':
        for child in node.get_children('/'):
            # recursively add child nodes
            children.append(node + '/' + child)
    else:
        for child in node.get_children('/'):
            # recursively add child nodes
            children.append(node + '/' + child)

print("=== here's what we've got ===")
# print(children)

hosts_alloc = {}

sub = 9090

for node in children:
    hosts_alloc.update({
        "node": '127.0.0.%d' % sub
    })
    sub += 1

for node in children:
    # ensures that exists
    client.ensure_path(node)

    host_dict = {
        "me": hosts_alloc[node],
        "others": hosts_alloc
    }

    transaction = client.transaction()
    # updates node data
    transaction.set(node, json.dumps(host_dict))
    results = transaction.commit()

client.stop()
