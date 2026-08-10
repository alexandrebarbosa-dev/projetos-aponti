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

## SQLiteOnline

O projeto foi adaptado para execução no **SQLiteOnline**.

Algumas operações presentes em outros bancos, como DuckDB, possuem sintaxe ou procedimentos diferentes no SQLite. Entre as adaptações realizadas estão:

| DuckDB                   | SQLiteOnline                          |
| ------------------------ | ------------------------------------- |
| `read_csv_auto()`        | Importação do CSV pela interface      |
| `DESCRIBE`               | `PRAGMA table_info()`                 |
| `CREATE OR REPLACE VIEW` | `DROP VIEW IF EXISTS` + `CREATE VIEW` |
| `EXTRACT(YEAR/MONTH)`    | `strftime()`                          |
| `COPY ... TO CSV`        | Exportação pela interface             |

A importação e a exportação dos arquivos CSV são realizadas pela interface do SQLiteOnline.

## Entregáveis

O projeto deve conter:

1. **Script SQL comentado**
   Arquivo `.sql` com as consultas documentadas e reexecutáveis.

2. **Resultados em CSV**
   Resultados das consultas por UF, BR, mês, causa, tipo, clima e fase do dia.

3. **Consultas bivariadas**
   Análises cruzando diferentes variáveis com `acidente_fatal`.

4. **Visão agregada**
   View consolidada para utilização em dashboards.

## Estrutura sugerida

```text
03-prf-2025-sql/
│
├── dados/
│   └── acidentes_prf_2025.csv
│
├── sql/
│   └── analise_prf_2025.sql
│
├── resultados/
│   ├── por_uf.csv
│   ├── por_br.csv
│   ├── por_mes.csv
│   ├── por_causa.csv
│   ├── por_tipo.csv
│   ├── por_clima.csv
│   └── por_fase_dia.csv
│
└── README.md
```

## Exercícios complementares

Como extensão da análise, foram propostos exercícios envolvendo:

* Acidentes por município;
* Mortes por dia da semana;
* Comparação entre áreas urbanas e rurais;
* UFs acima da taxa global de fatalidade;
* Indicadores por município e BR;
* Cobertura, confiança e Lift por causa;
* Séries mensais por UF;
* Combinações entre condição meteorológica e fase do dia;
* Base contendo apenas acidentes fatais;
* Discussão sobre associação e causalidade.

## Observação metodológica

As análises realizadas neste projeto são **descritivas**. Uma associação identificada entre uma característica do acidente e a taxa de fatalidade não significa, por si só, que exista uma relação causal.

A interpretação dos resultados deve considerar também o volume de ocorrências, a cobertura de cada grupo e as características específicas dos dados.
