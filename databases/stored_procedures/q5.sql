USE DBONE;

DROP PROCEDURE IF EXISTS insert_cliente;
DELIMITER $$
CREATE PROCEDURE insert_cliente(codigocliente INT, nome VARCHAR(60), datanasc DATE, cpf_par VARCHAR(11))
BEGIN
    IF (SELECT cpf FROM CLIENTE WHERE cpf = cpf_par) IS NULL THEN
        INSERT INTO CLIENTE VALUES(codigocliente, nome, datanasc, cpf_par);
    ELSE
       SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "CPF já na base de dados";
    END IF;
END$$
DELIMITER ;

CALL insert_cliente(999, "Meu amigo Klaus", "2003-12-01", 12345678911); -- Teste: Funcionou