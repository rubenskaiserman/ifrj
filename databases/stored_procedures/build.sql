DROP DATABASE IF EXISTS DBONE;
CREATE DATABASE DBONE;
USE DBONE;
CREATE TABLE CLIENTE(
 codcliente int,
 nome varchar(60),
 datanascimento date,
 cpf varchar(11),
 CONSTRAINT pk2_EX2_cliente PRIMARY KEY (codcliente)
);

CREATE TABLE PEDIDO(
 codpedido int,
 codcliente int,
 datapedido date,
 nf varchar(12),
 valortotal decimal(10,2),
 CONSTRAINT pk2_EX2_pedido PRIMARY KEY (codpedido)
);

CREATE TABLE PRODUTO(
 codproduto int,
 descricao varchar(100),
 quantidade int,
 minimo int,
 CONSTRAINT pk2_EX2_produto PRIMARY KEY (codproduto)
);

CREATE TABLE ITEMPEDIDO(
 codpedido int,
 numeroitem int,
 valorunitario decimal(10,2),
 quantidade int,
 codproduto int,
 CONSTRAINT pk2_itempedido PRIMARY KEY (codpedido, numeroitem)
);

CREATE TABLE LOG(
 codlog int auto_increment,
 data date,
 descricao varchar(255),
 CONSTRAINT pk2_ex2_log PRIMARY KEY (codlog)
);

CREATE TABLE REQUISICAO_COMPRA(
 codrequisicaocompra int auto_increment,
 codproduto int,
 data date,
 quantidade int,
 CONSTRAINT pk2_ex2_reqcompra PRIMARY KEY (codrequisicaocompra)
);

INSERT INTO CLIENTE VALUES (1, 'Sylvio Barbon', '1984/12/05','12315541212'),
(2, 'Antonio Carlos da Silva', '1970/11/01', '12313345512'),
(3, 'Thiago Ribeiro', '1964/11/15','12315544411'),
(4, 'Carlos Eduardo', '1924/10/25', '42515541212'),
(5, 'Maria Cristina Goes', '1981/11/03','67715541212'),
(6, 'Ruan Manoel Fanjo', '1983/12/06', '32415541212'),
(7, 'Patrícia Marques', '1944/02/01', '77715541212');

INSERT INTO PRODUTO VALUES (1, 'Mouse', 10, 7),
(2, 'Teclado', 10, 5),
(3, 'Monitor LCD', 10, 5),
(4, 'Caixas Acústicas', 10, 8),
(5, 'Scanner de Mesa', 10, 3);

INSERT INTO PEDIDO VALUES (1, 1, '2012/04/01', '00001', 400.00);
INSERT INTO ITEMPEDIDO VALUES (1, 1, 10.90, 1, 1);
INSERT INTO ITEMPEDIDO VALUES (1, 2, 389.10, 1, 3);
INSERT INTO PEDIDO VALUES (2, 2, '2012/04/01', '00002', 10.90);
INSERT INTO ITEMPEDIDO VALUES (2, 1, 10.90, 1, 1);
INSERT INTO PEDIDO VALUES (3, 2, '2012/04/01', '00003', 21.80);
INSERT INTO ITEMPEDIDO VALUES (3, 1, 10.90, 1, 1);
INSERT INTO PEDIDO VALUES (4, 3, '2012/05/01', '00004', 169.10);
INSERT INTO ITEMPEDIDO VALUES (4, 1, 10.90, 1, 1);
INSERT INTO ITEMPEDIDO VALUES (4, 2, 15.90, 2, 2);
INSERT INTO ITEMPEDIDO VALUES (4, 3, 25.50, 1, 4);
INSERT INTO ITEMPEDIDO VALUES (4, 4, 100.90, 1, 5);
INSERT INTO PEDIDO VALUES (5, 4, '2012/05/01', '00005', 100.90);
INSERT INTO ITEMPEDIDO VALUES (5, 1, 100.90, 1, 5);
INSERT INTO PEDIDO VALUES (6, 6, '2012/05/02', '00006', 51.35);
INSERT INTO ITEMPEDIDO VALUES (6, 1, 25.50, 2, 4);