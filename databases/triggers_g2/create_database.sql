DROP DATABASE IF EXISTS ASIATICAS_DB;
CREATE DATABASE ASIATICAS_DB;

DROP USER IF EXISTS ASIATICAS_USER;
CREATE USER ASIATICAS_USER identified by 'ASIAUSER$2020';
GRANT INSERT, DELETE, UPDATE, SELECT ON ASIATICAS_DB.* TO ASIATICAS_USER;
FLUSH PRIVILEGES;

USE ASIATICAS_DB;

CREATE TABLE CLIENTES(
 codigo int primary key auto_increment,
 nome varchar(60),
 datanascimento date,
 cpf varchar(11),
 num_compras int
);

CREATE TABLE VENDAS(
 codigo int primary key auto_increment,
 codcliente int,
 datavenda date,
 nf varchar(12),
 valortotal decimal(10,2)
);

CREATE TABLE PRODUTOS(
 codigo int primary key auto_increment,
 descricao varchar(100),
 quantidade int,
 minimo int
);

CREATE TABLE ITEMVENDAS(
 codigo int auto_increment primary key,
 codvenda int,
 valorunitario decimal(10,2),
 quantidade int,
 codproduto int
);

CREATE TABLE FORNECEDORES(
 codigo int primary key auto_increment,
 razaosocial varchar(100),
 nomefantasia varchar(100),
 cnpj varchar(16),
 email varchar(50)
);

CREATE TABLE COMPRAS(
 codigo int primary key auto_increment,
 codfornecedor int,
 datacompra date,
 nf varchar(12),
 valortotal decimal(10,2)
);

CREATE TABLE ITEMCOMPRAS(
 codigo int primary key auto_increment,
 codcompra int,
 valorunitario decimal(10,2),
 quantidade int,
 codproduto int
);

CREATE TABLE LOG(
 codigo int auto_increment primary key,
 data date,
 descricao varchar(255)
);

CREATE TABLE REQUISICAO_COMPRA(
 codigo int auto_increment primary key,
 codproduto int,
 data date,
 quantidade int
);

-- Relaionamentos
ALTER TABLE VENDAS ADD CONSTRAINT FK_CLIENTES1
FOREIGN KEY(CODCLIENTE) REFERENCES CLIENTES(CODIGO);

ALTER TABLE ITEMVENDAS ADD CONSTRAINT FK_VENDAS1
FOREIGN KEY(CODVENDA) REFERENCES VENDAS(CODIGO);

ALTER TABLE ITEMVENDAS ADD CONSTRAINT FK_PRODUTOS1
FOREIGN KEY(CODPRODUTO) REFERENCES PRODUTOS(CODIGO);

ALTER TABLE COMPRAS ADD CONSTRAINT FK_FORNECEDORES1
FOREIGN KEY(CODFORNECEDOR) REFERENCES FORNECEDORES(CODIGO);

ALTER TABLE ITEMCOMPRAS ADD CONSTRAINT FK_COMPRAS1
FOREIGN KEY(CODCOMPRA) REFERENCES COMPRAS(CODIGO);

ALTER TABLE ITEMCOMPRAS ADD CONSTRAINT FK_PRODUTOS2
FOREIGN KEY(CODPRODUTO) REFERENCES PRODUTOS(CODIGO);

ALTER TABLE REQUISICAO_COMPRA ADD CONSTRAINT FK_PRODUTOS3
FOREIGN KEY(CODPRODUTO) REFERENCES PRODUTOS(CODIGO);


INSERT INTO CLIENTES VALUES (1, 'Sylvio Barbon', '1984/12/05','12315541212', 0),
							(2, 'Antonio Carlos da Silva', '1970/11/01', '12313345512', 0),
							(3, 'Thiago Ribeiro', '1964/11/15','12315544411', 0),
							(4, 'Carlos Eduardo', '1924/10/25', '42515541212', 0),
							(5, 'Maria Cristina Goes', '1981/11/03','67715541212', 0),
							(6, 'Ruan Manoel Fanjo', '1983/12/06', '32415541212', 0),
							(7, 'Patrícia Marques', '1944/02/01', '77715541212', 0);

INSERT INTO PRODUTOS VALUES (1, 'Mouse', 10, 7),
							(2, 'Teclado', 10, 5),
							(3, 'Monitor LED 24pol Samsung', 10, 5),
							(4, 'Caixas Acústicas', 10, 8),
							(5, 'Scanner de Mesa', 10, 3);

INSERT INTO VENDAS VALUES 	(1, 1, '2012/04/01', '00001', 400.00),
							(2, 2, '2012/04/01', '00002', 10.90),
							(3, 2, '2012/04/01', '00003', 21.80),
							(4, 3, '2012/05/01', '00004', 169.10),
							(5, 4, '2012/05/01', '00005', 100.90),
							(6, 6, '2012/05/02', '00006', 51.35);

INSERT INTO ITEMVENDAS VALUES 	(1, 1, 10.90, 1, 1),
								(2, 1, 389.10, 1, 3),
								(3, 2, 10.90, 1, 1),
								(4, 3, 10.90, 1, 1),
								(5, 4, 10.90, 1, 1),
								(6, 4, 15.90, 2, 2),
								(7, 4, 25.50, 1, 4),
								(8, 4, 100.90, 1, 5),
								(9, 5, 100.90, 1, 5),
								(10, 6, 25.50, 2, 4);

INSERT INTO FORNECEDORES VALUES 	(1, 'Luis Antônio e Celia Ltda.', 'Dods Lanches', '8798798798', 'dodsarraial@gmail.com'),
									(2, 'Sassurana Cosméticos Ltda-ME', 'Casa do Penduricalho', '234232344', 'contato@penduricalho.com'),
									(3, 'Brochura Papelaria S/C Ltda.', 'Pepalaria Max', '534534453', 'maxpapel@gmail.com');

INSERT INTO COMPRAS VALUES	(1, 2, '2022-02-10', '9890890980', 12000),
							(2, 1, '2022-02-07', '2341232', 1200);

INSERT INTO ITEMCOMPRAS VALUES 	(1, 1, 1000, 12, 3),
								(2, 2, 80, 10, 2),
								(3, 2, 40, 10, 1);
                                