USE DBONE;

DROP PROCEDURE IF EXISTS delete_usuario;

DELIMITER $$
CREATE PROCEDURE delete_usuario(codusuario INT)
BEGIN
    IF (SELECT codusuario FROM CLIENTE WHERE codcliente = codusuario) IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Cliente inexistente";
    ELSE
       DELETE FROM CLIENTE WHERE codcliente = codusuario;
    END IF;
END$$
DELIMITER ;

CALL delete_usuario(999); -- Teste: Funcionou