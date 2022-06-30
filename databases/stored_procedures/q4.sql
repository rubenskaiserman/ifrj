USE DBONE;

DROP PROCEDURE IF EXISTS insert_pedido;
DELIMITER $$
CREATE PROCEDURE insert_pedido(codpedido INT, codigocliente INT, datapedido DATE, nf VARCHAR(12), valortotal DECIMAL(10, 2))
BEGIN
    DECLARE cliente INT;
    SELECT codcliente INTO cliente FROM CLIENTE WHERE codcliente=codigocliente;
    IF cliente IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Cliente inexistente";
    ELSE
        INSERT INTO PEDIDO VALUES(codpedido, codigocliente, datapedido, nf, valortotal);
    END IF;
END$$
DELIMITER ;

CALL insert_pedido(99, 123, NOW(), "Chegoumanso", 99.99); --Teste: Funcionou