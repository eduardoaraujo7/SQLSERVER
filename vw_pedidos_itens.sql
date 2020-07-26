create view vw_pedidos_itens
as
select
	p.pedido_id,
	i.produto_id,
	prod.produto,
	prod.valor
from
	tb_pedidos p 
inner join
	tb_itens_pedido i
on
	i.pedido_id = p.pedido_id
inner join
	tb_produtos prod	
on
	prod.produto_id = i.produto_id

