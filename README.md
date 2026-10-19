# The Classic KDA

Aplicação Ruby on Rails 8 para registrar sessões de combate entre jogadores e guildas e acompanhar o KDA (abates e mortes) de cada jogador.

> Projeto pessoal em desenvolvimento.

## Funcionalidades

- Autenticação com o gerador nativo do Rails 8 (login por sessão e redefinição de senha)
- Cadastro de guildas, jogadores, sessões de combate e eventos de abate
- Cada evento de abate registra quem abateu e quem foi abatido dentro de uma sessão de combate
- Jogadores com contagem de abates e mortes, vinculados opcionalmente a uma guilda
- Endpoints JSON via Jbuilder

## Modelo de dados

- **Guild** tem muitos **Players**
- **CombatSession** registra início, fim e data da sessão
- **KillEvent** liga uma **CombatSession** a um jogador que abateu (`killer`) e a um jogador abatido (`victim`)

## Stack

- Ruby on Rails 8 · SQLite
- Hotwire (Turbo + Stimulus) · Importmap · Propshaft
- Solid Queue, Solid Cache e Solid Cable
- Docker + Kamal para deploy, com Thruster e Puma
- GitHub Actions para CI (Brakeman e RuboCop)

## Como rodar localmente

```bash
git clone https://github.com/lisboamab/theclassic_kda.git
cd theclassic_kda
bin/setup
bin/dev
```

A aplicação fica disponível em http://localhost:3000.

## Testes

```bash
bin/rails test
bin/rails test:system
```

## Deploy

O deploy é feito com [Kamal](https://kamal-deploy.org/), a partir do `Dockerfile` e da configuração em `config/deploy.yml`:

```bash
bin/kamal deploy
```
