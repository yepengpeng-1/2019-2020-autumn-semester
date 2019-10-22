#!/usr/bin/env bash 

pkill -9 lock_server
pkill -9 lock_tester

make clean;

clear;

make;

./stop.sh

./start.sh

./test-lab2-part2-a ./yfs1 ./yfs2