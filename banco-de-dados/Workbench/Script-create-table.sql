CREATE TABLE login (
  id int NOT NULL AUTO_INCREMENT,
  email varchar(100)NOT NULL,
  senha varchar(80) NOT NULL,
  usuario varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`) 
  );

create table tb_fornecedor
(	
	cod_fornecedor smallint not null auto_increment,
	cnpj varchar(18) not null,
	razao_social varchar(50) not null,
	inscricao_estadual varchar(15) not null,
	email_fornecedor varchar(100) not null,
	telefone_fornecedor varchar(20) not null,
	seAtivo boolean null,
	
	primary key (cod_fornecedor),
	unique key (cnpj)
	
);	
	
create table tb_combustivel
(
	cod_combustivel smallint not null,
	tipo_combustivel varchar (50) not null,
	
	primary key (cod_combustivel)


);	
	

create table tb_cambio
(
	cod_cambio smallint not null,
	cambio varchar (50) not null,
	
	primary key (cod_cambio)

);	

create table tb_cor
(
	cod_cor smallint not null,
	nome_cor varchar (50) not null,
	
	primary key (cod_cor)

);
	
create table tb_marca
(
	cod_marca smallint not null,
	marca_veiculo varchar (50) not null,
	
	primary key (cod_marca)

);

create table tb_motor
(
	cod_motor smallint not null,
	motor_veiculo varchar (50) not null,
	potencia_cv varchar (50) not null,
	
	primary key (cod_motor)

);

create table tb_veiculo
(
	cod_veiculo int not null auto_increment,
	modelo_veiculo varchar (50) not null,
	cod_marca smallint  not null,
	numero_chassi varchar (17) not null,
	ano_veiculo smallint not null,
	preco_veiculo decimal (12,2) not null,
	cod_cor smallint not null,
	cod_motor smallint not null,
	cod_combustivel smallint not null,
	cod_cambio smallint not null,
	cod_fornecedor smallint not null,
	estoque boolean not null,
	destaque boolean not null,
	seAtivo boolean null,
    imagem varchar (500) not null,
    descricao varchar (1200) not null,
	
	primary key (cod_veiculo),
	foreign key (cod_marca) references tb_marca (cod_marca),
	foreign key (cod_cor) references tb_cor (cod_cor),
	foreign key (cod_combustivel) references tb_combustivel (cod_combustivel),
	foreign key (cod_cambio) references tb_cambio (cod_cambio),
	foreign key (cod_motor) references tb_motor (cod_motor),
	foreign key (cod_fornecedor) references tb_fornecedor (cod_fornecedor),
	unique key (numero_chassi)
);

create table tb_cliente
(
	cod_cliente int not null,
	tipo_documento varchar(4) not null,
	numero_documento varchar(21) not null,
	nome_cliente varchar(50) null,
	data_nascimento date null,
	email_cliente varchar(50) not null,
	telefone_cliente varchar(20) not null,
	senha_cliente varchar(40) not null,
	inscricao_estadual varchar(15) null,
	razao_social varchar(50) null,

	primary key (cod_cliente),
	
	unique key (numero_documento)
)
;



create table tb_endereco
(
	cod_endereco int not null,
	cep_endereco varchar(10) not null,
	rua_endereco varchar(50) not null,
	complemento varchar(30)  null,
	numero_endereco varchar(10) null,
	bairro varchar(50) not null,
	cidade varchar(30) not null,
	uf varchar(2) not null,

	primary key (cod_endereco)
)
;


create table tb_endereco_cliente
(
	cod_cliente int not null,
	cod_endereco int not null,

	primary key (cod_cliente, cod_endereco), 
	

	foreign key (cod_cliente) references tb_cliente (cod_cliente),
	foreign key (cod_endereco) references tb_endereco (cod_endereco)
);




create table tb_modalidade_cartao
(
	cod_modalidade smallint not null,
	descricao_modalidade varchar(20) not null,

	primary key (cod_modalidade)
)
;




create table tb_cartao
(
	cod_cartao smallint not null,
	nome_titular varchar(50) not null,
	numero_cartao varchar(16) not null,
	validade_cartao varchar(5) not null,
	cvv varchar(3) not null,
	cod_modalidade smallint not null,
	cod_cliente int not null,
	
	
	primary key (cod_cartao),
	foreign key (cod_modalidade) references tb_modalidade_cartao (cod_modalidade),
	foreign key (cod_cliente) references tb_cliente (cod_cliente)
);


create table tb_boleto
(
	cod_boleto int not null,
	numero_cod_barra varchar (48) not null,

	primary key (cod_boleto)

);


create table tb_pix
(
	cod_pix int not null,
	id_transacao varchar (32) not null,

	primary key (cod_pix)

);



create table tb_forma_pagamento
(
	cod_forma_pagamento smallint not null,
	descricao_forma_pagamento varchar (50) not null,
	
	

	primary key (cod_forma_pagamento)

	

)
;



create table tb_agendamento
(
	cod_agendamento int not null,
	cod_veiculo int not null,
	cod_cliente int not null,
	data_reserva date not null,
	taxa_agendamento decimal(6,2) not null,
	cod_forma_pagamento smallint not null,
	cod_cartao smallint null,
	cod_boleto int null,
	cod_pix int null,
	

	primary key (cod_agendamento, cod_veiculo, data_reserva),
	
	foreign key (cod_forma_pagamento) references tb_forma_pagamento (cod_forma_pagamento),
	foreign key (cod_veiculo) references tb_veiculo (cod_veiculo),
	foreign key (cod_cliente) references tb_cliente (cod_cliente),
	foreign key (cod_cartao) references tb_cartao (cod_cartao),
	foreign key (cod_boleto) references tb_boleto (cod_boleto),
	foreign key (cod_pix) references tb_pix (cod_pix)
)
;



create table tb_favorito
(
	cod_favorito int not null,
	cod_cliente int not null,

	primary key (cod_favorito),

	foreign key (cod_cliente) references tb_cliente (cod_cliente)
)
;



create table tb_favorito_veiculo
(
	cod_veiculo int not null,
	cod_favorito int not null,

	primary key (cod_veiculo, cod_favorito),
	foreign key (cod_veiculo) references tb_veiculo (cod_veiculo),
	foreign key (cod_favorito) references tb_favorito (cod_favorito)
);



create table tb_loja (
		cod_loja smallint not null,
		razao_social_loja varchar (50) not null,
		cnpj_loja varchar (18)  not null,
		telefone_loja varchar (20) not null,
		cod_endereco int not null,

		primary key (cod_loja),
		foreign key (cod_endereco) references tb_endereco (cod_endereco)

);



create table tb_natureza_operacao (
	
		cod_natureza_operacao smallint not null,
		descricao_natureza_operacao varchar (50) not null,

		primary key (cod_natureza_operacao)
		
);


create table tb_frete 
(
	cod_frete smallint not null,
	unidade_federativa varchar (2) not null,
	valor_frete decimal (10,2) not null,

	primary key (cod_frete)

)
;



create table tb_status
(
	cod_status smallint not null,
	status varchar(10) not null,
	
	primary key (cod_status)
	
)
;

create table tb_pedido
(
	cod_pedido int not null,
	cod_cliente int not null,
	cod_veiculo int not null,
	cod_endereco int not null,
	cod_forma_pagamento smallint not null,
	cod_frete smallint not null,
	valor_total_pedido decimal (12,2) not null,
	data_pedido date not null,
	previsao_entrega smallint not null,
	data_envio date not null,
	cod_status smallint not null,

	primary key (cod_pedido),
	
	foreign key (cod_endereco) references tb_endereco (cod_endereco),
	foreign key (cod_veiculo) references tb_veiculo (cod_veiculo),
	foreign key (cod_cliente) references tb_cliente (cod_cliente),
	foreign key (cod_forma_pagamento) references tb_forma_pagamento (cod_forma_pagamento),
	foreign key (cod_frete) references tb_frete (cod_frete),
	foreign key (cod_status) references tb_status (cod_status)

)
;


create table tb_cabecalho_nf ( 

		cod_nota int not null,
		cod_cliente int not null,
		cod_loja smallint not null,
		cod_natureza_operacao smallint not null,
		numero_nota varchar(50) not null,
		chave_acesso varchar (50) not null,
		numero_serie varchar (10) not null,
		valor_total_nf decimal (12,2) not null,
		data_emissao_nf date not null,
		cod_pedido int not null,
		cod_frete smallint not null,

		primary key (cod_nota),
		foreign key (cod_cliente) references tb_cliente (cod_cliente),
		foreign key (cod_loja) references tb_loja (cod_loja),
		foreign key (cod_natureza_operacao) references tb_natureza_operacao (cod_natureza_operacao),
		foreign key (cod_pedido) references tb_pedido (cod_pedido),
		foreign key (cod_frete) references tb_frete (cod_frete)

);



create table tb_item_nf (
	
		cod_iten_nf  int not null,
		cod_nota int not null,
		preco_veiculo decimal (12,2) not null,
		percentual_icms decimal (4,2) not null,
		valor_icms decimal (12,2) not null,

		primary key (cod_iten_nf),
		foreign key (cod_nota) references tb_cabecalho_nf (cod_nota)
		

);


show tables;
