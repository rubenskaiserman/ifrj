USE ASIATICAS_DB

DROP TRIGGER IF EXISTS teste;
DELIMITER $$
CREATE TRIGGER teste
AFTER INSERT ON ITEMVENDAS 
FOR EACH ROW 
BEGIN
    UPDATE PRODUTOS SET quantidade = quantidade - NEW.quantidade WHERE PRODUTOS.codigo=NEW.codproduto;
    INSERT INTO LOG(data, descricao) VALUES(NOW(), 'Funcionou pelo menos');
END $$
DELIMITER ;

INSERT INTO VENDAS(codigo, codcliente, datavenda, nf) VALUES(1234567, 12334, NOW(), 'Testando'); 
INSERT INTO ITEMVENDAS(codvenda, quantidade, codproduto) VALUES(1234567, 4, 5)
