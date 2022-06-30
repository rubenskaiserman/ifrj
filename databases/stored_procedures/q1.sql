USE DBONE;

DROP PROCEDURE IF EXISTS insert_produto;
DELIMITER $$
CREATE PROCEDURE insert_produto(cod INT, description VARCHAR(30), quant INT, estoque_min INT)
BEGIN
    IF (cod IS NOT NULL) AND (description IS NOT NULL) AND (quant IS NOT NULL) AND (estoque_min IS NOT NULL)THEN 
        INSERT INTO PRODUTO(codproduto, descricao, quantidade, minimo) VALUES(cod, description, quant, estoque_min);
    ELSE
        INSERT INTO LOG(data, descricao) VALUES(NOW(), CONCAT(description, quant, cod));
    END IF;
END$$
DELIMITER ;

CALL insert_produto(9, "carambolas", 2, 1); -- Testando