# Análise Exploratória dos Acidentes nas Rodovias Federais — PRF 2025

## Objetivo da atividade

Realizar uma análise exploratória dos acidentes registrados pela Polícia Rodoviária Federal (PRF) em 2025, utilizando **frequências, rankings e uma série temporal** para identificar padrões de ocorrência e fatalidade nas rodovias federais brasileiras.

A análise busca responder, inicialmente, **onde, quando e em quais circunstâncias os acidentes acontecem**, criando pontos de partida para investigações mais aprofundadas sobre os fatores associados à mortalidade nas estradas.

Além dos dados disponíveis na base da PRF, serão considerados dados externos complementares, como população, malha viária, efetivo da PRF e, quando disponíveis, volume de tráfego.

---

## Frequências

[svg](https://github.com/ghdss-science/aponti-academy-data-journey/tree/main/atv_unidade_5_2#frequ%C3%AAncias)

Foram analisadas as distribuições de:

* Acidentes por Unidade da Federação (UF).
* Tipos de acidentes.
* Principais causas dos acidentes.

### 1. Panorama nacional: onde os acidentes acontecem?

O objetivo é identificar em quais estados estão concentrados os acidentes e observar quais apresentam maior número de ocorrências, acidentes fatais e taxas de fatalidade.

O panorama estadual mostra diferentes padrões de ocorrência e fatalidade. Minas Gerais se destaca pelos números elevados nas diferentes variáveis, despertando o interesse em investigar quais fatores contribuem para sua participação nos índices nacionais. Sua grande extensão territorial, população e extensa malha rodoviária são características que podem ajudar a contextualizar esse resultado.

**Dados complementares sugeridos:** população, extensão da malha rodoviária, frota de veículos e volume de tráfego por estado.

### 2. Panorama nacional: mapeamento dos tipos de acidentes das estradas brasileiras

O objetivo é identificar quais tipos de acidentes são mais recorrentes nas rodovias brasileiras e quais apresentam maior potencial de fatalidade.

Os dados mostram que os acidentes mais frequentes não são necessariamente os mais letais. Colisões traseiras, transversais e laterais concentram grande parte das ocorrências, enquanto colisões frontais e atropelamentos de pedestres, embora menos frequentes, destacam-se pela elevada proporção de fatalidade.

Esse contraste indica que a frequência dos acidentes não é suficiente para explicar a dinâmica das mortes nas rodovias. Por isso, colisões frontais e atropelamentos devem receber atenção especial, buscando identificar **quais características das vias, do ambiente e das circunstâncias dos acidentes contribuem para sua maior letalidade**.

### 3. Panorama nacional: quais as principais causas dos acidentes?

O objetivo é identificar as principais causas associadas aos acidentes nas rodovias brasileiras e observar quais apresentam maior relação com a ocorrência de mortes.

O levantamento mostra que comportamentos e situações relacionados à presença de pedestres, circulação na contramão e ultrapassagens indevidas aparecem entre as causas com maior fatalidade. O resultado reforça que a letalidade não depende apenas do tipo de acidente, mas também das circunstâncias que o provocam.

O cruzamento entre **causa e tipo de acidente** torna-se, portanto, um dos principais caminhos para a investigação, especialmente para compreender as colisões frontais e os atropelamentos, que se destacaram pela elevada fatalidade.

**Dados complementares sugeridos:** velocidade da via, fiscalização, infrações de trânsito, horário e fase do dia.

---

## Rankings

[svg](https://github.com/ghdss-science/aponti-academy-data-journey/tree/main/atv_unidade_5_2#rankings)

Foram elaborados rankings para identificar:

* Regiões com maior número de acidentes.
* Rodovias federais com maior número de acidentes.
* Dias da semana com maior número de acidentes e maior fatalidade.

### 4. Panorama regional: onde os acidentes acontecem?

O objetivo é observar como os acidentes se distribuem entre as cinco grandes regiões brasileiras e comparar seus níveis de fatalidade.

O Sudeste lidera em números gerais, com forte contribuição de Minas Gerais, enquanto o Sul apresenta um volume expressivo de acidentes apesar de possuir apenas três estados e representar cerca de 14,7% da população brasileira. Já o Nordeste chama atenção por registrar o maior número de mortes, mesmo ocupando a terceira posição em quantidade de acidentes. Esses contrastes indicam a necessidade de investigar quais características regionais podem contribuir para diferentes níveis de fatalidade.

**Dados complementares sugeridos:** população, extensão territorial, malha rodoviária, frota e volume de tráfego por região.

### 5. Panorama nacional: quais rodovias concentram mais acidentes?

O objetivo é identificar as rodovias federais que concentram o maior número de acidentes e verificar se o volume de ocorrências acompanha a fatalidade.

A BR-101 e a BR-116 apresentam os maiores volumes de acidentes, mas o volume de ocorrências não acompanha necessariamente a letalidade. A BR-316, por exemplo, apresenta proporção de acidentes fatais significativamente maior, apesar de registrar menos ocorrências.

Esse contraste reforça a necessidade de investigar **quais características tornam determinados trechos mais letais**, considerando infraestrutura, tipo e condição da pista, traçado, fluxo de veículos e tipos de acidentes predominantes.

**Dados complementares sugeridos:** extensão de cada rodovia e, principalmente, volume de tráfego. Essas variáveis ajudam a diferenciar uma rodovia com muitos acidentes por ser extensa ou muito movimentada de uma rodovia proporcionalmente mais perigosa.

### 6. Panorama nacional: em quais dias da semana os acidentes são mais fatais?

O objetivo é observar como os acidentes e sua fatalidade se distribuem ao longo dos dias da semana, identificando possíveis padrões temporais.

Os dados mostram aumento progressivo da fatalidade ao longo da semana. Os menores índices aparecem entre segunda e quarta-feira, enquanto os maiores ocorrem no fim da semana, com pico no domingo. O fim de semana concentra, portanto, não apenas mais acidentes, mas também uma maior proporção de ocorrências fatais.

Esse comportamento levanta a hipótese de que fatores associados à dinâmica dos deslocamentos nos fins de semana contribuam para o aumento da letalidade. **Horário, fase do dia, tipo e causa do acidente** são cruzamentos importantes para investigar essa relação.

**Dado complementar sugerido:** volume de tráfego por dia da semana.

---

## Série Temporal

[svg](https://github.com/ghdss-science/aponti-academy-data-journey/tree/main/atv_unidade_5_2#s%C3%A9rie-temporal)

Foi analisada a evolução mensal dos acidentes ao longo de 2025, considerando:

* Número de acidentes.
* Número de acidentes fatais.
* Número de mortos.
* Número de feridos.
* Percentual de acidentes fatais.

### 7. Panorama nacional: como os acidentes se distribuem ao longo do ano?

O objetivo é observar a distribuição dos acidentes nas rodovias federais ao longo de 2025 e identificar períodos de maior concentração ou fatalidade.

Os dados indicam crescimento das ocorrências ao longo do ano, com menores volumes no início de 2025 e maiores registros no segundo semestre, especialmente em dezembro. A proporção de acidentes fatais, entretanto, permanece relativamente estável.

O aumento das ocorrências no fim do ano levanta a possibilidade de relação com **maior fluxo de veículos, férias, feriados e mudanças nos padrões de deslocamento**. O cruzamento com dia da semana, horário e tipo de acidente pode ajudar a identificar quais fatores estão associados a essa concentração.

**Dados complementares sugeridos:** volume de tráfego mensal, calendário de feriados, férias escolares e períodos de maior fluxo.

---

## Próximos aprofundamentos

Os resultados das frequências, rankings e da série temporal constituem uma primeira etapa exploratória. A partir dos padrões identificados, os próximos cruzamentos devem buscar explicar **por que determinados estados, regiões, rodovias, períodos, tipos e causas apresentam maior concentração ou fatalidade**.

Entre os principais caminhos de investigação estão:

* Tipo de acidente × causa do acidente.
* Tipo de acidente × tipo de pista.
* Tipo de acidente × fase do dia.
* Causa × fase do dia.
* BR × tipo de acidente.
* BR × UF.
* UF × características da malha rodoviária.
* Fatalidade × infraestrutura.
* Acidentes × efetivo da PRF.
* Acidentes × volume de tráfego.

O objetivo é avançar de uma análise **descritiva — onde e quando os acidentes acontecem — para uma análise explicativa, buscando identificar os fatores associados à maior letalidade das ocorrências**.
