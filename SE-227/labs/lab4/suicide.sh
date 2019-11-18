#!/usr/bin/env bash 

./stop.sh
pkill -9 lock_server
pkill -9 lock_tester