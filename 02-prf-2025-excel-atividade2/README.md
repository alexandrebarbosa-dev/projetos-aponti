# Projeto 2 — Excel | Análise e Visualização de Acidentes (PRF)

## Sobre o projeto

Projeto de estudo desenvolvido durante a formação da Aponti, com o objetivo de aplicar recursos do **Excel na análise e visualização de dados de acidentes rodoviários da Polícia Rodoviária Federal (PRF)**.

A atividade simula o trabalho de um analista de dados responsável por transformar uma base de dados brutos em um **relatório visual executivo (Dashboard)**, utilizando fórmulas, estatística descritiva, consultas, indicadores e gráficos.

## Objetivo

Transformar os dados de acidentes rodoviários da PRF em informações estruturadas e visualizações que permitam identificar padrões, proporções, tendências e relações entre diferentes características dos acidentes.

## Atividades realizadas

### 1. Organização e limpeza dos dados

Foram criadas colunas auxiliares para tratamento e classificação dos registros, utilizando:

* operações de subtração;
* função `SE()`;
* cálculo de vítimas feridas;
* classificação de fatalidade dos acidentes.

### 2. Proporções e indicadores

Foram calculados indicadores derivados dos dados originais, incluindo:

* taxa de feridos graves;
* proporções em relação ao número de pessoas envolvidas;
* pontuação de risco por veículo.

### 3. Análise estatística

Foi construído um resumo estatístico utilizando:

* `MÉDIA()`;
* `MED()`;
* `QUARTIL.INC()`.

A análise permitiu observar medidas de tendência central e dispersão relacionadas ao número de veículos e pessoas envolvidas nos acidentes.

### 4. Painel de consulta rápida

Foi desenvolvido um mecanismo de consulta baseado no **ID do acidente**, utilizando `PROCV()` com correspondência exata (`FALSO`).

A partir do ID informado, o painel retorna informações como:

* município;
* causa do acidente;
* condição meteorológica.

### 5. Indicadores de volume

Foram utilizados:

* `CONT.VALORES()` para contabilizar o total de acidentes;
* `CONT.SE()` para analisar a quantidade de acidentes por estado.

### 6. Visualização de dados

Foram construídos gráficos para diferentes perspectivas da base:

* **Gráfico de Dispersão:** relação entre veículos e pessoas envolvidas;
* **Gráfico de Rosca/Pizza:** distribuição dos acidentes por fase do dia;
* **Gráfico de Barras Horizontais:** ranking das principais causas de acidentes;
* **Gráfico de Linhas:** evolução mensal do número de acidentes;
* **Gráfico de Colunas Empilhadas:** condição meteorológica dos acidentes por estado.

Os gráficos foram utilizados para facilitar a identificação de relações, concentrações, rankings e tendências temporais.

## Dashboard

Como etapa final, os resultados foram organizados em um **Dashboard Executivo**, considerando:

* indicadores de volume;
* painel de consulta por ID;
* gráficos de análise;
* títulos e elementos visuais claros;
* organização visual dos componentes;
* remoção das linhas de grade;
* utilização de uma paleta de cores padronizada.

## Competências desenvolvidas

O projeto permitiu praticar:

* tratamento e transformação de dados no Excel;
* criação de colunas calculadas;
* operações matemáticas;
* funções condicionais;
* funções estatísticas;
* cálculo de proporções;
* funções de busca;
* funções de contagem;
* análise temporal;
* análise de correlação visual;
* construção de tabelas auxiliares;
* criação de gráficos;
* construção de dashboards;
* organização e apresentação visual de informações.

## Ferramentas e recursos utilizados

* Microsoft Excel;
* fórmulas e funções;
* gráficos;
* tabelas auxiliares;
* painel de consulta;
* Dashboard.

## Resultado

O projeto consolida o uso do Excel como ferramenta de **tratamento, análise e visualização de dados**, partindo de uma base de acidentes rodoviários e chegando a um relatório visual capaz de apresentar indicadores e diferentes perspectivas sobre os dados.
