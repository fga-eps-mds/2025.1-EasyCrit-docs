# Diretrizes de contribuição
Este é o repositório principal centralizador do projeto ```EasyCrit```.

Caso você esteja interessado em resolver um bug, ou adicionar uma nova feature, este repositório irá te guiar para a forma correta de contribuição.

O sistema de RPG virtual ```EasyCrit``` possui uma arquitetura de microsserviços, dividia em 4 repositórios de projeto. O repositório [**EasyCrit-frontend**](https://github.com/fga-eps-mds/2025.1-EasyCrit-frontend) contém todo o projeto de desenvolvimento _front-end_ do projeto, já o _back-end_ está separado em 3 outros repositórios, sendo eles: [**EasyCrit-auth**](https://github.com/fga-eps-mds/2025.1-EasyCrit-auth), [**EasyCrit-sessionManager**](https://github.com/fga-eps-mds/2025.1-EasyCrit-sessionManager) e [**EasyCrit-fileManager**](https://github.com/fga-eps-mds/2025.1-EasyCrit-fileManager). Cada um dos projetos de _back-end_ possui seu próprio repositório e pode receber contribuições individuais. As _issues_ devem ser mantidas **apenas** no [**repositório de documentação**](https://github.com/2025.1-EasyCrit-docs/), para que seja centralizado a organização e visualização das tarefas de desenvolvimento do projeto. 

Para rodar o projeto basta executar os comandos listados abaixo, considerando que as ferramentas de desenvolvimento necessárias listadas [**aqui**](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/blob/main/README.md#-linguagens-e-ferramentas-utilizados) estejam devidamente instaladas em seu sistema.

```shell
docker compose up
```

## Informações importantes antes de contribuir com o EasyCrit
* Leia nosso [**Código de Conduta**](https://fga-eps-mds.github.io/2025.1-EasyCrit-docs/artefatos/guias/code-of-conduct/)
* Leia nosso [**passo a passo sobre criação de issues**](https://fga-eps-mds.github.io/2025.1-EasyCrit-docs/artefatos/guias/how-to-issue/)
* Leia nossa [**Política de Commits**](https://fga-eps-mds.github.io/2025.1-EasyCrit-docs/artefatos/guias/template-commits/)
* Siga nossa [**Política de Branches**](#politica-de-branches)
* veja como [**Criar um Pull Request**](#crie-um-pull-request)

---

## Política de Branches
Na estrutura do projeto, estão **travadas para push** as branches `main` e `develop`, tendo em vista que são as branches que representam versões mais estáveis do projeto. Em **nenhuma circunstância** deve-se realizar _pushes_ diretamente na branch `main`, e apenas em caso de hotfixes será permitido pelos administradores do repositório que _pushes_ sejam feitos para a branch `develop`.

A branch `gh-pages` existe apenas no [**repositório de documentação**](https://github.com/2025.1-EasyCrit-docs/) e não deve ser utililzada pelos desenvolvedores.

### Branches principais
- `main`: Versão estável do projeto
- `develop`: Ambiente de homologação do projeto (versões mais recentes e novas funcionalidades serão testadas aqui antes de serem integradas à `main`)
- `gh-pages`: Branch existente apenas no [repositório de documentação](https://github.com/2025.1-EasyCrit-docs/), de onde é gerada [esta wiki](https://fga-eps-mds.github.io/2025.1-EasyCrit-docs/).

### Branches de trabalho:
- **`docs/nome_documento`**  
  Para alterações **exclusivas de documentação**.  
  Exemplo: `docs/manual-usuario`

- **`develop`**  
  Branch principal de **integração de funcionalidades** antes de irem para a release.

- **`hotfix/#<issue>-nome-da-issue`**  
  Usada para **corrigir bugs em produção rapidamente**.  
  Exemplo: `hotfix/#1-correcao-login`

- **`feature/#<issue>-nome-da-issue`**  
  Para desenvolver **novas funcionalidades**.  
  Exemplo: `feature/#2-cadastro-usuarios`

- **`release/vX.Y.Z`**  
  Usada para **preparar uma nova versão** do projeto.  
  Exemplo: `release/v1.2.0`

Para visualizar as branches que constam atualmente no projeto, consulte nossa [Estrutura de Branches](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/branches)

## Crie um Pull Request
1. Verifique se já existe uma **issue relacionada** às suas alterações nas [Issues](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/issues).
2. Se não existir:
   - Crie uma nova issue com seguindo o [**passo a passo sobre criação de issues**](https://fga-eps-mds.github.io/2025.1-EasyCrit-docs/artefatos/guias/how-to-issue/)
3. Submeta suas alterações via [Pull Request](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/pulls), seguindo o [template disponível](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/blob/main/.github/PULL_REQUEST_TEMPLATE.md).

## Referências
> Adaptado do guia [Over26](https://github.com/fga-eps-mds/2019.2-Over26/blob/master/.github/CONTRIBUTING.md)
