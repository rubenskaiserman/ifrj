USE ASIATICAS_DB;

DROP TRIGGER IF EXISTS verifica_estoque;

DELIMITER $$
CREATE TRIGGER verifica_estoque BEFORE INSERT ON ITEMVENDAS
FOR EACH ROW
BEGIN
    DECLARE estoque_atual INT;
    SELECT quantidade INTO estoque_atual FROM PRODUTOS WHERE codigo=NEW.codproduto;
    IF (NEW.quantidade > estoque_atual) THEN
        INSERT INTO LOG(data, descricao) VALUES(NOW(), CONCAT("Produto de código ", NEW.codproduto, " não tem estoque suficiente."));
        -- SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Batatinha quando nasce espalha rama pelo chão";
    ELSE
        UPDATE PRODUTOS SET quantidade = quantidade - NEW.quantidade WHERE codigo=NEW.codproduto;
    END IF;
END$$
DELIMITER ;

-- Teste
INSERT INTO ITEMVENDAS(codvenda, valorunitario, quantidade, codproduto) VALUES(5, 23.88, 11, 5);
