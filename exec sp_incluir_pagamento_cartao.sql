declare @transacao varchar(100),
		@data datetime;

set @transacao = (select NEWID());
set @data = (select GETDATE());

exec sp_incluir_pagamento_cartao
	@descricao_transacao = @transacao,
	@numero_codigo_seguranca = 011,
	@numero_cartao =3210,
	@nome_titular_cartao = 'Catarina Daiane Aragão',
	@descricao_tipo_cartao = 'Debito';


exec sp_alterar_pedido
	@pedido_id = 1,
	@data_confirmacao = @data,
	@descricao_transacao = @transacao;


	select * from tb_pagamento_cartao
	select * from tb_pedidos