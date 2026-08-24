

# Decisões de tratamento — Módulo 4
Data de geração: 2026-08-09 12:17

## Principais decisões tomadas

- Nomes de colunas padronizados para minúsculas, sem acentos e com underline.
- Colunas numéricas convertidas com `pd.to_numeric(errors='coerce')`.
- Datas convertidas com `pd.to_datetime(errors='coerce')`.
- Categorias ausentes relevantes preenchidas como IGNORADO.
- Variável-alvo: acidente_fatal = 1 quando mortos >= 1.
- Base modelável exclui variáveis derivadas do desfecho.

## Arquivos gerados
- /content/drive/MyDrive/Aponti - Análise de Dados/Projeto Módulo 4/dados_tratados/base_analitica_prf_2025.csv
- /content/drive/MyDrive/Aponti - Análise de Dados/Projeto Módulo 4/dados_tratados/base_modelavel_prf_2025.csv
- /content/drive/MyDrive/Aponti - Análise de Dados/Projeto Módulo 4/dados_tratados/dicionario_variaveis_modulo4.csv

