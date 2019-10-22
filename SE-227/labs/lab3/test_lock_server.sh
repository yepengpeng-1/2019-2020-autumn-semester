#!/usr/bin/env bash 

pkill -9 lock_server
pkill -9 lock_tester

make

./lock_server 3772 &

./lock_tester 3772