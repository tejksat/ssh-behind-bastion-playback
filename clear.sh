#!/bin/sh

docker-compose stop
docker-compose rm -f
docker volume rm proxy_ssh-keys
