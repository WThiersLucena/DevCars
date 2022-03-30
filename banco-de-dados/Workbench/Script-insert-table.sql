INSERT INTO login VALUES(1, "augusto.meireles@devcars.com", "augusto", "Augusto");
INSERT INTO login VALUES(2,"guilherme.viana@devcars.com", "guilherme", "Guilherme");
INSERT INTO login VALUES(3, "larissa.bandeira@devcars.com", "larissa", "Larissa");
INSERT INTO login VALUES(4,"lidia.maciel@devcars.com", "lidia", "Lidia");
INSERT INTO login VALUES(5, "wanderson.thiers@devcars.com", "wanderson", "Wanderson");

insert into tb_fornecedor 
(
	cod_fornecedor, 
	cnpj,
	razao_social,
	inscricao_estadual,
	email_fornecedor,
	telefone_fornecedor,
	seAtivo
)
values
(
	1, 
	'82947905000138', 
	'Ferrari Corporation',
	'573366418821', 
	'contact@ferrari.com',
	'1238853887',
	true);


insert into tb_fornecedor
values
(
	2, 
	'36783028000190',
	'Porsche S/A', 
	'409098034501',
	'contact@porsche.com',
	'1627779995',
	true);

insert into tb_fornecedor 
values
(
	3,
	'91563408000127', 
	'Bugatti Corporation',
	'129622047629', 
	'suport@bugatti.com', 
	'1137420701',
	true);

insert into tb_fornecedor 
values
(
	4,
	'95748659000137',
	'Lamborghini S/A', 
	'735189620663', 
	'contact@lamborghini.com', 
	'1127200490',
	true);

insert into tb_fornecedor
values
(
	5,
	'55550198000179', 
	'Tesla S/A',
	'114140200278', 
	'tesla.contact@tesla.com', 
	'1937305738',
	true); 

insert into tb_fornecedor
values
(
	6,
	'70850075000147', 
	'BMW Associação', 
	'992561270210',
	'bmw@bmw.com', 
	'1627966899',
	true); 

insert into tb_fornecedor
values
(
	7,
	'01413153000123',
	'Audi Corporation',
	'919010418657',
	'audi@contact.com', 
	'1127164661',
	true);

insert into tb_fornecedor 
values
(
	8,
	'24214899000103',
	'Aston Martin S/A',
	'397050906330',
	'aston.martin@vendas.com',
	'1835143625',
	true); 

insert into tb_fornecedor
values
(
	9,
	'68505573000100', 
	'Bentley S/A', 
	'643892335660', 
	'bentleyBrasil@contact.com', 
	'1139023507',
	true); 

insert into tb_fornecedor 
values
(
	10,
	'77981285000113', 
	'Mercedes Corporation',
	'381346058602',
	'contact@mercedes.com',
	'1137125953',
	true); 


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

-- COMBUSTIVEL 4: HÃ­brido

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


-- CAMBIO 1: AutomÃ¡tico 6 marchas

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

-- CAMBIO 2: AutomÃ¡tico 7 marchas

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

-- CAMBIO 3: AutomÃ¡tico 8 marchas

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

-- CAMBIO 4: AutomÃ¡tico 9 marchas

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

-- CAMBIO 6: AutomÃ¡tico de 1 Velocidade

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

-- MARCA 9: Mercedes

