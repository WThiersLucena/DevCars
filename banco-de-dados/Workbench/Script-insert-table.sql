insert into tb_fornecedor 
(
	cod_fornecedor, 
	cnpj,
	razao_social,
	inscricao_estadual,
	email_fornecedor,
	telefone_fornecedor
)
values
(
	1, 
	'82947905000138', 
	'Ferrari Corporation',
	'573366418821', 
	'contact@ferrari.com',
	'1238853887');


insert into tb_fornecedor
values
(
	2, 
	'36783028000190',
	'Porsche S/A', 
	'409098034501',
	'contact@porsche.com',
	'1627779995');

-- select * from tb_fornecedor tf ;

insert into tb_fornecedor 
values
(
	3,
	'91563408000127', 
	'Bugatti Corporation',
	'129622047629', 
	'suport@bugatti.com', 
	'1137420701');

insert into tb_fornecedor 
values
(
	4,
	'95748659000137',
	'Lamborghini S/A', 
	'735189620663', 
	'contact@lamborghini.com', 
	'1127200490');

insert into tb_fornecedor
values
(
	5,
	'55550198000179', 
	'Tesla S/A',
	'114140200278', 
	'tesla.contact@tesla.com', 
	'1937305738'); 

insert into tb_fornecedor
values
(
	6,
	'70850075000147', 
	'BMW Associação', 
	'992561270210',
	'bmw@bmw.com', 
	'1627966899'); 

insert into tb_fornecedor
values
(
	7,
	'01413153000123',
	'Audi Corporation',
	'919010418657',
	'audi@contact.com', 
	'1127164661');

insert into tb_fornecedor 
values
(
	8,
	'24214899000103',
	'Aston Martin S/A',
	'397050906330',
	'aston.martin@vendas.com',
	'1835143625'); 

insert into tb_fornecedor
values
(
	9,
	'68505573000100', 
	'Bentley S/A', 
	'643892335660', 
	'bentleyBrasil@contact.com', 
	'1139023507'); 

insert into tb_fornecedor 
values
(
	10,
	'77981285000113', 
	'Mercedes Corporation',
	'381346058602',
	'contact@mercedes.com',
	'1137125953'); 


-- COMBUSTIVEL 1: Gasolina

insert into tb_combustivel
(
	cod_combustivel,
	tipo_combustivel
)
values
(	
	1,
	'GASOLINA'		
)
;

-- COMBUSTIVEL 2: Flex

insert into tb_combustivel
(
	cod_combustivel,
	tipo_combustivel
)
values
(	
	2,
	'FLEX'		
)
;

-- COMBUSTIVEL 3: Elétrico

insert into tb_combustivel
(
	cod_combustivel,
	tipo_combustivel
)
values
(	
	3,
	'ELÉTRICO'		
)
;

-- COMBUSTIVEL 4: Híbrido

insert into tb_combustivel
(
	cod_combustivel,
	tipo_combustivel
)
values
(	
	4,
	'HÍBRIDO'		
)
;


-- CAMBIO 1: Automático 6 marchas

insert into tb_cambio
(
	cod_cambio,
	cambio
)
values
(	
	1,
	'AUTOMÁTICO 6 MARCHAS'		
)
;

-- CAMBIO 2: Automático 7 marchas

insert into tb_cambio
(
	cod_cambio,
	cambio
)
values
(	
	2,
	'AUTOMÁTICO 7 MARCHAS'		
)
;

-- CAMBIO 3: Automático 8 marchas

insert into tb_cambio
(
	cod_cambio,
	cambio
)
values
(	
	3,
	'AUTOMÁTICO 8 MARCHAS'		
)
;

-- CAMBIO 4: Automático 9 marchas

insert into tb_cambio
(
	cod_cambio,
	cambio
)
values
(	
	4,
	'AUTOMÁTICO 9 MARCHAS'		
)
;

-- CAMBIO 5: PDK

insert into tb_cambio
(
	cod_cambio,
	cambio
)
values
(	
	5,
	'PDK'		
)
;

-- CAMBIO 6: Automático de 1 Velocidade

insert into tb_cambio
(
	cod_cambio,
	cambio
)
values
(	
	6,
	'AUTOMÁTICO DE 1 VELOCIDADE'		
)
;

-- CAMBIO 7: Manual 6 marchas

insert into tb_cambio
(
	cod_cambio,
	cambio
)
values
(	
	7,
	'MANUAL 6 MARCHAS'		
)
;


-- COR 1: Preto

insert into tb_cor
(
	cod_cor,
	nome_cor
)
values
(	
	1,
	'PRETO'			
)
;

-- COR 2: Branco

insert into tb_cor
(
	cod_cor,
	nome_cor
)
values
(	
	2,
	'BRANCO'			
)
;

-- COR 3: Amarelo

insert into tb_cor
(
	cod_cor,
	nome_cor
)
values
(	
	3,
	'AMARELO'			
)
;

-- COR 4: Vermelho

insert into tb_cor
(
	cod_cor,
	nome_cor
)
values
(	
	4,
	'VERMELHO'			
)
;

-- COR 5: Cinza

insert into tb_cor
(
	cod_cor,
	nome_cor
)
values
(	
	5,
	'CINZA'			
)
;

