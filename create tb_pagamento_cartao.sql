create table tb_pagamento_cartao
(
	descricao_transacao varchar(100) primary key not null,
	numero_codigo_seguranca int null,
	numero_cartao int not null,
	nome_titular_cartao varchar(100) not null,
	descricao_tipo_cartao varchar(10) not null
)

alter table tb_pedidos
add status_pedido bit not null
default 1