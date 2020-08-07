use [loja_virtual]

go

ALTER proc [dbo].[sp_inserir_pedidos] 
	@usuario_id int,
	@data_compra datetime,
	@tipo_pagamento_id int,
	@data_pagamento datetime,
	@data_confirmacao datetime = null,
	@descricao_transacao varchar(100) = null
as
begin
	insert into 
		tb_pedidos(usuario_id, data_compra, tipo_pagamento_id, data_pagamento, data_confirmacao, descricao_transacao)
	values
		(@usuario_id, @data_compra, @tipo_pagamento_id, @data_pagamento, @data_confirmacao, @descricao_transacao)
	return @@IDENTITY
end
