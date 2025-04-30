# Diretrizes de contribuição
Este é o repositório principal centralizador do projeto ```EasyCrit```.

Caso você esteja interessado em resolver um bug, ou adicionar uma nova feature, este repositório irá te guiar para a forma correta de contribuição.

O sistema de RPG virtual ```EasyCrit``` possui uma arquitetura de microsserviços, dividia em 4 repositórios de projeto. O repositório [EasyCrit-frontend](https://github.com/fga-eps-mds/2025.1-EasyCrit-frontend) contém todo o projeto de desenvolvimento _front-end_ do projeto, já o _back-end_ está separado em 3 outros repositórios, sendo eles: [EasyCrit-auth](https://github.com/fga-eps-mds/2025.1-EasyCrit-auth), [EasyCrit-sessionManager](https://github.com/fga-eps-mds/2025.1-EasyCrit-sessionManager) e [EasyCrit-fileManager](https://github.com/fga-eps-mds/2025.1-EasyCrit-fileManager). Cada um dos projetos de _back-end_ possui seu próprio repositório e pode receber contribuições individuais. As _issues_ devem ser mantidas **apenas** no repositório de documentação, para que seja centralizado a organização e visualização das tarefas de desenvolvimento do projeto. 

Para rodar o projeto basta executar os comandos listados abaixo, considerando que as ferramentas de desenvolvimento necessárias listadas [aqui]() estejam devidamente instaladas em seu sistema.

```shell
docker compose up
```

## Informações importantes antes de contribuir com o EasyCrit

* Leia nosso [**Código de Conduta**](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/blob/main/.github/CODE_OF_CONDUCT.md)
* veja o [**Template de Issue**](#crie-sua-issue)
* Siga nossa [**Política de Branches**](#politica-de-branches)
* Siga a [**Política de Commits**](#politica-de-commits)
* veja o [**Template de Pull Request**](#crie-um-pull-request)

---

## Crie sua Issue

- Utilize nosso [template padrão](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/blob/main/.github/ISSUE_TEMPLATE.md) para criar issues.
- Verifique primeiro nas [issues existentes](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/issues) se sua sugestão já foi registrada.
- Caso não exista, crie uma [nova issue](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/issues/new) com uma **label adequada**.

---

## Crie um Pull Request

1. Verifique se já existe uma **issue relacionada** às suas alterações nas [Issues](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/issues).
2. Se não existir:
   - Crie uma nova issue com:
     - Uma descrição clara da mudança proposta.
     - Um título autoexplicativo.
3. Submeta suas alterações via [Pull Request](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/pulls), seguindo nosso [template](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/blob/main/.github/PULL_REQUEST_TEMPLATE.md).

---

## Política de Commits

###  Mensagens de Commit

- Devem estar em **português**.
- Devem ser **claras e objetivas**.
- Devem referenciar a **issue relacionada**:

```shell
git commit -m '#X mensagem do commit'
```
*Onde X é o número da issue*

### Commits em Pareamento

Quando houver trabalho em par:

1. Use `git commit -s`
2. Na primeira linha: a descrição do commit.
3. Na segunda linha, adicione a autoria do par assim:

   ```
   Co-authored-by: Nome Do Par <email@dominio.com>
   ```

## Política de Branches

### Estrutura principal:
- **main**: Código estável (ambiente de homologação)
- **gh-pages**: Documentação do projeto

Branches de trabalho:

- **`docs/nome_documento`**  
  Para alterações **exclusivas de documentação**.  
  Exemplo: `docs/manual-usuario`

- **`devel`**  
  Branch principal de **integração de funcionalidades** antes de irem para a release.

- **`hotfix/#issue-descricao-aqui`**  
  Usada para **corrigir bugs em produção rapidamente**.  
  Exemplo: `hotfix/#1-correcao-login`

- **`feature/#issue-descricao-aqui`**  
  Para desenvolver **novas funcionalidades**.  
  Exemplo: `feature/#2-cadastro-usuarios`

- **`release/tag-versao`**  
  Usada para **preparar uma nova versão** do projeto.  
  Exemplo: `release/v1.2.0`

Para mais detalhes, consulte nossa [Estrutura de Branches](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/branches)

## Referências:

> Adaptado do guia [Over26](https://github.com/fga-eps-mds/2019.2-Over26/blob/master/.github/CONTRIBUTING.md)