-- COR 6: Azul

insert into tb_cor
(
	cod_cor,
	nome_cor
)
values
(	
	6,
	'AZUL'			
)
;

-- COR 7: Prata

insert into tb_cor
(
	cod_cor,
	nome_cor
)
values
(	
	7,
	'PRATA'			
)
;

-- COR 8: Verde

insert into tb_cor
(
	cod_cor,
	nome_cor
)
values
(	
	8,
	'VERDE'			
)
;


-- MARCA 1: Lamborghini

insert into tb_marca
(
	cod_marca,
	marca_veiculo
)
values
(	
	1,
	'LAMBORGHINI'			
)
;

-- MARCA 2: Ferrari

insert into tb_marca
(
	cod_marca,
	marca_veiculo
)
values
(	
	2,
	'FERRARI'			
)
;

-- MARCA 3: Bugatti

insert into tb_marca
(
	cod_marca,
	marca_veiculo
)
values
(	
	3,
	'BUGATTI'			
)
;

-- MARCA 4: Porsche

insert into tb_marca
(
	cod_marca,
	marca_veiculo
)
values
(	
	4,
	'PORSCHE'		
)
;

-- MARCA 5: Tesla

insert into tb_marca
(
	cod_marca,
	marca_veiculo
)
values
(	
	5,
	'TESLA'		
)
;

-- MARCA 6: Tesla

insert into tb_marca
(
	cod_marca,
	marca_veiculo
)
values
(	
	6,
	'AUDI'		
)
;

-- MARCA 7: BMW

insert into tb_marca
(
	cod_marca,
	marca_veiculo
)
values
(	
	7,
	'BMW'		
)
;

-- MARCA 8: Aston Martin

insert into tb_marca
(
	cod_marca,
	marca_veiculo
)
values
(	
	8,
	'ASTON MARTIN'		
)
;

-- MARCA 9: Bentley

insert into tb_marca
(
	cod_marca,
	marca_veiculo
)
values
(	
	9,
	'BENTLEY'		
)
;


-- MOTOR 01: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	1,
	'4.0L V8 BI TURBO',
	'650 CV'		
)
;




-- MOTOR 02: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	2,
	'6.5L V12',
	'750 CV'		
)
;




-- MOTOR 03: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	3,
	'6.2L V12',
	'580 CV'		
)
;




-- MOTOR 04: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	4,
	'4.5L V8',
	'570 CV'		
)
;

-- MOTOR 05: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	5,
	'3.9L V8 BI TURBO',
	'620 CV'		
)
;



-- MOTOR 06: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	6,
	'6.5L V12',
	'810 CV'	
)
;



-- MOTOR 07: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	7,
	'8.0L QUADRI-TURBO',
	'1600 CV'		
)
;




-- MOTOR 08: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	8,
	'3.8L V12 BI-TURBO',
	'580 CV'		
)
;



-- MOTOR 09: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	9,
	'4.0L 6 CILINDROS BOXER TURBO',
	'450 CV'		
)
;



-- MOTOR 10: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	10,
	'4.0L V8 BI TURBO + ELETRICO',
	'680 CV'		
)
;



-- MOTOR 11: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	11,
	'3.0L 6 CILINDROS BOXER BI TURBO',
	'450 CV'		
)
;



-- MOTOR 12: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	12,
	'2.9L V6 BI TURBO + ELÉTRICO',
	'560 CV'		
)
;



-- MOTOR 13: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	13,
	'2 MOTORES ELÉTRICOS',
	'468 CV'		
)
;




-- MOTOR 14: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	14,
	'5.2L V10',
	'610 CV'		
)
;




-- MOTOR 15: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	15,
	'3.0L V6 TFSI',
	'340 CV'		
)
;



-- MOTOR 16: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	16,
	'4.0L V8 BI TURBO FSI',
	'600 CV'		
)
;



-- MOTOR 17: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	17,
	'2.0L TURBO FSI',
	'230 CV'		
)
;



-- MOTOR 18: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	18,
	'2.0L TURBO',
	'184 CV'		
)
;



-- MOTOR 19: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	19,
	'6 Cilindros em Linha, 3.0L Twin Turbo',
	'411 CV'		
)
;



-- MOTOR 20: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	20,
	'6 Cilindros em Linha, 3.0L Twin Turbo',
	'460 CV'		
)
;




-- MOTOR 21: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	21,
	'4.4L V8 Twin Turbo',
	'625 CV'		
)
;




-- MOTOR 22: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	22,
	'4.4L V8 Twin Turbo',
	'530 CV'		
)
;




-- MOTOR 23: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	23,
	'2.0L Turbo',
	'194 CV'		
)
;




-- MOTOR 24: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	24,
	'6 Cilindros em Linha, 3.0L Twin Turbo + Elétrico',
	'394 CV'		
)
;




-- MOTOR 25: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	25,
	'5.2L V12 Turbo',
	'608 CV'		
)
;




-- MOTOR 26: 
insert into tb_motor
(
	cod_motor,
	motor_veiculo,
	potencia_cv
)
values
(	
	26,
	'6.0L V12 BI TURBO',
	'659 CV'		
)
;


