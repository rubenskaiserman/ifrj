USE ASIATICAS_DB

DROP TRIGGER IF EXISTS trg_q9;
DELIMITER $$
CREATE TRIGGER trg_q9 AFTER INSERT ON VENDAS
FOR EACH ROW
BEGIN
    IF NEW.valortotal > 1000 THEN 
        INSERT INTO LOG(data, descricao) VALUES(NOW(), CONCAT("Houve um pedido com o valor total de R$ ", NEW.valortotal));
    END IF;
END$$
DELIMITER ;

-- INSERT INTO VENDAS(codcliente, datavenda, nf, valortotal) VALUES(12334, NOW(), "batata", 1001);