-- juncao simples como produto cartesiano (6*3=18)
select * from produto inner join departamento;

-- seleciona tudo de departamento onde codigo de produto tem que ser igual codigo de departamento
select * from produto inner join departamento
	on produto.departamento_codigo = departamento.codigo;
    
-- recuperar todos clientes e respectivos enderecos
select * from cliente inner join endereco
	on endereco.cliente_id = cliente.id;
    
-- juncao de 3 ou mais tabelas
-- passo1: a partir dos pedidos, faco a juncao com itens de pedido
-- passo2: fazer juncao produto
-- passo3: fazer juncao com cliente
select * from 
	pedido inner join item_pedido 
		on pedido.numero = item_pedido.pedido_numero
	inner join produto on produto.codigo = item_pedido.produto_codigo
    inner join cliente on pedido.cliente_id = cliente.id;
    
-- a mesma consulta anterior, porem buscando todos dados do pedido
-- mais o nome cliente + nome do produto comprado
select pedido.numero, pedido.data_pedido, pedido.valor_bruto, pedido.desconto, 
pedido.valor_final, cliente.nome, produto.nome from 
	pedido inner join item_pedido 
		on pedido.numero = item_pedido.pedido_numero
	inner join produto on produto.codigo = item_pedido.produto_codigo
    inner join cliente on pedido.cliente_id = cliente.id
    order by pedido.numero;
    
-- quero totais de pedidos por cliente
select cliente.nome, pedido.cliente_id, sum(pedido.valor_final)
	from pedido inner join cliente on pedido.cliente_id = cliente.id
    group by pedido.cliente_id;