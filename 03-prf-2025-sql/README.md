# Módulo 3 — SQL com SQLite

## Projeto: Data Analytics com Dados Abertos da PRF

Análise de acidentes rodoviários registrados pela **Polícia Rodoviária Federal (PRF)** em 2025, utilizando **SQL e SQLiteOnline**.

O projeto tem como objetivo aplicar consultas SQL para exploração, agregação e análise dos dados, criando indicadores relacionados à ocorrência e à gravidade dos acidentes.

## Objetivos

O projeto contempla:

* Inspeção da base de dados;
* Criação de variáveis analíticas;
* Cálculo de indicadores gerais;
* Análises por estado e rodovia;
* Análise temporal;
* Análises bivariadas;
* Cálculo de cobertura, confiança e Lift;
* Criação de views para relatórios e dashboards;
* Preparação de bases analíticas e preliminares para modelagem.

## Base de dados

A base utilizada contém registros de acidentes rodoviários ocorridos em 2025.

A tabela importada no SQLiteOnline é:

`acidentes_prf_2025`

Durante a preparação da análise, foi criada a variável:

`acidente_fatal`

A classificação considera:

* `1` — acidente com pelo menos uma morte;
* `0` — acidente sem mortes.

## Análises realizadas

### 1. Inspeção e preparação

* Verificação da versão do SQLite;
* Verificação da estrutura da tabela;
* Contagem total de ocorrências;
* Criação da view `vw_acidentes_base`;
* Conversão de tipos com `CAST`;
* Criação da variável `acidente_fatal` utilizando `CASE WHEN`.

### 2. Indicadores gerais

Foram calculados:

* Total de acidentes;
* Total de acidentes fatais;
* Total de mortos;
* Percentual de ocorrências fatais.

### 3. Análises por localização

Foram realizadas análises por:

* Unidade da Federação (UF);
* Rodovia (BR);
* Combinação entre UF e BR.

Também foi criado um ranking das 30 rodovias com maior número absoluto de mortos.

### 4. Análise temporal

Os acidentes foram agrupados por:

* Ano;
* Mês.

A extração das informações de data foi realizada utilizando a função `strftime()` do SQLite.

### 5. Análises bivariadas

A taxa de fatalidade foi comparada segundo diferentes características dos acidentes:

* Tipo de acidente;
* Causa do acidente;
* Fase do dia;
* Condição meteorológica;
* Tipo de pista;
* Combinação entre tipo de pista e fase do dia.

As análises utilizam um limite mínimo de ocorrências para evitar interpretações baseadas em grupos muito pequenos.

### 6. Cobertura, confiança e Lift

Foram calculadas métricas para avaliar a relação entre determinadas categorias e a ocorrência de acidentes fatais.

O **Lift** compara a taxa de fatalidade de um determinado grupo com a taxa geral da base:

* `Lift > 1` — taxa de fatalidade acima da referência geral;
* `Lift = 1` — taxa semelhante à referência;
* `Lift < 1` — taxa abaixo da referência.

O Lift é utilizado como medida descritiva e não permite estabelecer relação de causalidade.

## Views criadas

O projeto utiliza views para organizar e facilitar o reaproveitamento das análises.

### `vw_acidentes_base`

Base principal da análise, acrescentando a variável `acidente_fatal`.

### `vw_indicadores_mensais`

Consolida indicadores de acidentes por ano e mês.

### `vw_indicadores_uf_br`

Consolida indicadores por combinação de UF e BR, permitindo análises de localização.

### `vw_base_analitica`

Seleciona as principais variáveis necessárias para análise e visualização.

### `vw_base_modelavel_preliminar`

Organiza variáveis explicativas e a variável-alvo `acidente_fatal` para uma possível etapa posterior de modelagem.

## Principais recursos SQL utilizados

Durante o projeto foram utilizados:

* `SELECT`
* `FROM`
* `WHERE`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* `COUNT`
* `SUM`
* `ROUND`
* `CAST`
* `CASE WHEN`
* `WITH / CTE`
* `OVER`
* `CREATE VIEW`
* `DROP VIEW IF EXISTS`
* `PRAGMA table_info`
* `strftime`

## Estrutura deste projeto

```text
03-prf-2025-sql/
│
├── dados/
│   └── acidentes_prf_2025.csv
│
├── sql/
│   └── modulo3_prf.sql
│   └── data_base_modulo3_prf.db
│
├── resultados/
│   ├── acidentes_por_mes.csv
│   ├── acidentes_por_uf.csv
│   ├── combina_tipo_pista_condi_metereologica.csv
│   ├── condicao_metereologica_percentual_letalidade.csv
│   ├── gravidade_fase_dia.csv
│   ├── letalidade_tipo_pista.csv
│   └── tipo_acidente_ocorrencias_fatais.csv
│   └── top_30_br_mais_letais.csv
│   ├── vw_bivariada_tipo_acidente.csv
│   ├── vw_indicadores_uf_br.csv
│   ├── vw_indicadores_mensais.csv
└── README.md
```