-- CARRO 01: Lamborghini Urus

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	1,
	'URUS',
	1,
	'7GEUR19F00G002158',
	2020,
	3140000.00,
	1,
	1,
	4,
	3,
	1,
	TRUE,
	FALSE			
)
;

-- CARRO 02: Lamborghini Aventador

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	2,
	'AVENTADOR',
	1,
	'7GEAV19F09G000623',
	2019,
	6800000.00,
	2,
	2,
	1,
	2,
	1,
	TRUE,
	FALSE			
)
;

-- CARRO 03: Lamborghini Murcielago

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	3,
	'MURCIELAGO',
	1,
	'7GEMU19F05G000759',
	2015,
	3800000.00,
	3, 
	3, 
	1, 
	1,
	1, 
	TRUE,
	FALSE			
)
;

-- CARRO 04: Ferrari 458 Spider

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	4,
	'458 SPIDER',
	2,
	'3ITSP19F03G000159',
	2013,
	2500000.00,
	4, 
	4, 
	1, 
	2,
	2,
	TRUE,
	FALSE			
)
;

-- CARRO 05: Ferrari Roma

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	5,
	'ROMA',
	2,
	'3ITRO19F01G000119',
	2021,
	3600000.00,
	5,
	5,
	1,
	3,
	2,
	TRUE,
	TRUE			
)
;

-- CARRO 6: Ferrari Monza SP1

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	6,
	'MONZA SP1',
	2,
	'3ITRO19F00G000499',
	2020,
	10200000.00,
	1,
	6,
	1,
	2,
	2,
	TRUE,
	FALSE			
)
;

-- CARRO 7: Bugatti Chiron

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	7,
	'MONZA SP1',
	3,
	'4FIRO19F00G000499',
	2020,
	22000000.00,
	6,
	7,
	1,
	2,
	3, 
	TRUE,
	TRUE			
)
;

-- CARRO 8: Porsche 911 Turbo S

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	8,
	'911 TURBO S',
	4,
	'5GERO19F07G002110',
	2018,
	1500000.00,
	1,
	8,
	1,
	5,
	4,
	TRUE,
	FALSE			
)
;

-- CARRO 9: Porsche 911 GT3 RS

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	9,
	'911 GT3 RS',
	4,
	'5GERO19F09G000433',
	2019,
	2450000.00,
	1, -- cor
	9, -- motor
	1, -- combustivel
	5, -- cambio
	4,
	TRUE,
	FALSE			
)
;

-- CARRO 10: Porsche Cayenne Coupé

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	10,
	'CAYENNE COUPÉ',
	4,
	'5GERO19F01G000212',
	2021,
	1550000.00,
	7, -- cor
	10, -- motor
	4, -- combustivel
	3, -- cambio
	4,
	TRUE,
	FALSE			
)
;

-- CARRO 11: Porsche 911 Carrera 4S Cabriolet

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	11,
	'911 CARRERA 4S CABRIOLET',
	4,
	'5GERO19F01G002101',
	2021,
	1500000.00,
	5,
	11,
	1,
	5,
	4,
	TRUE,
	FALSE			
)
;

-- CARRO 12: Porsche Panamera 4s E-hybrid

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	12,
	'PANAMERA 4S',
	4,
	'5GERO19F01G002092',
	2021,
	1150000.00,
	6,
	12,
	4,
	5, 
	4,
	TRUE,
	FALSE			
)
;

-- CARRO 13: Tesla Model Y Performance

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	13,
	'MODEL Y PERFORMANCE',
	5,
	'1USRO19F01G001234',
	2021,
	730000.00,
	1,
	13,
	3,
	6,
	5,
	TRUE,
	FALSE			
)
;

-- CARRO 14: Audi R8 Coupé Performance

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	14,
	'R8 COUPÉ PERFORMANCE',
	6,
	'3GERO19F02G000230',
	2022,
	2090000.00,
	1,
	14,
	1,
	2,
	6,
	TRUE,
	FALSE			
)
;

-- CARRO 15: Audi Q8 Performance Black

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	15,
	'Q8 PERFORMANCE BLACK',
	6,
	'3GERO19F09G000200',
	2019,
	680000.00,
	5,
	15,
	1,
	3,
	6,
	TRUE,
	FALSE			
)
;

-- CARRO 16: Audi RS6 Avant

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	16,
	'RS6 AVANT',
	6,
	'3GERO19F01G000098',
	2021,
	1270000.00,
	1,
	16,
	1,
	3,
	6,
	TRUE,
	FALSE			
)
;

-- CARRO 17: Audi TT Attraction

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	17,
	'TT ATTRACTION',
	6,
	'3GERO19F06G010592',
	2016,
	260000.00,
	1,
	17,
	1,
	2,
	6,
	TRUE,
	FALSE			
)
;

-- CARRO 18: BMW 320i Active Flex M Sport

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	18,
	'320I ACTIVE',
	7,
	'1GERO19F08G019597',
	2018,
	240000.00,
	2,
	18,
	2,
	3,
	7,
	TRUE,
	FALSE			
)
;

-- CARRO 19: BMW M2 Competition

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	19,
	'M2 COMPETITION',
	7,
	'1GERO19F01G010520',
	2021,
	550000.00,
	1, 
	19,
	1,
	7,
	7,
	TRUE,
	FALSE			
)
;

