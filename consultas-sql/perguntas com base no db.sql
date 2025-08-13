-- Ranking de fornecedores por cada ano de Black Friday --

select f.nome as Nome_Fornecedor,
strftime('%Y/%m', data_venda) as Ano_Mes,
count(id_fornecedor) as Qtd_Vendas
from fornecedores f
join produtos p on f.id_fornecedor = p.fornecedor_id
join itens_venda iv on iv.produto_id = p.id_produto
join vendas v on v.id_venda = iv.venda_id
GROUP by Nome_Fornecedor, Ano_Mes
having strftime('%m', data_venda) = '11'
order by Ano_Mes, Qtd_Vendas DESC;

-- Categorias dos Produtos mais vendidos na Black Friday por ano--

select c.nome_categoria as Nome_Categoria, 
strftime('%Y', data_venda) as Ano,
count(id_categoria) as Qtd_vendas
from categorias c
join produtos p on c.id_categoria = p.categoria_id
join vendas v on v.id_venda = iv.venda_id
join itens_venda iv on iv.produto_id = p.id_produto
where strftime('%m', data_venda) = '11'
GROUP by Nome_Categoria, Ano
order by Ano, Qtd_Vendas DESC;

-- Porcentagem das Categorias --

SELECT Nome_Categoria, Qtd_vendas, round(100.0*Qtd_vendas/(SELECT count(*) from itens_venda), 2) 
|| '%' as Porcentagem
from(
  select c.nome_categoria as Nome_Categoria, 
  count(id_categoria) as Qtd_vendas
  from categorias c
  join produtos p on c.id_categoria = p.categoria_id
  join vendas v on v.id_venda = iv.venda_id
  join itens_venda iv on iv.produto_id = p.id_produto
  GROUP by Nome_Categoria
  order by Qtd_Vendas DESC
)
;

-- Top 5 Produtos mais vendidos na Black Friday --

select p.nome_produto as Nome_do_Produto, 
strftime('%Y/%m', data_venda) as Ano_Mes,
count(id_produto) as Qtd_Vendas
from produtos p
join itens_venda it on it.produto_id = p.id_produto
join vendas v on it.venda_id = v.id_venda
group by Nome_do_Produto, Ano_Mes
having strftime('%m', data_venda) = '11'
order by Ano_Mes, Qtd_Vendas DESC;

-- Ticket Médio vs Ticket Médio Black Friday --

SELECT round(AVG(total_venda),2) AS Ticket_Medio_Geral,
round(AVG(CASE WHEN strftime('%m', data_venda) = '11' THEN total_venda ELSE NULL END),2) AS Ticket_Medio_Black_Friday
FROM vendas;

