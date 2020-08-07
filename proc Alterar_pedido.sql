go
create proc sp_alterar_pedido

	@pedido_id int,
	@data_confirmacao datetime,
	@descricao_transacao varchar(100)

as 
begin
	update
		tb_pedidos
	set
		data_confirmacao = @data_confirmacao,
		descricao_transacao = @descricao_transacao
	where 
		pedido_id = @pedido_id
end

select * from tb_pedidos

update
	tb_pedidos
set status_pedido = 0
where pedido_id < 9
