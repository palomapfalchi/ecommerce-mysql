-- como saber qtos produtos tem em cada departamento
select * from produto;

-- recuperando qtos produtos tem em cada depart
select departamento_codigo, count(codigo) from produto
	group by departamento_codigo;
    
-- recuperando a somatoria dos produtos por departam
select departamento_codigo, sum(preco*estoque) from produto
	group by departamento_codigo;