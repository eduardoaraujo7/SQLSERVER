use [loja_virtual]
declare @data datetime;
set @data = (select GETDATE());
exec sp_inserir_usuario @usuario ='Catarina Daiane Aragão',  @data_cadastro = @data

select * from tb_usuarios

exec sp_inserir_produtos @produto = 'Coca Cola 2L', @valor = '6.90'
exec sp_inserir_produtos @produto = 'Arroz 5kilos', @valor = '16.90'
exec sp_inserir_produtos @produto = 'Café 1kilo', @valor = '13.49'

begin tran
declare @dataC datetime;
set @dataC = (select GETDATE());
declare @pedido int;
exec sp_inserir_pedidos @usuario_id = 1, @data_compra = @dataC
exec sp_inserir_itens_pedido @pedido_id = @pedido,  @produto_id = 1
exec sp_inserir_itens_pedido @pedido_id = @pedido,  @produto_id = 2
exec sp_inserir_itens_pedido @pedido_id = @pedido,  @produto_id = 3
commit tran

select * from tb_pedidos