-- CARRO 20: BMW M4 CS

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	20,
	'M4 CS',
	7,
	'1GERO19F09G009521',
	2019,
	790000.00,
	6, -- cor
	20, -- motor
	1, -- combustivel
	3, -- cambio
	7,
	TRUE,
	FALSE			
)
;

-- CARRO 21: BMW M8 Gran Coupé First Edition

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	21,
	'M8 GRAN COUPÉ',
	7,
	'1GERO19F01G000940',
	2019,
	1250000.00,
	8,
	21,
	1,
	3,
	7,
	TRUE,
	FALSE			
)
;

-- CARRO 22: BMW X7 M50i

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	22,
	'X7 M50I',
	7,
	'1GERO19F01G002228',
	2021,
	1180000.00,
	5, -- cor
	22, -- motor
	1, -- combustivel
	3, -- cambio
	7,
	TRUE,
	FALSE			
)
;

-- CARRO 23: BMW X1 Sdrive 20i Active Flex

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	23,
	'X1 SDRIVE 20I',
	7,
	'2GERO19F07G112861',
	2017,
	175000.00,
	2, -- cor
	23, -- motor
	2, -- combustivel
	3, -- cambio
	7, -- fornecedor
	TRUE,
	FALSE			
)
;

-- CARRO 24: BMW X5 Xdrive 45E M Sport

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	24,
	'X5 XDRIVE 45E M SPORT',
	7,
	'2GERO19F02G012432',
	2022,
	790000.00,
	1, -- cor
	24, -- motor
	4, -- combustivel
	3, -- cambio
	7, -- fornecedor
	TRUE,
	FALSE			
)
;

-- CARRO 25: Aston Martin DB11

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	25,
	'DB11',
	8,
	'2USRO19F01G000415',
	2021,
	3000000.00,
	5, -- cor
	25, -- motor
	1, -- combustivel
	4, -- cambio
	8, -- fornecedor
	TRUE,
	FALSE			
)
;

-- CARRO 26: Bentley Mulliner Bacalar

insert into tb_veiculo
(
	cod_veiculo,
	modelo_veiculo,
	cod_marca,
	numero_chassi,
	ano_veiculo,
	preco_veiculo,
	cod_cor,
	cod_motor,
	cod_combustivel,
	cod_cambio,
	cod_fornecedor,
	estoque,
	destaque
)
values
(	
	26,
	'MULLINER BACALAR',
	9,
	'8UKRO19F00G000012',
	2020,
	1350000.00,
	3, -- cor
	26, -- motor
	1, -- combustivel
	4, -- cambio
	9, -- fornecedor
	TRUE,
	FALSE			
)
;




-- TABELA CLIENTE
insert into tb_cliente
(	cod_cliente,
	tipo_documento, 
	numero_documento,
	nome_cliente, 
	data_nascimento,
	email_cliente,
	telefone_cliente,
	senha_cliente,
	inscricao_estadual,
	razao_social
)

values (	
	1, 
	'CPF',
	'55581798052',	
	'AUGUSTO FRANCO ALMADA',
	'1990-07-02',
	'RUDOLPH_BOLTON@GMAIL.COM',
	'1621641550',
    md5('o24dHNrn'),
	null,
	null
)
;

-- SELECT *FROM TB_CLIENTE;

insert into tb_cliente
(	cod_cliente,
	tipo_documento, 
	numero_documento,
	nome_cliente, 
	data_nascimento,
	email_cliente,
	telefone_cliente,
	senha_cliente,
	inscricao_estadual,
	razao_social
) values (	
	3, 
	'CPF',
	'31930902042',	
	'CARMEN MIEIRO INES',
	'1983-02-05',
	'CAR_BLAKE@GMAIL.COM',
	'11995847267',
	md5('qBLZN9Qb'),
	null,
	null
)
;


insert into tb_cliente
(	cod_cliente,
	tipo_documento, 
	numero_documento,
	nome_cliente, 
	data_nascimento,
	email_cliente,
	telefone_cliente,
	senha_cliente,
	inscricao_estadual,
	razao_social
) values (	
	5, 
	'CPF',
	'25457623009',	
	'ARIANE SAUDE GUEDELHA',
	'1969-12-09',
	'CARMEND_DS@OUTLOOK.COM',
	'12985375316',
	md5('sMAGQpJJ'),
	null,
	null
)
;


insert into tb_cliente
(	cod_cliente,
	tipo_documento, 
	numero_documento,
	nome_cliente, 
	data_nascimento,
	email_cliente,
	telefone_cliente,
	senha_cliente,
	inscricao_estadual,
	razao_social
) values (	
	7, 
	'CPF',
	'88957316035',	
	'DANIEL PESEIRO SALOIO',
	'1989-09-01',
	'DANIELPSALOIO@YAHOO.COM',
	'11963348271',
	md5('wzE1YJB8'),
	null,
	null
)
;



insert into tb_cliente
(	cod_cliente,
	tipo_documento, 
	numero_documento,
	nome_cliente, 
	data_nascimento,
	email_cliente,
	telefone_cliente,
	senha_cliente,
	inscricao_estadual,
	razao_social
) values (	
	9, 
	'CPF',
	'36238685077',	
	'RAPHAEL MENA RIBEIRO',
	'1997-07-04',
	'RAPHMENA@GMAIL.COM',
	'11938120144',
	md5('DS3L2J5y'),
	null,
	null
)
;




