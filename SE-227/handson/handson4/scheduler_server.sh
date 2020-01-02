#!/usr/bin/env bash 

INTERVAL=$1
NODENAME=$2
function StartBeating() {
    sudo python3 ./watcher/server.py NODENAME
    sleep $1s;
}

function KillMe() {
    exit 0
}

trap KillMe SIGINT

if [ "$#" -eq 2 ]
then
echo "press <Control + C> to terminate"
while :
do
    StartBeating
done
else
echo "usage: ./scheduler_server.sh <beating_time_internal, in seconds> <node-name>"
exit 1
fi