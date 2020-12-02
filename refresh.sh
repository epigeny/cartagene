#!/bin/bash

DC=docker-compose.yml

sudo docker-compose -f $DC down && sudo rm -rf /tmp/test-*
#sudo docker-compose -f $DC build --no-cache
sudo docker-compose -f $DC up -d --remove-orphans
