# Guia de Contribuição para o EasyCrit

Olá! Ficamos muito felizes com seu interesse em contribuir com o **EasyCrit**. Antes de começar, por favor, leia atentamente as orientações abaixo.

## Como posso contribuir para o EasyCrit?

* Leia nosso [**Código de Conduta**](./CODE_OF_CONDUCT.md)
* Crie sua [**Issue**](#crie-sua-issue)
* Siga nossa [**Política de Branches**](#politica-de-branches)
* Faça seus [**Política de Commits**](#politica-de-commits)
* Envie um [**Pull Request**](#crie-um-pull-request)

---

## Crie sua Issue

- Utilize nosso [template padrão]() para criar issues.
- Verifique primeiro nas [issues existentes](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/issues) se sua sugestão já foi registrada.
- Caso não exista, crie uma [nova issue](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/issues/new) com uma **label adequada**.

---

## Crie um Pull Request

1. Verifique se já existe uma **issue relacionada** às suas alterações nas [Issues](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/issues).
2. Se não existir:
   - Crie uma nova issue com:
     - Uma descrição clara da mudança proposta.
     - Um título autoexplicativo.
3. Submeta suas alterações via [Pull Request](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/pulls), seguindo nosso [template]().

---

## Política de Commits

###  Mensagens de Commit

- Devem estar em **português**.
- Devem ser **claras e objetivas**.
- Devem referenciar a **issue relacionada**:

```bash
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

- **`hotfix/numero-issue-descricao`**  
  Usada para **corrigir bugs em produção rapidamente**.  
  Exemplo: `hotfix/1-correcao-login`

- **`feature/numero-issue-descricao`**  
  Para desenvolver **novas funcionalidades**.  
  Exemplo: `feature/2-cadastro-usuarios`

- **`release/versao`**  
  Usada para **preparar uma nova versão** do projeto.  
  Exemplo: `release/v1.2.0`

Para mais detalhes, consulte nossa [Estrutura de Branches](https://github.com/fga-eps-mds/2025.1-EasyCrit-docs/branches)

## Referências:

> Adaptado do guia [Over26](https://github.com/fga-eps-mds/2019.2-Over26/blob/master/.github/CONTRIBUTING.md)