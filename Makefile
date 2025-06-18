.PHONY: down build up debug logs

# general
build: down
	docker compose build

rebuild: build up

up:
	docker compose up -d

down:
	docker compose down

debug: down
	DEBUG=1 docker compose up -d

logs:
	docker compose logs --tail=10 -f

# Wiki
build-docs: down-docs
	docker compose build docs

rebuild-docs: build-docs up-docs

up-docs: 
	docker compose up docs -d

down-docs:
	docker compose down docs

debug-docs: down-docs
	DEBUG=1 docker compose up docs -d

logs-docs:
	docker compose logs docs --tail=10 -f

# Authentication microservice
build-auth: down-auth
	docker compose build auth

rebuild-auth: build-auth up-auth

up-auth:
	docker compose up auth -d

down-auth:
	docker compose down auth

debug-auth: down-auth
	DEBUG=1 docker compose up auth -d

logs-auth:
	docker compose logs auth --tail=10 -f

# Session manager microservice
build-session: down-session
	docker compose build session

rebuild-session: build-session up-session

up-session: 
	docker compose up session -d

down-session:
	docker compose down session

debug-session: down-session
	DEBUG=1 docker compose up session -d

logs-session:
	docker compose logs session --tail=10 -f

# File manager microservice
build-files: down-files
	docker compose build files

rebuild-files: build-files up-files

up-files: 
	docker compose up files -d

down-files:
	docker compose down files

debug-files: down-files
	DEBUG=1 docker compose up files -d

logs-files:
	docker compose logs files --tail=10 -f

# Frontend
build-front:
		docker compose build front

rebuild-front: build-front up-front

up-front:
	docker compose up front -d

down-front:
	docker compose down front

debug-front: down-front
	DEBUG=1 docker compose up front -d

logs-front:
	docker compose logs front --tail=10 -f

lanche-feliz: down build debug logs