insert into tb_cliente
(	cod_cliente,
	tipo_documento, 
	numero_documento,
	nome_cliente, 
	data_nascimento,
	email_cliente,
	telefone_cliente,
	senha_cliente,
	inscricao_estadual,
	razao_social
) values (	
	2, 
	'CNPJ',
	'38433579000159',	
	null,
	null,
	'FABRICACAO@MARCELOCORRETORES.COM.BR',
	'1123355721',
	md5('9pJpWWDk'),
	'038538569199',
	'MARCELO CORRETORES ASSOCIADOS ME'
)
;



insert into tb_cliente
(	cod_cliente,
	tipo_documento, 
	numero_documento,
	nome_cliente, 
	data_nascimento,
	email_cliente,
	telefone_cliente,
	senha_cliente,
	inscricao_estadual,
	razao_social
) values (	
	4, 
	'CNPJ',
	'46316444000131',	
	null,
	null,
	'LUCIAELETRONICA@YAHOO.COM.BR',
	'1825616127',
	md5('7Eu1hSlZ'),
	'816601200893',
	'LUCIA ELETRONICA ME'
)
;


insert into tb_cliente
(	cod_cliente,
	tipo_documento, 
	numero_documento,
	nome_cliente, 
	data_nascimento,
	email_cliente,
	telefone_cliente,
	senha_cliente,
	inscricao_estadual,
	razao_social
) values (	
	6, 
	'CNPJ',
	'00020578000100',	
	null,
	null,
	'LOCACOES@DLLAUTO.COM.BR',
	'112583229',
	md5('WT9WRk5g'),
	'950709614887',
	'DLL LOCACOES DE AUTOMOVEIS LTDA'
)
;


insert into tb_cliente
(	cod_cliente,
	tipo_documento, 
	numero_documento,
	nome_cliente, 
	data_nascimento,
	email_cliente,
	telefone_cliente,
	senha_cliente,
	inscricao_estadual,
	razao_social
) values (	
	8, 
	'CNPJ',
	'63930066000101',	
	null,
	null,
	'ALIMENTOS@ANALULTDA.COM.BR',
	'1223216509',
	md5('ueeperHo'),
	'297925752340',
	'ANALU ALIMENTOS LTDA'
)
;



insert into tb_cliente
(	cod_cliente,
	tipo_documento, 
	numero_documento,
	nome_cliente, 
	data_nascimento,
	email_cliente,
	telefone_cliente,
	senha_cliente,
	inscricao_estadual,
	razao_social
) values (	
	10, 
	'CNPJ',
	'63430053000162',	
	null,
	null,
	'FINANCEIRO@THALESADVOCACIA.COM.BR',
	'1124286774',
	md5('2MksTQqP'),
	'219720561199',
	'THALES ADVOCACIA LTDA'
)
;

	
insert into tb_endereco
(
	cod_endereco,
	cep_endereco,
	rua_endereco,
	complemento,
	numero_endereco,
	bairro,
	cidade,
	uf
) values (
	1,
	'03145050',
	'RUA RIO DO PEIXE',
	null, 
	194,
	'VILA LUCIA',
	'SAO PAULO',
	'SP'
);



insert into tb_endereco
(
	cod_endereco,
	cep_endereco,
	rua_endereco,
	complemento,
	numero_endereco,
	bairro,
	cidade,
	uf
) values (
	2,
	'01046926',
	'AVENIDA SAO LUIS',
	'APT 121',
	'186',
	'REPUBLICA',
	'SAO PAULO',
	'SP'	
);


insert into tb_endereco
(
	cod_endereco,
	cep_endereco,
	rua_endereco,
	complemento,
	numero_endereco,
	bairro,
	cidade,
	uf
) values (
	3,
	'08474360',
	'RUA FAUSTO CARLOS BARRETO',
	null,
	'878',
	'JARDIM PEROLA',
	'SAO PAULO',
	'SP'	
);



insert into tb_endereco
(
	cod_endereco,
	cep_endereco,
	rua_endereco,
	complemento,
	numero_endereco,
	bairro,
	cidade,
	uf
) values (
	4,
	'05352095',
	'RUA TENENTE-AVIADOR GUSTAVO KLUG',
	'apt 404',
	'568',
	'VILA SAO FRANCISCO',
	'SAO PAULO',
	'SP'	
);


insert into tb_endereco
(
	cod_endereco,
	cep_endereco,
	rua_endereco,
	complemento,
	numero_endereco,
	bairro,
	cidade,
	uf
) values (
	5,
	'08191220',
	'RUA CURIMATA',
	null,
	'574',
	'JARDIM ROMANO',
	'SAO PAULO',
	'SP'
);


insert into tb_endereco
(
	cod_endereco,
	cep_endereco,
	rua_endereco,
	complemento,
	numero_endereco,
	bairro,
	cidade,
	uf
) values (
	6,
	'08090278',
	'RUA VITORIA',
	null,
	'588',
	'CHACARA TRES MENINAS',
	'SAO PAULO',
	'SP'	
);


