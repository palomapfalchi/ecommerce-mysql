select id, nome, email, senha, cpf from cliente;

select * from cliente;

-- ordenar por ordem crescente de nome 
select * from cliente order by nome asc;

-- busca atraves de um criterio
select * from cliente where id=1;

-- renomear colunas
select id as "codigo", nome as "nome do cliente", cpf as "cpf do cliente" from cliente;
select "codigo" as "id", "nome do cliente" as "nome", "cpf do cliente" as "cpf" from cliente;