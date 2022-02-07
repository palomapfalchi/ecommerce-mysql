select id, nome, email, senha, cpf from cliente;

select * from cliente;

-- ordenar por ordem crescente de nome 
select * from cliente order by nome asc;

-- busca atraves de um criterio
select * from cliente where id=1;

-- renomear colunas
select id as "codigo", nome as "nome do cliente", cpf as "cpf do cliente" from cliente;
select "codigo" as "id", "nome do cliente" as "nome", "cpf do cliente" as "cpf" from cliente;

-- quantos clientes eu tenho
select count(id) from cliente;

-- qtos clientes tenho, com titulo da coluna
select count(id) as "total de clientes" from cliente;

-- recuperando o total faturado geral
select sum(valor_final) from pedido;

-- buscar produto por palavra chave
select * from produto where nome like "%USB%";


