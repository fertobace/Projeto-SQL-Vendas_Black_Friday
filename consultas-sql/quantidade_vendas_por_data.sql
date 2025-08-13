-- Quantidade por ano --
select strftime('%Y', data_venda) as ano, count(*) as qtd_vendas from vendas
GROUP by ano
order by ano;

-- Quantidade por ano e mês --
select strftime('%Y', data_venda) as ano,strftime('%m', data_venda) as mes,
count(*) as qtd_vendas from vendas
GROUP by ano, mes
order by ano;

-- Quantidade por ano e mês de acordo com a black friday (Mês de interesse) -- 
select strftime('%Y', data_venda) as ano,strftime('%m', data_venda) as mes,
count(*) as qtd_vendas from vendas
GROUP by ano, mes
having mes in ('11', '12', '01')
order by ano;
