#!/bin/sh

docker-compose up -d
docker cp ~/.ssh/id_rsa.pub proxy_bastion_1:/root/.ssh/authorized_keys
docker-compose exec bastion chown root:root /root/.ssh/authorized_keys
docker-compose restart

