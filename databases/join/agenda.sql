Drop database if exists bdagenda;
Create database bdagenda;
Use bdagenda;

Create table clientes ( 
  codigo int(8) primary key auto_increment, 
  nome varchar(50) not null);

Create table clientes_telefone( 
  codigo int(10) primary key auto_increment, 
  cliente int(8), telefone varchar(15));

Create table clientes_endereco( 
  codigo int(10) primary key auto_increment, 
  cliente int(8), 
  endereco_completo varchar(100));

Alter table clientes auto_increment=501; 

Insert into clientes(nome) values
  ("Augusto Paiva"), 
  ("Brigite da Silva"), 
  ("Teobaldo Rodrigues"), 
  ("Julieta Dantas");

Alter table clientes_telefone auto_increment=1001;
 
Insert into clientes_telefone(cliente, telefone) values
  (502, "22-22222222"), 
  (502, "3232323232"), 
  (503, "21-212121212121"), 
  (504, "11-232323232"), 
  (null, "12-232323232"), 
  (504, "11-7987788738");

Alter table clientes_endereco auto_increment=2001;
 
Insert into clientes_endereco(cliente, endereco_completo) values
  (501, " Rua das Flores, 10 – centro – Cabo Frio - RJ "), 
  (501, " Av. das Frutas, 12 apto 201 – Arraial do Cabo - RJ "), 
  (502, " Alameda das Piadas, 32 bloco 3 – Sorocaba – SP "), 
  (503, " Rua Vinte, 100 – Centro - RJ "), 
  (null, "Avenida Ataujo Paiva, 23 / 201 – Vitoria - ES");