insert into tb_marca
(
	cod_marca,
	marca_veiculo
)
values
(	
	10,
	'MERCEDES'		
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
	'4.0L V8 BI TURBO + ELÉTRICO',
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false, 
	true,
    'https://i.ibb.co/LY2mvYs/Lamborghini-Urus.jpg',
    'O Lamborghini Urus está equipado com motor 4.0 V8 biturbo, com 650 cv de potência a 6.000 rpm e torque máximo de 86.675 kgfm entre 2.250 e 4.500 rpm. A transmissão é automática de 8 velocidades, e a tração integral permanente, sendo que o torque é direcionado especialmente às rodas traseiras'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/MBsGZYN/Lamborghini-Aventor.jpg',
    'O Aventador tem um desempenho estimado para fazer 0–100 km/h em 2,9 segundos e velocidade máxima limitada é de 350 km/h. e oficial de 370 km/h registrada pela revista sport auto magazine. É equipado com um motor 6.5 V12 que gera 700 cavalos de potência com o uso intensivo em fibra de carbono.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/LphjJRt/Lamborghini-Murcielago.jpg',
    'O Murciélago LP 670-4 Super Veloce é equipado com motor de 6.5 litros V12 que gera potência de 670 cv. A relação peso-potência é de 2,3 kg por cavalo, o que permite impulsioná-lo de 0 a 100 km/h em apenas 2,8 segundos. A velocidade máxima informada pela marca italiana é de 342 km/h.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/MVKTVy9/Ferrari-458spider.jpg',
    'É a opção de um roadster de alta performance dentro da gama Ferrari. Uma opção para quem quer andar rápido e com muito estilo. Comparando as versões cupê e conversível da 458, a segunda só perde um pouco em velocidade máxima (320 km/h contra 325 km/h da 458 Italia).'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	true,
	TRUE,
    'https://i.ibb.co/47Nd6gS/Ferrari-Roma.jpg',
    'Este motor produz uma potência máxima de 620 CV às 5750-7500 rotações e um torque máximo de 760 Nm às 3000-5750 rotações. A potência é transmitida à estrada através de um câmbio Dualclutch Automatic de 8 marchas, e o tipo de tração é traseira (RWD).'
)
;

