USE DBONE;

DROP PROCEDURE IF EXISTS insert_cliente;
DELIMITER $$
CREATE PROCEDURE insert_cliente(cod INT, nome VARCHAR(60), data DATE, cpf VARCHAR(11))
BEGIN 
-- São 20:36 da noite. Eu não estou em condições de fazer uma solução muito criativa.
-- É uma possibilidade que exista um método interno de checar se todos os parametros foram inseridos.
-- Porém, eu quero dormir, então vou só acabar a lista rápido mesmo.
    IF (cod IS NOT NULL) AND (nome IS NOT NULL) AND (data IS NOT NULL) AND (cpf IS NOT NULL) THEN
        INSERT INTO CLIENTE(codcliente, nome, datanascimento, cpf) VALUES(cod, nome, data, cpf);
        -- Tem um this aqui? Porque tipo, e se o parametro é igual o nome de um campo do cliente?
        -- Ou da erro quando cria uma variável.
        -- Até testaria por mim mesmo
        -- Mas como eu disse, soninho.
        -- Te pergunto depois.
    END IF; 
END $$
DELIMITER ;

CALL insert_cliente(123, "Rubens Kaiserman", '2003-12-03', "12345678910");  