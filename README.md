<div align="center"><img style="width: 200px" id="logo EasyCrit" src="docs/assets/logo-easycrit-rounded.png"/></div><br/>

[EasyCrit](link_do_projeto_aqui) é uma plataforma para jogar RPGs de mesa de forma virtual, desenvolvido por alunos da [Universidade de Brasília - UnB](https://www.unb.br/), com o objetivo de facilitar e fazer com que a experiência de jogar RPG online seja de facil acesso e que seja intuitiva.

## 🧰 Linguagens e ferramentas utilizados
<div align="center">
<img src="https://img.shields.io/badge/docker-257bd6?style=for-the-badge&logo=docker&logoColor=white"/>
<img src="https://img.shields.io/badge/postgresql-blue?style=for-the-badge&logo=postgresql&logoColor=%23FFFFFF"/>
<img src="https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white"/>
<img src="https://img.shields.io/badge/python-yellow?style=for-the-badge&logo=python&logoColor=%23FFFFFF"/>
<img src="https://img.shields.io/badge/fast%20api-yellow?style=for-the-badge&logo=fastapi&logoColor=%23FFFFFF"/>
<img src="https://img.shields.io/badge/mkdocs--material-gray?style=for-the-badge&logo=materialformkdocs&logoColor=white&color=blue"/>
</div>

## 📍 Executar o projeto localmente
### Pré-requisitos
- Docker
- Docker Compose

### 📁 Estrutura de pastas
Para o funcionamento correto do projeto, seus repositórios devem estar organizados da seguinte forma:

>[!note]
> ```
> 📁 Pasta principal
> ├── 📁 2025.1-EasyCrit-docs (este repositório)
> ├── 📁 2025.1-EasyCrit-auth
> ├── 📁 2025.1-EasyCrit-fileManager
> └── 📁 2025.1-EasyCrit-sessionManager
> ```

Onde a **Pasta principal** é a pasta raiz anterior à todos os projetos. Por exemplo, se o caminho para este repositório é: `/home/jessepinkman/Documents/EasyCrit/2025.1-EasyCrit-docs`, a **Pasta principal** seria a pasta de nome **EasyCrit**.

>[!warning]
> - Seguir a estrutura de pastas proposta acima é crucial para que o Docker Compose possa acessá-los corretamente.
> - Também é necessário evitar renomear as pastas dos projetos, seugindo sempre a convenção proposta acima.

### Executando

#### Setup
No diretório deste projeto, execute o script `setup.sh` usando o comando:
```bash
./setup.sh
```

>[!important]
> - Preencha o arquivo .env com todos os parâmetros, para garantir o funcionamento correto da aplicação.
> - Confira se os script executou corretamente verificando a existência dos arquivos `docker-compose.yml`, `Makefile` e `.env` na **Pasta principal**.
> - Caso o script não possa ser executado, tente utilizar o comando ```chmod +x setup.sh```

Logo a seguir, o projeto pode ser executado de duas maneiras, sendo elas: usando a ferramenta `docker compose` diretamente ou usando a ferramenta `make`.

#### Usando Docker Compose diretamente:
Para executar o projeto usando o `docker compose` diretamente, podemos executar o seguinte comando:

```bash
docker compose up $ARGS
```

onde `$ARGS` pode ser substituído pelos seguintes valores:

- `docs`
- `auth`
- `session`
- `file`
- `front`
- ou apenas desconsiderar a variável $ARGS, fazendo com que todos os projetos sejam executados.

#### Comandos disponíveis via Makefile:
Executar todos os projetos (exceto a wiki):
```bash
make up
```

Executar a wiki localmente:
```bash
make up-docs
```

Executar apenas o microserviço de autenticação:
```bash
make up-auth
```

Executar apenas o microseriço de controle de sessões:
```bash
make up-session
```

Exeutar apenas o microserviço de gerenciamento de arquivos:
```bash
make up-files
```

>[!important]
> Para fazer com que a execução pare, basta apenas substituir a palavra `up` por `down` em cada um dos comandos específicos.

## Acessando os serviços em ambiente de desenvolvimento (local)
Após iniciar os serviços, você pode acessá-los nos seguintes endereços:

- **Documentação (Wiki)**: http://localhost:WIKI_PORT
- **Serviço de Autenticação**: http://localhost:AUTH_PORT
- **Gerenciador de Arquivos**: http://localhost:FILES_PORT
- **Gerenciador de Sessões**: http://localhost:SESSION_PORT
- **Frontend**: http://localhost:FRONTEND_PORT

>[!note]
> As variáveis `WIKI_PORT`, `AUTH_PORT`, `FILES_PORT`, `SESSION_PORT` e `FRONTEND_PORT` devem ser setadas no arquivo .env presente na **Pasta principal** e pode-se substituir a varivável pelo seu valor na url.
> Por exemplo, se `WIKI_PORT=3000`, a url para documentação ficaria: http://localhost:3000
