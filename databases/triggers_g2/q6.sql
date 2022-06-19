USE ASIATICAS_DB

DROP TRIGGER IF EXISTS trg_q6;
DELIMITER $$
CREATE TRIGGER trg_q6 AFTER INSERT ON CLIENTES
FOR EACH ROW 
BEGIN 
    INSERT INTO LOG(data, descricao) VALUES(NOW(), CONCAT("O cliente de nome ", NEW.nome, " foi incluído."));
END$$
DELIMITER ;

-- INSERT INTO CLIENTES(nome, datanascimento, cpf, num_compras) VALUES('Rubens Kaiserman', '2003-12-03', 123456789, 0);