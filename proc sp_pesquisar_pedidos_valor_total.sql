go 
create proc sp_pesquisar_pedidos_valor_total
as
begin
	select
		ped_i.pedido_id,
		ped_u.usuario,
		ped_u.data_compra,
	SUM(ped_i.valor) as valor_total
		from
			vw_pedidos_usuarios ped_u
		inner join 
			vw_pedidos_itens ped_i
	on
		ped_i.pedido_id = ped_u.pedido_id
	group by
		ped_i.pedido_id,
		ped_u.usuario,
		ped_u.data_compra
end