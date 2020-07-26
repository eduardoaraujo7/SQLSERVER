
create view vw_pedidos_usuarios
as
select
	p.pedido_id,
	u.usuario,
	p.usuario_id,
	CONVERT(varchar(10), p.data_compra, 103) as data_compra
from
	tb_pedidos p 
inner join
	tb_usuarios u
on
	u.usuario_id = p.usuario_id

