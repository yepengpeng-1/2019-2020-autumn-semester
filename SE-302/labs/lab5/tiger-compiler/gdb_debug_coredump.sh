#!/usr/bin/env bash 

ulimit -c unlimited

./build/tiger-compiler ./build/testcases/bsearch.tig

gdb ./build/tiger-compiler core