-- CARRO 6: Ferrari Monza SP2

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
	destaque,
	seAtivo,
    imagem,
    descricao
)
values
(	
	6,
	'MONZA SP2',
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
	false,
	TRUE,
    'https://i.ibb.co/vHnLYZ3/Ferrari-monza-Sp1.jpg',
    'Derivado do Ferrari 812 Superfast, o Monza SP2 (assim como o seu irmão com apenas um lugar, o Monza SP1) conta com o mesmo V12 de 6.5 l naturalmente aspirado usado pelo 812 Superfast mas com mais 10 cv, oferecendo um total de 810 cv às 8500 rpm. Apresentado pela Ferrari como a “barcheta” com melhor relação peso-potência (a par do Monza SP1), o Monza SP2 apresenta um peso a seco na casa dos 1520 kg. Já quanto às prestações, os 100 km/h chegam em 2,9s e os 200 km/h em apenas 7,9s.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
)
values
(	
	7,
	'CHIRON',
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
	true,
	TRUE,
    'https://i.ibb.co/ZWXBZvf/Bugatti-Chiron.png',
    'O Chiron tem agora 1500 cavalos de potência e 163,1 kgf. m (1.600 N.m) de torque iniciando a 2.000 rpm. Como o Veyron, a carroceria é de fibra de carbono, a suspensão é independente e a tração é integral. Acelera de 0-100 km/h em 2,5 segundos, 0-200 km/h em menos de 6,5 segundos e 0-300 km/h em menos de 13,6 segundos.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/pLr3WmS/Porsche-911-Turbo-S.jpg',
    'Tudo no novo 911 Turbo passa pelo motor seis cilindros boxer 3.8 litros com dois turbocompressores maiores, simétricos e de geometria variável. Além dos 580 cv (70 cv a mais que o antecessor), o modelo ainda produz nada menos que 81,5 kgfm de torque (5,1 kgfm extras). O zero a 100 km/h melhorou 0,2 s em relação a geração passada (991) e é 0,1 s mais rápido que o atual GT2 RS, uma das versões mais hardcore do 911.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/yqrx9H0/Porsche-GT3-RS.jpg',
    'O 911 GT3 RS é incansável na busca por novas fronteiras de desempenho. 100% focado na performance esportiva, ele alcança 460 Nm a 6.250 rpm, com uma potência máxima de 500 hp a 8.250 rpm. Tanto potencial de giro é possibilitado principalmente pelas bielas de titânio super-leves.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/nc49xYq/Porsche-cayenne-Coupe.jpg',
    'O coração bate à velocidade máxima no Cayenne Turbo S E-Hybrid. A impressionante potência da tecnologia híbrida oferece, graças ao conceito de propulsão dual, a mais forte motorização da série.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
)
values
(	
	11,
	'911 4S CABRIOLET',
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
	false,
	TRUE,
    'https://i.ibb.co/xDZK84C/Porsche-carrera-Cabriolet.jpg',
    'A potência do motor: 309 kW (420 CV) e um impressionante torque máximo de 500 Nm. Ele já está presente a 1.700 rpm. Com o sistema Porsche Doppelkupplung (PDK) e o Launch Control, o 911 Carrera Cabriolet S salta para 100 km/h em apenas 3,9 s. A propulsão só termina a 306 km/h.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/dtd6c8Y/Porsche-Panamera-4-ES-Preto.jpg',
    'O Porsche Panamera 4S tem o mesmo motor de 400 cavalos, mas vêm equipado com tração integral. Ele acelera de 0-100 em 5 segundos e vai até 282 km/h. Seu consumo é de mais ou menos 9 km/l. Os novíssimos motores V6 biturbo do Panamera 4S e V8 biturbo do Panamera Turbo são mais compactos e mais leves do que os modelos anteriores e estão equipados com VarioCam Plus. Os seus 2 turbocompressores estão agora instalados entre os bancos de cilindros. Dessa forma, o fluxo de gases de escape chega mais rapidamente ao compressor para uma capacidade de resposta mais rápida.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/7Vd456g/Tesla-model-Y.png',
    'Totalmente elétrico e conectado, o Model Y é um utilitário esportivo para cinco pessoas, mas pode levar sete ocupantes com dois bancos retráteis no porta-malas. O Model Y LR vai de 0 a 100 km/h em 5,1 segundos e o Performance o faz em 3,7 segundos. A autonomia é de até 531 km no LR e 488 km no Performance.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/4mWfvpr/audi-r8-coupe.jpg',
    'Esse modelo é o Audi R8, vendido no Brasil em versão única Coupé Quatro S Tronic. O esportivo é equipado com o motor 5.2 V10, de 610 cv de potência e torque de 59,1 kgfm. Essa verdadeira usina de força é capa de levar o Audi R8 a 330 km/h de velocidade máxima e completar a aceleração de 0 a 100 km/h em 3,1.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/hWkCP2s/audi-q8.jpg',
    'Com interior generoso e sistema operacional de última geração, ele é a opção ideal para quem busca um utilitário robusto e elegante. Seu sistema de tração permanente quattro garante o desempenho em terrenos difíceis, enquanto o motor 3.0 TFSI com tecnologia híbrida leve desenvolve 340 cv de potência e torque de 500 Nm. Na cidade, na estrada ou no campo, o novo Audi Q8 oferece uma performance superior à da concorrência, indo de 0 a 100 em 5,9 segundos. O Q8 traz sob o capô o motor 3.0 TFSI V6, que produz 340 cv de potência entre 5.000 e 6.400 rpm e torque de 51 kgfm de 1.370 a 4.500 rpm. O câmbio é automático de oito marchas e a tração, integral quattro.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/4NsPZDP/audi-r6avant.jpg',
    'O RS 6 Avant tem sua velocidade máxima limitada eletronicamente a 280 km/h, e por meio de item opcional pode chegar a até 305 km/h, o que adiciona ainda o sistema de freios de cerâmica. Com o sistema Dynamic Ride Control de série, o modelo promete condução firme, mais precisão e estabilidade.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	FALSE,
	TRUE,
    'https://i.ibb.co/G5mnYNh/audi-tt.jpg',
    'O motor 2.0 TFSI, turbinado e com injeção direta de combustível, agora rende 230 cavalos (19 cv a mais) e torque de 37,7 kgfm (2 kgfm a mais) entre 1600 e 4300 rpm. De carroceria compacta e relativamente leve (1335 kg), o TT tem bom desempenho: acelera de 0 a 100 km/h em 5,9 segundos e atinge a velocidade máxima de 250 km/h, limitada eletronicamente. Além disso, o consumo é bem razoável para um carro de sua categoria: 9,9 km/l na cidade e 12,7 km/l na estrada, resultados que, somados à emissão de 123,8 gramas de CO2/km rodado, renderam ao Audi a classificação A no Programa de Etiquetagem Veicular do Inmetro. Seu tanque de combustível comporta 50 litros, e o Start-Stop contribui para poupar gasolina ao desligar o motor em paradas. O câmbio S tronic possui dupla embreagem e sete marchas, podendo ser controlado manualmente pelos paddle-shifts atrás do volante.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/S0j5GSB/bmw-320i.jpg',
    'O BMW 320i 2018 é equipado com um motor 2.0 TwinPower Turbo ActiveFlex, que desenvolve 184 cavalos de potência e 30,6 kgfm de torque, a 1.350 rpm, com câmbio automático de oito marchas. Segundo dados da marca, o modelo consegue acelerar de 0 a 100 km/h em 7,1 segundos e alcançar velocidade máxima de 240 km/h.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/bvHHd2h/bmw-m2.jpg',
    'Tendo tração traseira, o BMW M2 vem com diferencial de deslizamento limitado e assim vai de 0 a 100 km/h em 4,3 segundos com máxima de 270 km/h. O consumo médio é de 7,6 km/l na cidade e 9,8 km/l na estrada. O M2 pode ainda ter uma caixa manual de seis marchas, que permite ao bólido atingir 100 km/h após 4,5 segundos.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/0CTPvwY/bmw-m4-azul.jpg',
    'A linha do carro conta com um motor 3.0 litros M TwinPower Turbo, com seis cilindros em linha, que consegue desenvolver 460 cavalos de potência, entre 5.500 e 7.300 rpm, e 56,1 kgfm de torque, disponível entre 1.800 e 5.500 giros.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/86wLWQr/bmw-m8-verde.jpg',
    'O BMW M8 é o veículo mais caro da marca alemã vendido no Brasil. Ele é também o veículo de topo da linha M com motor V8 4.4 bi-turbo de 625 cv e 76,5 kgfm de torque, gerenciado pela caixa automática de oito marchas e tração integral. O motor faz o veículo acelerar de 0 a 100 km/h em apenas 3,3 segundos e atingir uma velocidade máxima de 305 km/h.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/9y8RRL4/bmw-x7.jpg',
    'Vendido no Brasil na versão única M Sport XDrive50i, o SUV usa motor 4.4 V8 a gasolina, de 462 cv e 66,3 kgfm de torque. Ele chega a 250 km/h e acelera de 0 a 00 km/h em 5,4 segundos. O consumo é de 6 km/l na cidade e 7,6 km/l na estrada.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/M9bXvZw/bmw-x1.jpg',
    'O motor modular B48 2.0 TwinPower Turbo é elogiável, mesmo sendo flex. Ele entrega 194 cv a 5.000 rpm e 35,7 kgfm a partir de 1.250 rpm, seja lá qual for o combustível, fazendo 9,8 km/litro na cidade e 13,1 km/litro na estrada.'
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
	destaque,
	seAtivo,
    imagem,
    descricao
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
	false,
	TRUE,
    'https://i.ibb.co/n09d6rQ/bmw-x5.jpg',
    'BMW X5 xDrive45e M Sport 2022 – motor 3.0 de seis cilindros e propulsor elétrico, totalizando 394 cv e 61,2 kgfm de torque, com câmbio automático de oito marchas e tração integral. O modelo oferece um motor longitudinal, com turbocompressor, injeção direta e seis cilindros em linha, que dispõe de 286 cv a 5.000 rpm e 45,9 kgfm de torque a 1.500 rpm, totalizando, em média, um consumo na cidade de 20,6 km/l e na estrada com alcance de 21.3km/l.'
)
;

