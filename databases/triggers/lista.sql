USE DBONE

-- SELECT * FROM PRODUTO;

-- DROP TRIGGER IF EXISTS q1;
-- DELIMITER $$
--     CREATE TRIGGER q1 AFTER INSERT ON ITEMPEDIDO
--     FOR EACH ROW
--     BEGIN
--         UPDATE PRODUTO SET quantidade = quantidade - NEW.quantidade WHERE NEW.codproduto = codproduto;
--     END $$
-- DELIMITER ;


-- INSERT INTO PEDIDO VALUES (20, 2, '2012/04/01', '00009', 10.90);
-- INSERT INTO ITEMPEDIDO VALUES (20, 1, 10.90, 6, 1);
-- SELECT * FROM PRODUTO;

-- DROP TRIGGER IF EXISTS q2;
-- DELIMITER $$
--     CREATE TRIGGER q2 AFTER INSERT ON CLIENTE
--     FOR EACH ROW
--     BEGIN
--         INSERT INTO LOG(data, descricao) VALUES(NOW(), CONCAT('Cliente: ', NEW.codcliente, ' inserido.'));
--     END $$
-- DELIMITER ;

-- INSERT INTO CLIENTE VALUES (14, 'Rubens Kaiserman', '2003-12-03','21088702708');
-- SELECT * FROM LOG;

-- DROP TRIGGER IF EXISTS q3;
-- DELIMITER $$
--     CREATE TRIGGER q3 AFTER INSERT ON PRODUTO
--     FOR EACH ROW
--     BEGIN
--         INSERT INTO LOG(data, descricao) VALUES(NOW(), CONCAT('Produto: ', NEW.codproduto, ' inserido.'));
--     END $$
-- DELIMITER ;

-- INSERT INTO PRODUTO VALUES (9, 'Fonte', 199, 10);
-- SELECT * FROM LOG;

-- DROP TRIGGER IF EXISTS q4;
-- DELIMITER $$
--     CREATE TRIGGER q4 AFTER INSERT ON ITEMPEDIDO
--     FOR EACH ROW
--     BEGIN
--         IF NEW.quantidade > (SELECT quantidade FROM PRODUTO WHERE codproduto=NEW.codproduto) THEN
--             INSERT INTO LOG(data, descricao) VALUES (NOW(), 'Foi solicitado um valor maior do que o que havia em estoque');
--         END IF;
--     END$$
-- DELIMITER ;
-- INSERT INTO PEDIDO VALUES (9, 2, '2012/04/01', '00011', 39998);
-- INSERT INTO ITEMPEDIDO VALUES(9, 12, 199.99, 200, 9)

-- DROP TRIGGER IF EXISTS q5;
-- DELIMITER $$
--     CREATE TRIGGER q5 AFTER UPDATE ON PRODUTO
--     FOR EACH ROW
--     BEGIN
--         IF NEW.quantidade < NEW.minimo THEN
--             INSERT INTO REQUISICAO_COMPRA(codproduto, data, quantidade) VALUES(NEW.codproduto, NOW(), 10 * NEW.minimo);
--         END IF;
--     END$$
-- DELIMITER ;

-- UPDATE PRODUTO SET quantidade = 9 WHERE codproduto=9;
-- SELECT * FROM REQUISICAO_COMPRA;

-- DROP TRIGGER IF EXISTS q6;
-- DELIMITER $$
--     CREATE TRIGGER q6 AFTER DELETE ON ITEMPEDIDO
--     FOR EACH ROW
--     BEGIN
--         INSERT INTO LOG(data, descricao) VALUES(NOW(), CONCAT('Delete: CodDelete: ', codpedido));
--     END $$

-- DELIMITER ;

-- DELETE FROM ITEMPEDIDO WHERE codpedido=20 AND quantidade=6;

