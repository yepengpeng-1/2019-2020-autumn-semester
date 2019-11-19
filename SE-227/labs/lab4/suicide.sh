#!/usr/bin/env bash 

./stop.sh
pkill -9 lock_server
pkill -9 lock_tester

pkill -9 grade.sh
pkill -9 extent_server
pkill -9 yfs_client
pkill -9 test-lab2-part1