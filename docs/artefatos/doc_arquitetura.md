## **Documento de Arquitetura de Software**

**Histórico de Revisão**


|Data|Versão|Descrição|Autor(es)|
|----|------|---------|---------|
|15/05/2025|0.1|Versão inicial|[Philipe Sousa](https://github.com/PhilipeSousa)|
|16/05/2025|0.2|Adiciona Diagrama de sequência|[Philipe Sousa](https://github.com/PhilipeSousa)|

## 1. Introdução

### 1.1 Finalidade
Este documento tem como propósito apresentar uma visão geral da arquitetura de software da plataforma **EasyCrit**, detalhando as principais decisões arquiteturais adotadas durante seu desenvolvimento. O documento serve como referência para orientar a equipe técnica ao longo do projeto, promovendo consistência e alinhamento com os objetivos da aplicação.

### 1.2 Escopo
O **EasyCrit** é uma aplicação web desenvolvida por estudantes da Universidade de Brasília (UnB), voltada para a prática de RPG de mesa em ambiente virtual. A plataforma busca oferecer uma experiência acessível, intuitiva e eficiente para jogadores e mestres de RPG, facilitando a organização de sessões e a interação entre os participantes. Este documento contempla os aspectos técnicos essenciais da arquitetura do sistema, estabelecendo diretrizes que devem ser seguidas durante seu desenvolvimento.

---

## 2. Representação da Arquitetura

### 2.1 Descrição Geral

A arquitetura do **EasyCrit** é baseada em microsserviços, buscando garantir modularidade, escalabilidade e facilidade de manutenção. A comunicação entre os componentes é realizada por meio de requisições HTTP, centralizadas através de um API Gateway, que atua como ponto de entrada principal para o cliente web.

A aplicação é dividida nas seguintes camadas:

- **Frontend**: Interface web desenvolvida com Next.js.
- **API Gateway**: Intermediário que direciona as requisições do frontend para os microsserviços apropriados.
- **Microsserviços (FastAPI)**:
  - **Session Manager**: Responsável pelo gerenciamento das sessões de jogo.
  - **Auth**: Responsável pelo controle de autenticação e autorização dos usuários.
  - **File Manager**: Gerencia arquivos enviados e utilizados durante as sessões (como fichas, imagens, etc).
- **Banco de Dados (PostgreSQL)**: Cada microsserviço possui seu próprio banco de dados PostgreSQL, garantindo isolamento e independência entre domínios.

### 2.2 Diagrama de Relações

[![dia_relacao.jpg](../assets/dia_relacao.jpg)](../assets/dia_relacao.jpg)

*Diagrama elaborado por Kess, 2025.*

### 2.3 Backend: FastAPI

O FastAPI é o framework adotado no backend da aplicação EasyCrit devido à sua alta performance, simplicidade, suporte nativo a operações assíncronas e à familiaridade da equipe de desenvolvedores com a tecnologia.

### Estrutura Interna e Inicialização

No núcleo da aplicação, três arquivos principais orquestram a inicialização da API:

- **`main.py`**: Ponto de entrada da aplicação. Cria uma instância da classe `FastAPI`, registra os roteadores (endpoints) e configura middlewares e eventos globais.
- **`__init__.py`**: Usado em alguns módulos para organizar e expor funcionalidades internas de forma limpa.
- **`applications.py`** *(opcional, dependendo da estrutura)*: Em projetos maiores, esse arquivo pode conter a definição e configuração principal da aplicação FastAPI, separando a inicialização de outros contextos (ex: CLI, testes, workers).

Esses componentes trabalham em conjunto para configurar a aplicação, conectá-la a middlewares, bancos de dados e rotas antes de ela começar a servir requisições HTTP.

### Roteamento e Manipulação de Requisições

Quando uma requisição HTTP chega, o FastAPI segue os seguintes passos:

1. **Recebimento da requisição**: FastAPI usa o servidor ASGI (como Uvicorn ou Hypercorn) para lidar com requisições assíncronas.
2. **Encaminhamento (Routing)**: A classe `APIRouter`, definida no módulo `routing.py` do FastAPI, é usada para agrupar e organizar endpoints por domínio (ex: usuários, autenticação). No projeto, esses roteadores ficam no diretório:


### 2.4 Frontend: Next.JS 

O **Next.js** é o framework escolhido para o desenvolvimento do frontend da aplicação **EasyCrit**. Construído sobre o **React**, o Next.js oferece um ambiente moderno para criação de interfaces web robustas.

A escolha pelo Next.js se deve à sua flexibilidade, suporte à renderização híbrida (SSR, SSG, ISR), roteamento automático baseado em arquivos e à integração facilitada com APIs REST e outras fontes de dados.

---

#### Principais Características Utilizadas

- **Pages-based routing**  
  Cada arquivo `.tsx` na pasta `/pages` representa uma rota da aplicação. O roteamento é automático, baseado na estrutura de diretórios.

- **Renderização Híbrida**
  - **SSR (Server Side Rendering)**: Utilizado para páginas que precisam de dados atualizados a cada requisição.
  - **SSG (Static Site Generation)**: Usado para páginas que não precisam ser atualizadas com frequência, melhorando a performance e o tempo de carregamento.

- **API Routes**  
  Caso necessário, é possível definir rotas de backend leves diretamente em `/pages/api`.

- **Static Files**  
  Arquivos estáticos como imagens, ícones e outros recursos são armazenados na pasta `/public`.


#### Estrutura Geral do Projeto

- **`/public/`** → Arquivos públicos (imagens, ícones, etc.)
- **`/src/app/`** → Estrutura de rotas baseada em arquivos (App Router)
- **`/src/components/`** → Componentes reutilizáveis (Header, Footer, etc.)
- **`/src/styles/`** → Estilização global e módulos CSS
- **`/src/services/`** → Funções para chamadas à API do backend FastAPI
- **`/src/hooks/`** → Hooks customizados (ex: useAuth, useFetch)
- **`/src/contexts/`** → Contextos globais (auth, tema, etc.)

---

### 3. Diagrama de Sequência

O diagrama de sequência a seguir demonstra a interação entre os principais componentes do sistema durante o processo descrito. O modelo foi elaborado pelo autor com base no comportamento esperado da aplicação.

[![Diagrama Sequencia](../assets/dia_seq.png)](../assets/dia_seq.png)

*Diagrama elaborado por Philipe, 2025.*