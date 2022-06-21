USE ASIATICAS_DB

DROP TRIGGER IF EXISTS verificar_venda;
DELIMITER $$
CREATE TRIGGER verificar_venda BEFORE INSERT ON ITEMVENDAS
FOR EACH ROW
BEGIN
    IF (SELECT COUNT(*) FROM ITEMVENDAS WHERE codproduto = NEW.codproduto AND codvenda=NEW.codvenda) > 0 THEN
        INSERT INTO LOG(data, descricao) VALUES(NOW(), CONCAT("Pedido repetido com produto de código ", NEW.codproduto, " na venda de código ", NEW.codvenda));
        -- SIGNAL SQLSTATE '77789' SET MESSAGE_TEXT = "Item repetido na venda, tente reinserir";
        DELETE FROM VENDAS WHERE codigo=NEW.codvenda;
    END IF;
END$$
DELIMITER ;

INSERT INTO ITEMVENDAS(codvenda, codproduto) VALUES(1234574, 5), (1234574, 5);