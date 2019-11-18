#!/usr/bin/env python

def startTrick():
    results = []
    while True:
        s = input()
        if s == '':
            break
        s = s.replace('\t', '').replace(' ', '')
        l = s.split('=')
        l.reverse()
        results.append(' = '.join(l))
    return results
