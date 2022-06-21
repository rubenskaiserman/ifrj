USE ASIATICAS_DB

DROP TRIGGER IF EXISTS trg_q11;
DELIMITER $$
CREATE TRIGGER trg_q11 AFTER INSERT ON ITEMVENDAS
FOR EACH ROW
BEGIN
    IF (SELECT quantidade FROM PRODUTOS WHERE codigo = NEW.codproduto) < NEW.quantidade THEN
        INSERT INTO LOG(data, descricao) VALUES(NOW(), CONCAT("Foi feito um pedido do produto de código ", NEW.codproduto, " com quantidade maior do que o estoque"));
    END IF;
END$$
DELIMITER ;

-- INSERT INTO ITEMVENDAS(codvenda, quantidade, codproduto) VALUES(1234572, 3, 5)