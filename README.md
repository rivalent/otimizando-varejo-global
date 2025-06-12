# 📊 Análise de Dados de Vendas e Storytelling

Este repositório apresenta um projeto completo de **análise de dados de vendas**, desenvolvido para transformar dados brutos em **insights acionáveis** e um **storytelling visual claro**, com o objetivo de apoiar a tomada de decisões estratégicas de negócio.

---

## 🎯 Objetivo do Projeto

O principal objetivo foi explorar um dataset de vendas, **identificar padrões, tendências e anomalias**, e **comunicar as descobertas de forma eficaz**, simulando um processo de análise de dados completo com foco em um dashboard de negócios.

---

## ✨ Etapas e Metodologia

O projeto seguiu um pipeline robusto de análise de dados, passando pelas seguintes etapas:

### 🔄 ETL (Extract, Transform, Load)

- **Extração:** Coleta de dados brutos de vendas, produtos e lojas a partir de arquivos CSV.
- **Transformação:** Limpeza e padronização dos dados, incluindo:
  - Normalização de nomes de produtos
  - Tratamento de valores nulos
  - Conversão de tipos de dados para garantir a integridade
- **Carregamento:** Inserção dos dados processados em um banco de dados **MySQL** robusto e relacional.

### 🧠 Análise de Dados com SQL

- Execução de **consultas SQL complexas** para extração de métricas relevantes.
- Análise de **tendências anuais de receita**.
- Mapeamento da **distribuição geográfica** das vendas por regiões, países e desempenho de lojas.
- Identificação dos **produtos e categorias mais vendidos** e sua contribuição na receita.
- Análise de **comportamento do cliente** com base em métricas **RFM (Recência, Frequência, Valor Monetário)** e valor médio de compra.

### 📈 Visualização de Dados com Python

- Criação de gráficos e tabelas utilizando:
  - **Pandas**
  - **Matplotlib**
  - **Seaborn**
- Desenvolvimento realizado no ambiente **Jupyter Notebook** (`02_insights.ipynb`).
- Simulação de dashboards para facilitar a compreensão visual dos insights.

### 🧾 Storytelling de Dados

- Organização das análises e visualizações em uma **narrativa coesa**, projetada para guiar as partes interessadas pelas descobertas mais relevantes e suas **implicações estratégicas**.

---

## 🔍 Principais Insights e Entregas

- **Visão Geral do Negócio:** Receita total, volume de transações e evolução anual das vendas.
- **Performance Geográfica:** Regiões, países e lojas com maior e menor desempenho.
- **Produtos e Categorias:** Itens que mais impulsionam vendas e receita.
- **Comportamento do Cliente:** Perfil dos clientes mais valiosos e valor médio de compra.
- **Desafios e Oportunidades:** Destaque para regiões subrepresentadas (ex: região *Norte* no Brasil) e propostas de **ações estratégicas para crescimento**.

---

## 🛠️ Tecnologias Utilizadas

- **Linguagens:** SQL, Python  
- **Banco de Dados:** MySQL  
- **Bibliotecas Python:** Pandas, Matplotlib, Seaborn, SQLAlchemy  
- **Ambiente:** Jupyter Notebook
