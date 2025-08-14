# 🛒 Análise de Vendas e Black Friday – Projeto SQL

Este projeto realiza uma análise exploratória e estatística dos dados de vendas, com foco especial no período de **Black Friday**.  
O objetivo é identificar padrões, tendências e métricas relevantes sobre desempenho de vendas, produtos mais vendidos, ticket médio e sazonalidade, utilizando **consultas SQL** aplicadas a um banco de dados fictício.

---

## 🎯 Objetivo do Projeto
- Analisar os principais indicadores de desempenho durante a Black Friday.
- Identificar os clientes que mais compraram e os produtos mais vendidos.
- Avaliar o ticket médio geral e o ticket médio no período promocional.
- Medir a sazonalidade e comparar volumes de vendas entre anos.
- Obter insights que possam auxiliar em estratégias de marketing e estoque.

---

## 📂 Dataset
- **Nome:** `banco_de_dados_vendas.db`  
- **Origem:** Base fictícia simulando vendas de um e-commerce.  
- **Principais tabelas:**
  - `clientes` — informações dos clientes.
  - `produtos` — catálogo de produtos.
  - `categorias` — categorias dos produtos.
  - `fornecedores` — fornecedores cadastrados.
  - `vendas` — registros de vendas realizadas.
  - `itens_venda` — itens presentes em cada venda.

---

## 📊 Análises Realizadas
- **Clientes que mais compraram** na última Black Friday.
- **Produtos com maior faturamento** no período promocional.
- **Ranking de fornecedores** por ano.
- **Categorias mais vendidas** na Black Friday.
- **Distribuição percentual** das vendas por categoria.
- **Ticket Médio** geral vs. Black Friday.
- **Sazonalidade**: quantidade de vendas por ano, mês e ano/mês.

---

## 📈 Gráficos

### 1️⃣ Quantidade de Vendas por Ano/Mês

![Qtd x Ano](https://github.com/user-attachments/assets/b5ec175f-d926-4a69-b6c9-5741d77e3ad9)
Este gráfico mostra a evolução mensal das vendas, evidenciando picos nos meses de novembro (Black Friday) e, em alguns casos, dezembro e janeiro.

---

### 2️⃣ Quantidade de Vendas por Mês (Comparativo Anual)
![Qtd x Mês](https://github.com/user-attachments/assets/988a8ee0-2e82-4dd5-abc2-89a05c024dfb)
Neste comparativo, é possível observar padrões sazonais e identificar quais anos tiveram melhor desempenho em cada mês, com destaque para o pico da Black Friday.

---

## 🛠 Tecnologias Utilizadas
- **SQLite** – Armazenamento e consulta dos dados.
- **SQL** – Criação das queries analíticas.
- **Excel** – Visualização e geração dos gráficos.

---

## 📌 Observações
- Todos os dados utilizados são **fictícios** e têm fins educacionais.
- Scripts SQL estão comentados para facilitar a leitura e reutilização.