insert into tb_endereco
(
	cod_endereco,
	cep_endereco,
	rua_endereco,
	complemento,
	numero_endereco,
	bairro,
	cidade,
	uf
) values (
	7,
	'05054000',
	'RUA MOTA PAIS',
	null,
	'906',
	'VILA IPOJUCA',
	'SAO PAULO',
	'SP'	
);


insert into tb_endereco
(
	cod_endereco,
	cep_endereco,
	rua_endereco,
	complemento,
	numero_endereco,
	bairro,
	cidade,
	uf
) values (
	8,
	'05396440',
	'RUA ADRIANO SILVA',
	null,
	'184',
	'PARQUE DOS PRINCIPES',
	'SAO PAULO',
	'SP'	
);


insert into tb_endereco
(
	cod_endereco,
	cep_endereco,
	rua_endereco,
	complemento,
	numero_endereco,
	bairro,
	cidade,
	uf
) values (
	9,
	'05027007',
	'TRAVESSA ELIAS UBAID KULAIF',
	null,
	'12',
	'VILA ANGLO BRASILEIRA',
	'SAO PAULO',
	'SP'	
);


insert into tb_endereco
(
	cod_endereco,
	cep_endereco,
	rua_endereco,
	complemento,
	numero_endereco,
	bairro,
	cidade,
	uf
) values (
	10,
	'02920160',
	'RUA DA MARCHINHA',
	null,
	'465',
	'VILA PEREIRA BARRETO',
	'SAO PAULO',
	'SP'	
);

insert into tb_endereco
(
	cod_endereco,
	cep_endereco,
	rua_endereco,
	complemento,
	numero_endereco,
	bairro,
	cidade,
	uf
) values (
	11,
	'01430001',
	'AVENIDA BRASIL',
	null,
	'1769',
	'JARDIM AMERICA',
	'SAO PAULO',
	'SP'	
);


-- alter table tb_endereco  add bairro varchar(30) not null;

-- TABELA ENDERECO_CLIENTE


insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	1,
	1
	
);


insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	2,
	2
);



insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	3,
	3
);



insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	4,
	4
);



insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	5,
	5
);



insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	6,
	6
);



insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	7,
	7
);




insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	8,
	8
);




insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	9,
	9
);




insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	10,
	10
);




insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	1,
	8
);




insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	2,
	7
);




insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	10,
	6
);




insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	4,
	9
);




insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	6,
	10
);



insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	2,
	8
);




insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	10,
	3
);




insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	4,
	5
);




insert into tb_endereco_cliente
(
	cod_cliente,
	cod_endereco
) values (
	9,
	1
);


insert into tb_modalidade_cartao 
values
	(1,
	'Crédito'
);

insert into tb_modalidade_cartao
values
	(2, 'Débito'
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade
)

values
	(1, 
	'ALBERTO D SANTOS',
	'5594582092720802', 
	'09/22', 
	'800', 
	1
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade
)

values
	(2, 
	'CAROLINA F CAMARGO',
	'5355138939412928', 
	'07/23', 
	'719', 
	1
);



insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade
)

values
	(3, 
	'JOSE SILVA',
	'5355138939094994', 
	'07/27', 
	'188', 
	2
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade
)

values
	(4, 
	'BARBARA V T',
	'5472510834167914',  
	'11/24', 
	'583', 
	2
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade
)

values
	(5, 
	'JONAS RAMALHO',
	'5472510834134200',  
	'12/26', 
	'301', 
	2
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade
)

values
	(6, 
	'RODRIGO ARAUJO',
	'5472510834149876',  
	'11/28', 
	'555', 
	2
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade
)

values
	(7, 
	'LUIZ CLAUDIO',
	'5472510834167000',  
	'09/29', 
	'101', 
	1
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade
)

values
	(8, 
	'JORGE MENDES',
	'5472510834167547',  
	'11/30', 
	'589', 
	1
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade
)

values
	(9, 
	'CRISTIANO RONALDO',
	'5472510834161222',  
	'03/25', 
	'150', 
	2
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade
)

values
	(10, 
	'LIONEL MESSI',
	'5472108341679999',  
	'11/29', 
	'788', 
	2
);


-- INSERT AGENDAMENTO

insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento
)
values
(
	1,
	1,
	1,
	'2022-05-02',	
	'5000.00'
);




insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento
)
values
(
	2,
	1,
	2,
	'2022-08-09',	
	'5000.00'
);




insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento
)
values
(
	3,
	2,
	2,
	'2022-07-01',	
	'5000.00'
);





insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento
)
values
(
	4,
	2,
	2,
	'2022-09-03',	
	'6000.00'
);




insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento
)
values
(
	5,
	5,
	5,
	'2022-08-12',	
	'7000.00'
);

-- INSERTS FAVORITO

insert into tb_favorito
(
	cod_favorito,
	cod_cliente 
)
values
(	1,
	1
);


insert into tb_favorito
(
	cod_favorito,
	cod_cliente 
)
values
(	2,
	1
);


insert into tb_favorito
(
	cod_favorito,
	cod_cliente 
)
values
(	3,
	1
);


