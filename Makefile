dc=docker-compose.yml

all: build refresh

refresh:
	./refresh.sh

pull:
	sudo docker-compose -f ${dc} pull

restart:
	sudo docker-compose -f ${dc} down
	sudo docker-compose -f ${dc} up -d

build:
	sudo docker-compose -f ${dc} build --no-cache

mica-bash:
	sudo docker exec -i -t obiba-test_mica_1 /bin/bash
