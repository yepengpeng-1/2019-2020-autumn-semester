#!/usr/bin/env bash 

clear;

sudo ./stop.sh

make;

sudo ./start.sh

sudo ./test-lab1-part2-b.pl ./yfs1