insert into tb_favorito
(
	cod_favorito,
	cod_cliente 
)
values
(	4,
	5
);


insert into tb_favorito
(
	cod_favorito,
	cod_cliente 
)
values
(	5,
	6
);


insert into tb_favorito
(
	cod_favorito,
	cod_cliente 
)
values
(	6,
	8
);


insert into tb_favorito
(
	cod_favorito,
	cod_cliente 
)
values
(	7,
	3
);


insert into tb_favorito
(
	cod_favorito,
	cod_cliente 
)
values
(	8,
	1
);

insert into tb_favorito
(
	cod_favorito,
	cod_cliente 
)
values
(	9,
	7
);

insert into tb_favorito
(
	cod_favorito,
	cod_cliente 
)
values
(	10,
	2
);


insert into tb_favorito_veiculo 
(
	cod_veiculo,
	cod_favorito
)

	values
(	1,
	3
);



insert into tb_favorito_veiculo 
(
	cod_veiculo,
	cod_favorito
)

	values
(	1,
	4
);



insert into tb_favorito_veiculo 
(
	cod_veiculo,
	cod_favorito
)

	values
(	2,
	2
);



insert into tb_favorito_veiculo 
(
	cod_veiculo,
	cod_favorito
)

	values
(	4,
	5
);



insert into tb_favorito_veiculo 
(
	cod_veiculo,
	cod_favorito
)

	values
(	5,
	1
);


insert into tb_favorito_veiculo 
(
	cod_veiculo,
	cod_favorito
)

	values
(	6,
	9
);


insert into tb_favorito_veiculo 
(
	cod_veiculo,
	cod_favorito
)

	values
(	7,
	10
);



insert into tb_favorito_veiculo 
(
	cod_veiculo,
	cod_favorito
)

	values
(	9,
	6
);


insert into tb_favorito_veiculo 
(
	cod_veiculo,
	cod_favorito
)

	values
(	1,
	8
);



insert into tb_favorito_veiculo 
(
	cod_veiculo,
	cod_favorito
)

	values
(	5,
	7
);


-- INSERT LOJA

insert into tb_loja
(
	cod_loja,
	razao_social_loja,
	cnpj_loja,
	telefone_loja,
	cod_endereco
)
values
(
	1,
	'DEVCARS',
	'13068160000114',
	'1137695678',
	11
);


-- INSERT NATUREZA OPERACAO

insert into tb_natureza_operacao 
(
	cod_natureza_operacao,
	descricao_natureza_operacao
)
values
(
	1,
	'NOTA FISCAL DE VENDA'
);


insert into tb_natureza_operacao 
(
	cod_natureza_operacao,
	descricao_natureza_operacao
)
values
(
	2,
	'NOTA FISCAL COMPLEMENTAR'
);


insert into tb_natureza_operacao 
(
	cod_natureza_operacao,
	descricao_natureza_operacao
)
values
(
	3,
	'NOTA FISCAL RETORNO'
);


insert into tb_natureza_operacao 
(
	cod_natureza_operacao,
	descricao_natureza_operacao
)
values
(
	4,
	'NOTA FISCAL DEVOLUCAO'
);


insert into tb_natureza_operacao 
(
	cod_natureza_operacao,
	descricao_natureza_operacao
)
values
(
	5,
	'NOTA FISCAL REMESSA'
);



insert into tb_natureza_operacao 
(
	cod_natureza_operacao,
	descricao_natureza_operacao
)
values
(
	6,
	'NOTA FISCAL ENTREGA FUTURA'
);


insert into tb_natureza_operacao 
(
	cod_natureza_operacao,
	descricao_natureza_operacao
)
values
(
	7,
	'NOTA FISCAL VENDA CONSIGNADA'
);

-- INSERT FRETE

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	1,
	'AC',
	52000.00
)
;

-- delete from tb_frete where cod_frete = 1;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	2,
	'AL',
	37000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	3,
	'AP',
	56000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	4,
	'AM',
	53000.00
)
;


insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	5,
	'BA',
	34000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	6,
	'CE',
	44000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	7,
	'DF',
	30000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	8,
	'ES',
	29000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	9,
	'GO',
	32000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	10,
	'MA',
	44000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	11,
	'MT',
	35000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	12,
	'MS',
	26000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	13,
	'MG',
	29000.00
)
;


insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	14,
	'PA',
	45000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	15,
	'PB',
	37000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	16,
	'PR',
	24000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	17,
	'PE',
	36000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	18,
	'PI',
	36000.00
)
;


insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	19,
	'RJ',
	26000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	20,
	'RN',
	45000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	21,
	'RS',
	28000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	22,
	'RO',
	38000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	23,
	'RR',
	55000.00
)
;


insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	24,
	'SC',
	25000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	25,
	'SP',
	23000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	26,
	'SE',
	35000.00
)
;

insert into tb_frete
(
	cod_frete,
	unidade_federativa,
	valor_frete
)
values
(
	27,
	'TO',
	36000.00
)
;

-- INSEERT STATUS


insert into tb_status
(
	cod_status,
	status
)
values
(
	1,
	'cancelado'
);



insert into tb_status
(
	cod_status,
	status
)
values
(
	2,
	'entregue'
);



