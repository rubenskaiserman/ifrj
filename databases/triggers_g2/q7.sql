-- Lembrar de perguntar a respeito dessa questão

USE ASIATICAS_DB

DROP TRIGGER IF EXISTS trg_q7;
DELIMITER $$
CREATE TRIGGER trg_q7 AFTER UPDATE ON PRODUTOS
FOR EACH ROW
BEGIN
    INSERT INTO LOG(data, descricao) 
    VALUES(NOW(), CONCAT("O registro do produto de código ", NEW.codigo, " foi alterado."));
END$$
DELIMITER ;565

-- UPDATE PRODUTOS SET quantidade=121 WHERE codigo=5;