drop database if exists bdeventos;
create database bdeventos;
use bdeventos;

create table eventos(
	idevento int(6) zerofill primary key auto_increment,
    descricao varchar(80) not null,
    data date,
    horario time);

alter table eventos auto_increment = 1000;

insert into eventos(descricao, data, horario) values
	('Show do Zeca Pagodinho', '2018-10-05', '22:30:00'),
    ('Show do Victor e Léo', '2018-11-02', '21:30:00'),
    ('Jogo Brasil x Paraguai', '2018-11-25', '16:00:00'),
    ('Peça Teatral "O gordo e o magro"', '2018-12-12', '19:00:00'),
    ('Cantada de Natal', '2018-12-25', '00:00:00');
     
create table clientes(
	email varchar(30) primary key,
    nome varchar(30) not null,
    endereco varchar(80),
    telefone varchar(15),
    senha varchar(32),
    datanasc date);

insert into clientes values
	('ronaldinho@gmail.com', 'Ronaldinho Gaucho', 'Rua das Flores, 10 - Centro - Bangu - RJ', '219999-9988', md5('123123'), '1985-06-30'),
    ('kaka@globo.com', 'Kaká', 'Rua das Esmeraudas, 123 - apto 101 - Jardim Catarina - São Gonçalo - RJ', '218888-0909', md5('654321'), '1989-12-11'),
    ('paolaoliveira@gmail.com', 'Paola Oliveira', 'Travessa Europa, 10 - California - Nova Iguaçu - RJ', '2118182-2323', md5('abc123'), '1991-08-13'),
    ('alanismorrisete@gmail.com', 'Alanis Morissete da Silva', 'Avenida das Formigas, 11 - Kaonze - Nova Iguaçu - RJ', '219999-8888', md5('ironic'), '1985-01-04'),
    ('fredguedes@ig.com.br', 'Frederico Moises Setubal', 'Estrada dos Bandeirantes, 22 - Barra da Tijuca - Rio de Janeiro - RJ', '21-92929-9999', md5('123'), '1990-06-13'),
    ('patriciapoeta@gmail.com', 'Patricia Poeta de Souza', 'Rua Projetada, 1234 - Centro - Bangu - RJ', '213433-9988', md5('abc'), '1989-05-01');

create table vendas(
	idvenda int(6) zerofill primary key auto_increment,
    cliente varchar(30),
    datavenda date,
    total double(10,2),
    foreign key(cliente) references clientes(email));
    
alter table vendas auto_increment = 5000;
    
insert into vendas(cliente, datavenda, total) values
	('kaka@globo.com', '2018-06-22', 1300),
    ('kaka@globo.com', '2018-06-22', 1300),
    ('paolaoliveira@gmail.com', '2018-06-29', 4500),
    ('patriciapoeta@gmail.com', '2018-07-09', 1300);

create table ingressos(
	idingresso int(6) primary key auto_increment,
    evento int(6) zerofill,
    venda int(6) zerofill,
    valor double(10,2),
    qtde int(4),
    foreign key(evento) references eventos(idevento),
    foreign key(venda) references vendas(idvenda));
    
insert into ingressos(evento, venda, valor, qtde) values
	(1001, 5000, 650, 2),
    (1001, 5001, 650, 2),
    (1002, 5002, 200, 10),
    (1004, 5002, 100, 10),
    (1003, 5002, 150, 10),
    (1003, 5001, 650, 2);