insert into tb_status
(
	cod_status,
	status
)
values
(
	3,
	'em rota'
);



-- INSERT BOLETO

insert into tb_boleto
(
	cod_boleto,
	numero_cod_barra
)
values
(
	1,
	'000011112220302020202020102029876'
);



insert into tb_boleto
(
	cod_boleto,
	numero_cod_barra
)
values
(
	2,
	'000000000154553333020202029898777'
);


insert into tb_boleto
(
	cod_boleto,
	numero_cod_barra
)
values
(
	3,
	'000000000111122203333020202076233'
);


insert into tb_boleto
(
	cod_boleto,
	numero_cod_barra
)
values
(
	4,
	'000001675039484847323134444444354'
);




-- INSERT FORMA DE PAGAMENTO


insert into tb_forma_pagamento
(
	cod_forma_pagamento,
	descricao_forma_pagamento,
	cod_cartao,
	cod_boleto
)
values
(
	1,
	'CREDITO',
	1,
	null
	
	
);

insert into tb_forma_pagamento
(
	cod_forma_pagamento,
	descricao_forma_pagamento,
	cod_cartao,
	cod_boleto
)
values
(
	2,
	'DEBITO',
	2,
	null
);

insert into tb_forma_pagamento
(
	cod_forma_pagamento,
	descricao_forma_pagamento,
	cod_cartao,
	cod_boleto
)
values
(
	3,
	'BOLETO',
	null,
	1
	
	
);

insert into tb_forma_pagamento
(
	cod_forma_pagamento,
	descricao_forma_pagamento,
	cod_cartao,
	cod_boleto
)
values
(
	4,
	'PIX',
	null,
	null
);


insert into tb_pedido
(
	
	cod_pedido, 
	cod_cliente,
	cod_forma_pagamento,
	cod_frete, 
	valor_total_pedido, 
	data_pedido, 
	previsao_entrega,
	data_envio, 
	cod_endereco_cliente, 
	cod_status 
)
values
(
	1,
	1,
	1, 
	25,
	263000.00,
	'2021-10-09',
	15,
	'2021-10-25',
	1,
	1
	
);



insert into tb_pedido
(
	
	cod_pedido, 
	cod_cliente,
	cod_forma_pagamento,
	cod_frete, 
	valor_total_pedido, 
	data_pedido, 
	previsao_entrega,
	data_envio, 
	cod_endereco_cliente, 
	cod_status 
)
values
(
	2,
	3,
	2, 
	25,
	753000.00,
	'2022-01-10',
	15,
	'2022-01-26',
	1,
	2
	
);


insert into tb_item_pedido
(
	cod_veiculo,
	cod_pedido

)

values(
	18,
	1
);


insert into tb_item_pedido
(
	cod_veiculo,
	cod_pedido

)

values(
	13,
	2
);




insert into tb_cabecalho_nf 
(
		cod_nota,
		cod_cliente,
		cod_loja,
		cod_natureza_operacao,
		numero_nota,
		chave_acesso,
		numero_serie,
		valor_total_nf,
		data_emissao_nf,
		cod_pedido,
		cod_frete

)

values (

	1,
	1,
	1,
	'1',
	'1',
	'3521026158586518429555001000931209120210',
	1,
	263000.00,
	'2021-10-09',
	1,
	25
	
);


insert into tb_cabecalho_nf 
(
		cod_nota,
		cod_cliente,
		cod_loja,
		cod_natureza_operacao,
		numero_nota,
		chave_acesso,
		numero_serie,
		valor_total_nf,
		data_emissao_nf,
		cod_pedido,
		cod_frete

)

values (

	2,
	3,
	1,
	'1',
	'1',
	'3521026158586518429555001000931209120218',
	1,
	753000.00,
	'2022-01-10',
	2,
	25
	
);

insert into tb_item_nf 
(
		cod_iten_nf,
		cod_nota,
		preco_veiculo,
		percentual_icms,
		valor_icms


)

values(
	
	1,
	1,
	230000.00,
	20.00,
	46000.00

);


insert into tb_item_nf 
(
		cod_iten_nf,
		cod_nota,
		preco_veiculo,
		percentual_icms,
		valor_icms


)

values(
	
	2,
	2,
	753000.00,
	20.00,
	150600.00

);

	


-- update tb_pedido set data_envio = '2021-10-25', previsao_entrega = 15 where cod_pedido = 1; 
 -- alter table tb_item_nf alter column percentual_icms decimal(4,2);

-- select * from tb_fornecedor tf ;
 select * from tb_combustivel tc ;
select * from tb_cambio tc ;
-- select * from tb_cor tc ;
 select * from tb_marca tm ;
-- select * from tb_motor tm ;
 select * from tb_veiculo tv ;
 -- select * from tb_cliente tc ;
-- select * from tb_endereco te ;
-- select * from tb_endereco_cliente tec ;
-- select * from tb_modalidade_cartao tmc ;
-- select * from tb_cartao tc ;
-- select * from tb_agendamento ta ;
-- select * from tb_favorito tf ;
-- select * from tb_favorito_veiculo tfv ;
-- select * from tb_loja tl ;
-- select * from tb_natureza_operacao tno ;
-- select * from tb_frete tf ;

-- select * from tb_item_nf tin  ;
