USE DBONE;

DROP PROCEDURE IF EXISTS manual_increment;
DELIMITER $$
CREATE PROCEDURE manual_increment(codcliente INT, datapedido DATE, nf VARCHAR(12), valortotal DECIMAL(10, 2))
BEGIN
    DECLARE valor_anterior INT;
    SELECT MAX(codpedido) INTO valor_anterior FROM PEDIDO;
    IF (valor_anterior > 0) THEN
        INSERT INTO PEDIDO VALUES(valor_anterior + 1, codcliente, datapedido, nf, valortotal);
    ELSE
       INSERT INTO PEDIDO VALUES(500, codcliente, datapedido, nf, valortotal);
    END IF;
END$$
DELIMITER ;

CALL manual_increment(123, NOW(), "abcde", 123.45);