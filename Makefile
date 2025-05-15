.PHONY: down up stop logs up-docs down-docs stop-docs up-auth down-auth stop-auth up-filemanager down-filemanager stop-filemanager up-sessionmanager down-sessionmanager stop-sessionmanager

# Comandos para todos os serviços
down:
	docker compose down

up:
	docker compose up -d

stop:
	docker compose stop

logs:
	docker compose logs -f

# Documentação (mkdocs)
up-docs:
	docker compose up -d docs

down-docs:
	docker compose stop docs
	docker compose rm -f docs

stop-docs:
	docker compose stop docs

# Serviço de Autenticação
up-auth:
	docker compose up -d auth

down-auth:
	docker compose stop auth
	docker compose rm -f auth

stop-auth:
	docker compose stop auth

# Gerenciador de Arquivos
up-filemanager:
	docker compose up -d filemanager

down-filemanager:
	docker compose stop filemanager
	docker compose rm -f filemanager

stop-filemanager:
	docker compose stop filemanager

# Gerenciador de Sessões
up-sessionmanager:
	docker compose up -d sessionmanager

down-sessionmanager:
	docker compose stop sessionmanager
	docker compose rm -f sessionmanager

stop-sessionmanager:
	docker compose stop sessionmanager

# Comandos auxiliares
status:
	docker compose ps
