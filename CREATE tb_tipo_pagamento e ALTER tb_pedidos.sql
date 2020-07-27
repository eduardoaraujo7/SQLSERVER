create table tb_tipo_pagamento
(
	tipo_pagamento_id int primary key identity(1,1),
	descricao_tipo_pagamento varchar(100) not null
)
insert into tb_tipo_pagamento (descricao_tipo_pagamento) values ('Dinheiro')
insert into tb_tipo_pagamento (descricao_tipo_pagamento) values ('Débito')
insert into tb_tipo_pagamento (descricao_tipo_pagamento) values ('Credito')
insert into tb_tipo_pagamento (descricao_tipo_pagamento) values ('Boleto')

alter table tb_pedidos
add tipo_pagamento_id int not null
default 1

alter table tb_pedidos
alter column tipo_pagamento_id int not null

alter table tb_pedidos
add foreign key (tipo_pagamento_id) references tb_tipo_pagamento(tipo_pagamento_id)

alter table tb_pedidos
add data_pagamento datetime not null
default getdate()

alter table tb_pedidos
add data_confirmacao datetime null

alter table tb_pedidos
add descricao_transacao varchar(100)

select * from tb_pedidos