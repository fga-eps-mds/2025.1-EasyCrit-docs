.PHONY: down build up debug logs

build:
	docker compose build

rebuild: down up

up:
	docker compose up -d

down:
	docker compose down

debug: down
	DEBUG=1 docker compose up -d

logs:
	docker compose logs --tail=10 -f

login:
	docker compose exec -it wiki /bin/bash

lanche-feliz: down build debug logs
