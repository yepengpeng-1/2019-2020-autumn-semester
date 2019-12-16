#!/usr/bin/env bash 

echo "[ ] stopping docker-compose images ... "
docker-compose stop
echo "[*] stopped docker-compose images"

echo "[ ] removing docker-compose images ... "
echo y | docker-compose rm
echo "[*] removed docker-compose images"

echo "[ ] removing obsolete images ... "
docker images | grep -E "(dplsming/sockshop-frontend|weaveworksdemos/shipping|weaveworksdemos/user|weaveworksdemos/orders|weaveworksdemos/carts|weaveworksdemos/payment|weaveworksdemos/catalogue|dplsming/sockshop-cataloguedb)" | awk '{print $3}' | uniq | xargs -I {} docker rmi --force {}
echo "[*] removed obsolete images"

echo "[ ] starting docker-compose images ... "
docker-compose up
echo "[x] stopped docker-compose images "

