drop database if exists BDSebo;
create database BDSebo;
use BDSebo;

create table usuarios(
		email varchar(30) primary key,
		nome varchar(50) not null,
		telefone varchar(14),
		dt_cadastro date,
		dt_nascimento date);

create table autores(
		id_autor int(6) primary key auto_increment,
		nome varchar(30) not null,
		sobrenome varchar(30) not null);

create table operacoes(
		id_venda int(8) primary key auto_increment,
		dt_venda date,
		valor_total double(10,2),
		usuario varchar(30),
		foreign key(usuario) references usuarios(email));

create table livros(
		id_livro int(8) primary key auto_increment,
		isbn varchar(13),
		titulo varchar(100) not null,
		genero varchar(40),
		capa blob,
		ano int(4),
		q_paginas int(8),
		editora varchar(50),
		dt_cadastro date,
		preco double(10,2),
		venda int(8),
		proprietario varchar(30),
		foreign key(proprietario) references usuarios(email),
		foreign key(venda) references operacoes(id_venda));

create table autores_livros(
		id_autor_livro int(8) primary key auto_increment,
		autor int(6),
		livro int(8),
		foreign key(autor) references autores(id_autor),
		foreign key(livro) references livros(id_livro));
  
INSERT INTO autores VALUES(1, "JOSE DE", "ALENCAR"),
						  (2, "DAN", "BROWN"),
						  (3, "J. J. ", "BENITEZ"),
						  (4, "GEORGE", "ORWELL"),
						  (5, "J. R. R.", "TOLKIEN"),
						  (6, "J. K.", "ROWLING"),
						  (7, "AGATHA", "CHRISTIE"),
						  (8, "E. L. ", "JAMES"),
						  (9, "JOHN", "GREEN"),
						  (10, "STEPHEN", "KING"),
						  (11, "RICK", "RIORDAN"),
						  (12, "C.S.", "LEWIS"),
						  (13, "KHALLED", "HOSSEINI"),
						  (14, "JOHN", "GRISHAN"),
						  (15, "GEORGE R. R.", "MARTIN"),
						  (16, "MARK", "MANSON"),
						  (17, "NORA", "ROBERTS"),
						  (18, "NICHOLAS", "SPARKS"),
						  (19, "CAROL", "DWECK"),
						  (20, "JEFF", "KINNEY"),
						  (21, "STEPHENIE", "MEYER"),
						  (22, "JAMES", "PATTERSON"),
						  (23, "MACHADO DE", "ASSIS"),
						  (24, "GUIMARÃES", "ROSA"),
						  (25, "JOAO CABRAL DE", "MELO NETO"),
						  (26, "VINICIUS DE", "MORAES"),
						  (27, "CAROLINA DE", "JESUS"),
						  (28, "MANOEL DE", "BARROS"),
						  (29, "AUGUSTO", "CURY"),
						  (30, "ARARIPE", "JUNIOR"),
						  (31, "CLARICE", "LINSPECTOR"),
						  (32, "GABRIEL GARCIA", "MARQUES"),
						  (33, "JOSE", "SARAMAGO"),
						  (34, "PAULO", "COELHO");

INSERT INTO usuarios VALUES("gustavodias@uol.com.br", "Gustavo Dias Loureiro", "(21)23222-3333", "2021-03-20", "2000-02-12"),
						   ("angelissaneves@gmail.com", "Angelissa da Silva Gouveia Neves", "(11)23233-2332", "2021-03-21", "1998-10-10"),
						   ("monique1888silva@yahoo.com.br", "Monique da Silva Silva", "(12)22222-9898", "2021-02-20", "2001-08-13"),
						   ("gabrielmedina@gmail.com", "Gabriel Medina Junior", "(11)22312-2323", "2021-01-10", "2002-01-01"),
						   ("mariaeduardabraga@gmail.com", "Maria Eduarda Maia da Silva", "(22)28989-2322", "2020-03-29", "1980-10-10"),
						   ("apaulabaptista21@globo.com", "Ana Paula Baptista Souza", "(21)89899-9898", "2020-03-29", "1999-07-07");

INSERT INTO operacoes VALUES(1, "2020-10-01", 85, "gustavodias@uol.com.br"),
						 (2, "2020-03-29", 50, "gabrielmedina@gmail.com"),
						 (3, "2020-03-29", 25, "mariaeduardabraga@gmail.com");

INSERT INTO livros VALUES (1, "8989890098899", "Fortaleza Digital", "Ficcao", null, 1998, 210, "Editora Sextante", "2021-03-20", 40, 1, "apaulabaptista21@globo.com"),
						  (2, "8888939399993", "Anjos e Demonios", "Ficcao", null, 2005, 245, "Editora Sextante", "2021-03-20", 50, null, "monique1888silva@yahoo.com.br"),
						  (3, "8908098000980", "O Codigo daVinci", "Ficcao", null, 2003, 267, "Editora Sextante", "2021-03-20", 45, 1, "monique1888silva@yahoo.com.br"),
						  (4, "2387328239998", "Operacao Cavalo de Troia Jerusalen Vol. 1", "Ficcao", null, 1984, 400, "Editora Mercuryo", "2021-03-20", 70, null, "monique1888silva@yahoo.com.br"),
						  (5, "6778382929388", "Crepusculo", "Romance", null, 2005, 250, "Editora Intriseca", "2021-03-20", 30, null, "gabrielmedina@gmail.com"),
						  (6, "9929297373733", "Crepusculo - Lua Nova", "Romance", null, 2006, 250, "Editora Intriseca", "2021-03-20", 25, null, "angelissaneves@gmail.com"),
						  (7, "8923388383838", "Crepusculo - Amanhecer", "Romance", null, 2007, 300, "Editora Intriseca", "2021-03-20", 25, 3, "angelissaneves@gmail.com"),
						  (8, "9877676767676", "Brida", "Romance", null, 1990, 210, "Editora Paralela", "2021-03-20", 20, null, "angelissaneves@gmail.com"),
						  (9, "6565667677777", "As margens do rio piedra eu sentei e chorei", "Romance", null, 2012, 208, "Editora Paralela", "2021-03-20", 18, null, "angelissaneves@gmail.com"),
						  (10, "1212232132232", "O silencio da montanha", "Romance", null, 2010, 208, "Editora Paralela", "2021-03-20", 45, null, "angelissaneves@gmail.com"),
						  (11, "2323234234344", "O cacador de pipas", "Romance", null, 2012, 208, "Editora Paralela", "2021-03-20", 50, 2, "angelissaneves@gmail.com"),
						  (12, "7665444444444", "A cidade do sol", "Romance", null, 2014, 208, "Editora Paralela", "2021-03-20", 60, null, "apaulabaptista21@globo.com");

INSERT INTO autores_livros VALUES(1, 2, 1),
							     (2, 2, 2),
								 (3, 2, 3),
								 (4, 3, 4),
								 (5, 21, 5),
								 (6, 21, 6),
								 (7, 21, 7),
								 (8, 34, 8),
								 (9, 34, 9),
								 (10, 13, 10),
								 (11, 13, 11),
								 (12, 13, 12);
						 