drop database if exists bdflores;
create database bdflores;
use bdflores;

create table clientes(
	rg varchar(15) primary key,
	endereco varchar(80) not null,
	nome varchar(30) not null,
	telefone varchar(15));
	
create table flores(
	codigo int(6) auto_increment primary key,
	nome varchar(50) not null,
	tipo varchar(30),
	quantidade int(6),
	preco double(10,2));
	
create table vendas(
	numero_nota int(8) primary key,
	data date,
	rg varchar(15),
	valor_total double(10,2));
	
create table itensvenda(
	codigo_flor int(6),
	numero_nota int(8),
	qtde_vendida int(6),
	primary key(codigo_flor, numero_nota));

alter table vendas add constraint fk_vendas_clientes
foreign key(rg) references clientes(rg)
on delete cascade on update cascade;

alter table itensvenda add constraint fk_itensvenda_vendas
foreign key(numero_nota) references vendas(numero_nota)
on delete cascade on update cascade;

alter table itensvenda add constraint fk_itensvenda_flores
foreign key(codigo_flor) references flores(codigo)
on delete cascade on update cascade;

insert into clientes values
	('230840293','Rua A, 10 - Centro - Cabo Frio - RJ', 'Jurandir da Motta', '87989989'),
	('345345345','Avenida central, 15/09 - Vila Joao - Rio de Janeiro - RJ', 'Inês da Silva', '2342343'),
	('121212233','Travessa Irene, 132 - Parque São Judas - São Paulo - SP', 'Marilia Souza Gonçalves', '23422111'),
	('908877876','Rua Dr. José Silva, 900 - Centro - São Paulo - SP', 'Gonçalo Demétrio Dias', '98767282'),
	('112121223','Rua Profa Maria José, 232 - Porto da Madama - São Gonçalo - RJ', 'Deborah Garcia', '2232322');

insert into flores(nome, tipo, quantidade, preco) values
	('Rosa', 'Branca', 80, 2.50),
	('Rosa', 'Rosa', 120, 2.80),
	('Cravo', null, 80, 1.80),
	('Orquídeas', null, 20, 14.50),
	('Violeta', null, 35, 8.90),
	('Horênsias', null, 20, 6.90),
	('Tulipas', null, 100, 4.50),
	('Copo de leite', null, 15, 4.50),
	('Begônia', null, 30, 3.45),
	('Kalanchoe', null, 15, 4.50),
	('Antúrio', null, 40, 7.90),
	('Calêndula', null, 130, 4.89),
	('Angélica', null, 20, 4.50),
	('Margarida', 'Mini', 30, 6.90),
	('Boca de leão', null, 5, 18.99);

insert into vendas values
	(132882, '2020-12-09', 345345345, 81),
	(233322, '2020-12-30', 112121223, 45),
	(818218, '2021-01-05', 121212233, 85.50),
	(121233, '2020-01-15', 230840293, 138),
	(223323, '2020-01-20', 908877876, 189.90),
	(433222, '2020-02-01', 345345345, 432),
	(532223, '2020-02-05', 908877876, 8.90),
	(332233, '2020-03-13', 112121223, 44.50),
	(555553, '2020-04-01', 230840293, 118),
	(112122, '2020-04-02', 230840293, 189.90);

insert into itensvenda values
	(2, 132882, 20),
	(1, 132882, 10),
	(7, 233322, 10),
	(8, 818218, 4),
	(11, 818218, 5),
	(2, 818218, 10),
	(14, 121233, 20),
	(15, 223323, 10),
	(1, 433222, 20),
	(2, 433222, 20),
	(3, 433222, 20),
	(4, 433222, 29),
	(5, 532223, 1),
	(5, 332233, 5),
	(2, 555553, 10),
	(10, 555553, 20),
	(15, 112122, 10);
