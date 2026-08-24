# Projeto Escola Tech | Analista de Banco de Dados

## Sobre o projeto

Projeto de estudo desenvolvido durante a formação da Aponti, simulando a atuação de um **Analista de Banco de Dados** da Escola Tech.

A missão consiste em trabalhar com um banco de dados SQLite utilizado para armazenar informações de alunos e disciplinas, realizando desde a criação e migração dos dados até a auditoria, correção, atualização, análise e exportação de relatórios.

## Objetivo

Desenvolver habilidades práticas de gerenciamento e análise de bancos de dados utilizando **SQLite e SQL**, trabalhando com diferentes operações de criação, consulta, alteração, inserção e exclusão de dados.

## Atividades realizadas

Durante a missão, foram executadas operações envolvendo:

* criação das tabelas `Alunos` e `Disciplinas`;
* importação de dados em formato CSV;
* conferência e auditoria dos registros;
* consultas com `SELECT` e `WHERE`;
* correção de cadastros com `UPDATE`;
* inclusão de novos alunos e disciplinas com `INSERT`;
* exclusão de registros com `DELETE`;
* alteração da estrutura das tabelas com `ALTER TABLE`;
* criação de consultas utilizando `COUNT`, `AVG`, `MAX` e `MIN`;
* ordenação e agrupamento com `ORDER BY` e `GROUP BY`;
* classificação dos alunos com `CASE WHEN`;
* criação de relatórios gerenciais e de desempenho;
* exportação de resultados para arquivos CSV;
* utilização de tabela temporária para importação e validação de dados;
* remoção de tabelas com `DROP TABLE`;
* criação de cópia de segurança do banco.

## Estrutura do projeto

```text
02-escola-tech/
├── banco/
│   └── EscolaTech.db
├── sql/
│   └── missao_escola_tech.sql
├── dados/
│   ├── alunos.csv
│   └── disciplinas.csv
└── relatorios/
    ├── relatorio_alunos.csv
    ├── aprovados.csv
    └── disciplinas_atualizadas.csv
```

## Principais conceitos praticados

O projeto aborda conceitos fundamentais de SQL e bancos relacionais, incluindo:

`CREATE TABLE` · `SELECT` · `WHERE` · `INSERT` · `UPDATE` · `DELETE` · `ALTER TABLE` · `COUNT` · `AVG` · `MAX` · `MIN` · `ORDER BY` · `GROUP BY` · `CASE WHEN` · `DROP TABLE`

## Resultados

Ao final da missão, foram produzidos:

* banco de dados SQLite atualizado;
* script com os comandos SQL executados;
* arquivos CSV utilizados na migração;
* relatórios de alunos e disciplinas;
* classificação dos estudantes por situação acadêmica;
* consultas gerenciais para análise do desempenho dos alunos e das turmas.

## Aprendizados

O projeto permitiu praticar o ciclo básico de trabalho de um banco de dados: **criar, importar, consultar, validar, corrigir, atualizar, analisar e exportar dados**, além de reforçar os cuidados necessários antes da utilização de comandos que alteram ou removem informações.

Também foram trabalhadas boas práticas, como verificar os registros antes de executar `UPDATE` ou `DELETE` e realizar uma cópia de segurança antes de operações potencialmente destrutivas.
