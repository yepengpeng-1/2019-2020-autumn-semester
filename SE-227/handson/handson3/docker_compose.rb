version : '2'
services:
  frontend:
    image: dplsming/sockshop-frontend:0.1
    ports:
      - "8079:8079"
  shipping:
    image: weaveworksdemos/shipping:0.4.8
  user:
    image: weaveworksdemos/user:0.4.4
    image: weaveworksdemos/orders:0.4.7
    depends_on:
      user-db:
        condition: service_healthy
  orders:
    image: weaveworksdemos/orders:0.4.7
    depends_on:
      orders-db:
        condition: service_healthy
  carts:
    image: weaveworksdemos/carts:0.4.8
    depends_on:
      carts-db:
        condition: service_healthy
  payment:
    image: weaveworksdemos/payment:0.4.3
  catalogue:
    image: weaveworksdemos/catalogue:0.3.5
  carts-db:
    image: mongo:3.4
    restart: always
    healthcheck:
      test: echo 'db.stats().ok'
      interval: 5s
      timeout: 5s
      retries: 12
  user-db:
    image: mongo:3.4
    restart: always
    healthcheck:
      test: echo 'db.stats().ok'
      interval: 5s
      timeout: 5s
      retries: 12
  orders-db:
    image: mongo:3.4
    restart: always
    healthcheck:
      test: echo 'db.stats().ok'
      interval: 5s
      timeout: 5s
      retries: 12
  catalogue-db:
    image: dplsming/sockshop-cataloguedb:0.1
    restart: always