-- CARRO 25: Mercedes AMG G63

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
	destaque,
	seAtivo,
    imagem,
    descricao
)
values
(	
	25,
	'AMG G63',
	10,
	'2USRO19F01G000415',
	2020,
	2050000.00,
	5, -- cor
	25, -- motor
	1, -- combustivel
	4, -- cambio
	10, -- fornecedor
	TRUE,
	false,
	TRUE,
    'https://i.ibb.co/zhm9LxP/Mercedes-AMG-G63-2020.jpg',
    'O 4x4 chega com motor 4.0 V8 biturbo, de 585 cv de potência e 86,7 kgfm de torque, acoplado ao câmbio automático Speedshift de nove velocidades. Ele acelera de 0 a 100 km/h em 4,5 segundos e chega a 220 km/h de velocidade máxima. o consumo do Mercedes G 63 AMG, que pesa 2.560 kg, é alto: 5,5 km/l na cidade e 6,8 km/l na estrada.'
)
;


-- CARRO 26: Bentley Continental GT

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
	destaque,
	seAtivo,
    imagem,
    descricao
)
values
(	
	26,
	'CONTINENTAL GT',
	9,
	'8UKRO19F00G000012',
	2020,
	900000.00,
	7, -- cor
	26, -- motor
	1, -- combustivel
	4, -- cambio
	9, -- fornecedor
	TRUE,
	false,
	TRUE,
    'https://i.ibb.co/HY3qcBc/Bentley-Continental-GT-2013.jpg',
    'O enorme motor W12 6.0 recebeu tratamento especial por parte da engenharia da Bentley. Ganhou 24 cv, passando de 635 para 659 cv e de 83,6 kgfm para 91,8 kgfm, suficientes para levar este Gran Tourer aos 335km/h de máxima e alcançar os 100 km/h em 3,5 segundos.'
)
;

