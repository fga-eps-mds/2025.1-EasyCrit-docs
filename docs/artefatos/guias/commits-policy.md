## Padrões adotados
Para o projeto `EasyCrit`, foram adotados os padrões do [conventional commits](https://www.conventionalcommits.org/pt-br/v1.0.0/), que busca atingir simplicidade por meio de um conjunto de regras para que os commits sejam fáceis de ler, entender e rastrear.


## Como escrever um commit
A mensagem do commit deve ser estruturada da seguinte forma:
```sh
<tipo>[escopo opcional]: <descrição>

[corpo opcional]

[rodapé(s) opcional(is)]
```

### Tipos de commits
1. **fix**: um commit do tipo `fix` soluciona um problema no código
2. **feat**: um commit do tipo `feat` inclui uma nova funcionalidade no código
3. **refactor**: um commit do tipo `refactor` não soluciona um problema no código e nem adiciona nova funcionalidade
4. **docs**: um commit do tipo `docs` inclui mudanças relacionadas à documentação
5. **test**: um commit do tipo `test` inclui ou altera casos de teste no código

### Rodapés opcionais
1. **BREAKING CHANGE**: um commit que contém no rodapé opcional o texto `BREAKING CHANGE:`, ou contém o símbolo `!` depois do tipo ou escopo, introduz uma modificação que introduz uma quebra de compatibilidade da API. Uma `BREAKING CHANGE` pode fazer parte de commits de qualquer tipo
2. Outros rodapés diferentes de `BREAKING CHANGE` podem ser adicionados ao commit caso sigam uma convenção similar ao [git trailer format](https://git-scm.com/docs/git-interpret-trailers/pt_BR)
