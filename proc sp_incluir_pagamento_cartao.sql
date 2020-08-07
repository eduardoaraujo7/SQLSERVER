use [loja_virtual]

go
create proc sp_incluir_pagamento_cartao
	@descricao_transacao varchar(100),
	@numero_codigo_seguranca int,
	@numero_cartao int,
	@nome_titular_cartao varchar(100),
	@descricao_tipo_cartao varchar(10)

as
begin
	insert into tb_pagamento_cartao	
	(descricao_transacao, 
	numero_codigo_seguranca, 
	numero_cartao, 
	nome_titular_cartao, 
	descricao_tipo_cartao)
	
	values
	(@descricao_transacao,
	@numero_codigo_seguranca,
	@numero_cartao,
	@nome_titular_cartao,
	@descricao_tipo_cartao)
end