-- select * from tb_veiculo;


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
	3, 
	'CPF',
	'31930902042',	
	'CARMEN MIEIRO INES',
	'1983-02-05',
	'CAR_BLAKE@GMAIL.COM',
	'11995847267',
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
	5, 
	'CPF',
	'25457623009',	
	'ARIANE SAUDE GUEDELHA',
	'1969-12-09',
	'CARMEND_DS@OUTLOOK.COM',
	'12985375316',
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
	7, 
	'CPF',
	'88957316035',	
	'DANIEL PESEIRO SALOIO',
	'1989-09-01',
	'DANIELPSALOIO@YAHOO.COM',
	'11963348271',
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
	9, 
	'CPF',
	'36238685077',	
	'RAPHAEL MENA RIBEIRO',
	'1997-07-04',
	'RAPHMENA@GMAIL.COM',
	'11938120144',
	md5('9pJpWWDk'),
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
	md5('3fJpiWDw'),
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
	'Credito'
);

insert into tb_modalidade_cartao
values
	(2, 'Debito'
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade,
	cod_cliente
	
)

values
	( 
	1, 
	'ALBERTO D SANTOS',
	'5594582092720802', 
	'09/22', 
	'800', 
	1,
	1
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade,
	cod_cliente 
)

values
	(
	2, 
	'CAROLINA F CAMARGO',
	'5355138939412928', 
	'07/23', 
	'719', 
	1,
	1
);



insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade,
	cod_cliente 
)

values
	(
	3, 
	'JOSE SILVA',
	'5355138939094994', 
	'07/27', 
	'188', 
	2,
	2
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade,
	cod_cliente 
)

values
	(
	4, 
	'BARBARA V T',
	'5472510834167914',  
	'11/24', 
	'583', 
	2,
	2
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade,
	cod_cliente 
)

values
	(
	5, 
	'JONAS RAMALHO',
	'5472510834134200',  
	'12/26', 
	'301', 
	2,
	2
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade,
	cod_cliente 
)

values
	(
	6, 
	'RODRIGO ARAUJO',
	'5472510834149876',  
	'11/28', 
	'555', 
	2,
	3
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade,
	cod_cliente 
)

values
	(
	7, 
	'LUIZ CLAUDIO',
	'5472510834167000',  
	'09/29', 
	'101', 
	1,
	1
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade,
	cod_cliente 
)

values
	(
	8, 
	'JORGE MENDES',
	'5472510834167547',  
	'11/30', 
	'589', 
	1,
	1
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade,
	cod_cliente 
)

values
	(
	9, 
	'CRISTIANO RONALDO',
	'5472510834161222',  
	'03/25', 
	'150', 
	2,
	5
);


insert into tb_cartao 
(
	cod_cartao,
	nome_titular,
	numero_cartao,
	validade_cartao,
	cvv,
	cod_modalidade,
	cod_cliente 
)

