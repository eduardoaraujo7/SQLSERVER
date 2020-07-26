use [loja_virtual]

go 
create proc sp_inserir_usuario
	@usuario varchar(100),
	@data_cadastro datetime
as
begin
	insert into 
		tb_usuarios(usuario, data_cadastro) 
	values
		(@usuario, @data_cadastro)
end

go
create proc sp_inserir_pedidos 
	@usuario_id int,
	@data_compra datetime
as
begin
	insert into 
		tb_pedidos(usuario_id, data_compra)
	values
		(@usuario_id, @data_compra)
	return @@IDENTITY
end

go
create proc sp_inserir_itens_pedido
	@pedido_id int,
	@produto_id int
as
begin
	insert into
		tb_itens_pedido(pedido_id, produto_id)
	values
		(@pedido_id, @produto_id)
end

go
create proc sp_inserir_produtos
	@produto varchar(100),
	@valor decimal (15,2)
as
begin
	insert into		
		tb_produtos(produto, valor)
	values
		(@produto, @valor)
end