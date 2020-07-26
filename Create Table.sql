create database loja_virtual

use [loja_virtual]


create table tb_usuarios
(
	usuario_id int primary key identity,
	usuario varchar(100) not null,
	data_cadastro datetime not null
)

 create table tb_pedidos
(
	pedido_id int primary key identity,
	usuario_id int,
	data_compra datetime not null
)

create table tb_itens_pedido
(
	item_pedido_id int primary key identity,
	pedido_id int,
	produto_id int		
)

create table tb_produtos
(
	produto_id int primary key identity,
	produto varchar(100)not null,
	valor decimal (15,2) not null	 
)

alter table tb_pedidos
add foreign key (usuario_id) references tb_usuarios(usuario_id)

alter table tb_itens_pedido
add foreign key (pedido_id) references tb_pedidos(pedido_id)

alter table tb_itens_pedido
add foreign key (produto_id) references tb_produtos(produto_id)

