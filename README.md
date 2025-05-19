<div align="center"><img id="logo EasyCrit" src="docs/assets/logo-easycrit-rounded.png"></img></div><br/>

[EasyCrit](link_do_projeto_aqui) é uma plataforma para jogar RPGs de mesa de forma virtual, desenvolvido por alunos da [Universidade de Brasília - UnB](link_unb), com o objetivo de facilitar e fazer com que a experiência de jogar RPG online seja de facil acesso e que seja intuitiva.

## 🧰 Linguagens e ferramentas utilizados
<div align="center">
<img src="https://img.shields.io/badge/postgresql-blue?style=for-the-badge&logo=postgresql&logoColor=%23FFFFFF"/>
<img src="https://img.shields.io/badge/nextjs-black?style=for-the-badge&logo=nextjs&logoColor=%23FFFFFF"/>
<img src="https://img.shields.io/badge/python-yellow?style=for-the-badge&logo=python&logoColor=%23FFFFFF"/>
<img src="https://img.shields.io/badge/fast%20api-yellow?style=for-the-badge&logo=fastapi&logoColor=%23FFFFFF"/>
<img src="https://img.shields.io/badge/mkdocs-lightblue?style=for-the-badge&logo=mkdocs&logoColor=%23FFFFFF"/>
</div>

## 📍 Executar o projeto localmente
### Pré-requisitos
- Docker
- Docker Compose

### 📁 Estrutura de pastas
Para o funcionamento correto do projeto, seus repositórios devem estar organizados da seguinte forma:

```
📁 Pasta principal
├── 📁 2025.1-EasyCrit-docs (este repositório)
├── 📁 2025.1-EasyCrit-auth
├── 📁 2025.1-EasyCrit-fileManager
└── 📁 2025.1-EasyCrit-sessionManager
```

Todos os repositórios devem estar no mesmo nível para que o Docker Compose possa acessá-los corretamente.

### Executando

#### .env
Crie um arquivo `.env` na pasta raiz do repositório `2025.1-EasyCrit-docs` com o seguinte conteúdo:

```env
AUTH_PORT=8080
FILEMANAGER_PORT=5050
SESSIONMANAGER_PORT=6060
MKDOCS_PORT=8000
POSTGRES_PORT=5432
POSTGRES_USER=
POSTGRES_PASSWORD=
```


Após clonar os repositórios na estrutura indicada acima, você pode executar o projeto de duas formas:

#### Usando Docker Compose diretamente:
```bash
docker compose up -d
```

#### Ou usando os comandos do Makefile:
```bash
# Iniciar todos os serviços
make up

# Iniciar apenas o serviço de documentação (wiki)
make up-docs

# Iniciar apenas o serviço de autenticação
make up-auth

# Iniciar apenas o gerenciador de arquivos
make up-filemanager

# Iniciar apenas o gerenciador de sessões
make up-sessionmanager
```

### Acessando os serviços
Após iniciar os serviços, você pode acessá-los nos seguintes endereços:

- **Documentação (Wiki)**: http://localhost:8000
- **Serviço de Autenticação**: http://localhost:5000
- **Gerenciador de Arquivos**: http://localhost:5050
- **Gerenciador de Sessões**: http://localhost:6060

### Parando os serviços
Para parar os serviços, você pode usar:

```bash
# Parar todos os serviços sem remover os contêineres
make stop

# Parar e remover todos os contêineres
make down

# Parar serviços específicos
make stop-docs
make stop-auth
make stop-filemanager
make stop-sessionmanager
```

