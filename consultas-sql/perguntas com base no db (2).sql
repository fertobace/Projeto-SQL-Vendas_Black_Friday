-- Clientes que mais compraram na ultima Black Friday --
select c.nome_cliente, sum(v.total_venda) as Total_Gasto, count(total_venda) as Qtd_Compras,
strftime('%Y/%m', data_venda) as Ano_Mes
from clientes c
join vendas v on c.id_cliente = v.cliente_id
where strftime('%Y/%m', data_venda) = '2022/11'
GROUP by c.nome_cliente, Ano_Mes
order by Total_Gasto DESC;

-- Produtos que deram mais faturamento na ultima Black Friday--
select p.nome_produto, SUM(total_venda) as Faturamento 
from produtos p
join itens_venda iv on p.id_produto = iv.produto_id
JOIN vendas v on v.id_venda = iv.venda_id
where strftime('%Y/%m', data_venda) = '2022/11'
GROUP by p.nome_produto
order by Faturamento DESC;

-- Quadro Geral das Vendas por Ano-- 
SELECT strftime('%Y/%m', data_venda) AS "Ano/Mes", COUNT(*) AS Qtd_Vendas
FROM Vendas
GROUP BY "Ano/Mes"
ORDER BY "Ano/Mes"
;

-- Quadro Geral das Vendas por Mes-- 
SELECT Mes,
SUM(CASE WHEN Ano=='2020' THEN Qtd_Vendas ELSE 0 END) AS '2020',
SUM(CASE WHEN Ano=='2021' THEN Qtd_Vendas ELSE 0 END) AS '2021',
SUM(CASE WHEN Ano=='2022' THEN Qtd_Vendas ELSE 0 END) AS '2022',
SUM(CASE WHEN Ano=='2023' THEN Qtd_Vendas ELSE 0 END) AS '2023'
FROM(
    SELECT strftime('%m', data_venda) AS Mes, strftime('%Y', data_venda) AS Ano, COUNT(*) AS Qtd_Vendas
    FROM Vendas
    GROUP BY Mes, Ano
    ORDER BY Mes
    )
    GROUP BY Mes
    ;


