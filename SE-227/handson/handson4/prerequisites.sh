#!/usr/bin/env bash 

# satisfy prerequisites
sudo apt get install git docker.io

sudo curl -L https://github.com/docker/compose/releases/download/1.25.1-rc1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

docker pull dplsming/sockshop-frontend:0.1 weaveworksdemos/shipping:0.4.8 weaveworksdemos/user:0.4.4 weaveworksdemos/orders:0.4.7 weaveworksdemos/carts:0.4.8 weaveworksdemos/payment:0.4.3 weaveworksdemos/catalogue:0.3.5 mongo:3.4 dplsming/sockshop-cataloguedb:0.1