values
	(
	10, 
	'LIONEL MESSI',
	'5472108341679999',  
	'11/29', 
	'788', 
	2,
	9
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



-- INSERT PIX
insert into tb_pix
(
	cod_pix,
	id_transacao
)
values
(
	1,
	'E2345678712345678903456789044654'
);

insert into tb_pix
(
	cod_pix,
	id_transacao
)
values
(
	2,
	'E0765432334554323456654345676543'
);

insert into tb_pix
(
	cod_pix,
	id_transacao
)
values
(
	3,
	'E3045845565539223456344320348743'
);

insert into tb_pix
(
	cod_pix,
	id_transacao
)
values
(
	4,
	'E0965008768343457876325344432568'
);

insert into tb_pix
(
	cod_pix,
	id_transacao
)
values
(
	5,
	'E1822345672234567876543234565436'
);

insert into tb_pix
(
	cod_pix,
	id_transacao
)
values
(
	6,
	'E1823034890000987654323333210426'
);


-- INSERT FORMA DE PAGAMENTO


insert into tb_forma_pagamento
(
	cod_forma_pagamento,
	descricao_forma_pagamento
	
)
values
(
	1,
	'CRÉDITO'

	
	
);

insert into tb_forma_pagamento
(
	cod_forma_pagamento,
	descricao_forma_pagamento
	
)
values
(
	2,
	'DÉBITO'

);

insert into tb_forma_pagamento
(
	cod_forma_pagamento,
	descricao_forma_pagamento
	
)
values
(
	3,
	'BOLETO'
	
	
	
);

insert into tb_forma_pagamento
(
	cod_forma_pagamento,
	descricao_forma_pagamento
	
)
values
(
	4,
	'PIX'
	
);

-- INSERT TIPO_FORMA_PAGAMENTO
-- 
-- insert into tb_tipo_pagamento 
-- (
-- 	cod_tipo_pagamento,
-- 	cod_cartao,
-- 	cod_forma_pagamento,
-- 	cod_boleto , 
--  cod_pix
-- 	
-- 
-- )
-- values
-- (	1
-- 	9,
-- 	1,
-- 	NULL
-- 
-- 
-- );
-- 
-- insert into tb_tipo_pagamento 
-- (
-- 	cod_tipo_pagamento,
-- 	cod_cartao,
-- 	cod_forma_pagamento,
-- 	cod_boleto 
-- 	
-- 
-- )
-- values
-- (
--     2,
-- 	2,
-- 	2,
-- 	NULL
-- 
-- 
-- );
-- 
-- 
-- insert into tb_tipo_pagamento 
-- (
-- 	cod_cartao,
-- 	cod_forma_pagamento,
-- 	cod_boleto 
-- 	
-- 
-- )
-- values
-- (
-- 	3,
-- 	NULL,
-- 	3,
-- 	1
-- 
-- 
-- );
-- 
-- 
-- insert into tb_tipo_pagamento 
-- (
-- 	cod_cartao,
-- 	cod_forma_pagamento,
-- 	cod_boleto 
-- 	
-- 
-- )
-- values
-- (
-- 	4,
-- 	NULL,
-- 	4,
-- 	NULL
-- 
-- 
-- );
-- 
-- 

-- INSERT AGENDAMENTO

insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	1,
	1,
	1,
	'2021-05-02',	
	'5000.00',
	1,
	9,
	NULL,
	NULL
);


insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	2,
	1,
	2,
	'2021-06-09',	
	'5000.00',
	2,
	4,
	NULL,
	NULL
);




insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	3,
	2,
	3,
	'2021-07-01',	
	'6000.00',
	3,
	null,
	1,
	NULL
);





insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	4,
	2,
	4,
	'2021-09-03',	
	'6000.00',
	4,
	null,
	NULL,
	1
);




insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	5,
	5,
	5,
	'2021-10-12',	
	'7000.00',
	1,
	9,
	NULL,
	NULL
);


insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	6,
	26,
	6,
	'2021-12-12',	
	'7000.00',
	3,
	null,
	4,
	NULL
);


insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	7,
	25,
	7,
	'2022-01-12',
	'7000.00',
	4,
	null,
	NULL,
	2
);


insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	8,
	15,
	8,
	'2022-01-12',	
	'7000.00',
	3, 
	NULL,
	3,
	NULL
);


insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	9,
	14,
	9,
	'2022-01-22',	
	'7000.00',
	2,
	10, 
	NULL,
	NULL
);


insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	10,
	11,
	10,
	'2022-01-24',	
	'7000.00',
	4,
	null, 
	NULL,
	3
);


insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	11,
	23,
	5,
	'2022-01-26',	
	'7000.00',
	2,
	9,
	NULL,
	NULL
);



insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	12,
	24,
	2,
	'2022-01-27',	
	'7000.00',
	1,
	5,
	NULL,
	NULL
);



insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	13,
	1,
	1,
	'2022-01-30',	
	'5000.00',
	1,
	7, 
	NULL,
	NULL
);



insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	14,
	17,
	3,
	'2022-02-01',	
	'7000.00',
	2,
	6,
	NULL,
	NULL
);


insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	15,
	5,
	4,
	'2022-02-7',	
	'7000.00',
	3,
	null,
	3,
	NULL
);

insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	16,
	6,
	8,
	'2022-02-12',	
	'7000.00',
	4, 
	null, 
	NULL,
	4
);


insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	17,
	7,
	10,
	'2022-02-14',	
	'7000.00',
	4,
	null,
	NULL,
	5
);



insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	18,
	13,
	5,
	'2022-02-14',	
	'7000.00',
	2,
	9,
	NULL,
	NULL
);


insert into tb_agendamento
(
	cod_agendamento,
	cod_veiculo,
	cod_cliente,
	data_reserva,
	taxa_agendamento,
	cod_forma_pagamento,
	cod_cartao,
	cod_boleto,
	cod_pix
)
values
(
	19,
	20,
	5,
	'2022-02-17',	
	'7000.00',
	1,
	9,
	NULL,
	NULL
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
	'CANCELADO'
);



insert into tb_status
(
	cod_status,
	status
)
values
(
	2,
	'ENTREGUE'
);



insert into tb_status
(
	cod_status,
	status
)
values
(
	3,
	'EM ROTA'
);





insert into tb_pedido
(
	
	cod_pedido, 
	cod_cliente,
	cod_veiculo,
	cod_forma_pagamento,
	cod_frete, 
	valor_total_pedido, 
	data_pedido, 
	previsao_entrega,
	data_envio, 
	cod_status,
	cod_endereco
)
values
(
	3,
	3,
	13,
	1, 
	25,
	263000.00,
	'2021-10-09',
	15,
	'2021-10-25',
	1,
	3
	
);



insert into tb_pedido
(
	
	cod_pedido, 
	cod_cliente,
	cod_veiculo,
	cod_forma_pagamento,
	cod_frete, 
	valor_total_pedido, 
	data_pedido, 
	previsao_entrega,
	data_envio, 
	cod_status,
	cod_endereco
)
values
(
	2,
	2,
	17,
	2, 
	25,
	753000.00,
	'2022-01-10',
	15,
	'2022-01-26',
	2,
	2
	
);

insert into tb_pedido
(
	
	cod_pedido, 
	cod_cliente,
	cod_veiculo,
	cod_forma_pagamento,
	cod_frete, 
	valor_total_pedido, 
	data_pedido, 
	previsao_entrega,
	data_envio, 
	cod_status,
	cod_endereco
)
values
(
	1,
	1,
	20,
	2, 
	25,
	813000.00,
	'2022-01-10',
	15,
	'2022-01-26',
	2,
	1
	
	
	
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

-- select * from tb_fornecedor tf ;


-- update tb_pedido set data_envio = '2021-10-25', previsao_entrega = 15 where cod_pedido = 1; 
 -- alter table tb_item_nf alter column percentual_icms decimal(4,2);

 select * from login ;
select * from tb_fornecedor tf ;
-- select * from tb_combustivel tc ;
-- select * from tb_cambio tc ;
-- select * from tb_cor tc ;
-- select * from tb_marca tm ;
-- select * from tb_motor tm ;
select * from tb_veiculo tv ;
select * from tb_cliente tc ;
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
-- select * from tb_cabecalho_nf tcn ;
-- select * from tb_item_nf tin  ;
-- select * from tb_pedido tp ;
-- select * from tb_forma_pagamento tfp ;
-- select  * from tb_tipo_pagamento ttp ;
-- select * from tb_status ts 
-- 
-- 
-- select * from tb_frete tf ;
-- select * from tb_status ts;
-- select * from tb_pedido tp;


-- trazer o que eu quero mostrar na lista
-- select cod_pedido, nome_cliente, razao_social, numero_documento, email_cliente,telefone_cliente, descricao_forma_pagamento, valor_frete,valor_total_pedido, data_pedido,status
-- 
-- -- endereco da tabela que quero trazer informaÃ§oes
-- from tb_pedido tp
-- 
-- inner join tb_cliente tc on (tp.cod_cliente = tc.cod_cliente )
-- inner join tb_forma_pagamento tfp on (tp.cod_forma_pagamento = tfp.cod_forma_pagamento)
-- inner join tb_frete tf on (tp.cod_frete = tf.cod_frete)
-- inner join tb_status ts on (tp.cod_status = ts.cod_status);


-- inner join tb_item_pedido tip on (tp.cod_veiculo = tip.cod_veiculo);
-- inner join tb_veiculo tv on (tv.cod_veiculo = tp.cod_veiculo)
-- inner join tb_marca tm on (tv.cod_marca = tm.cod_marca);

