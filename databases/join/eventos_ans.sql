-- SELECT i.idingresso, i.valor, e.descricao FROM ingressos AS i JOIN eventos AS e; 

-- SELECT clientes.nome, vendas.datavenda, vendas.total FROM clientes LEFT JOIN vendas ON clientes.email=vendas.cliente;

-- SELECT v.idvenda, v.datavenda, i.idingresso, i.valor, e.idevento, e.descricao 
-- FROM vendas AS v JOIN ingressos AS i ON i.venda=v.idvenda  JOIN eventos AS e ON e.idevento=i.evento;

-- SELECT v.datavenda, c.nome FROM vendas AS v LEFT JOIN clientes AS c ON c.email=v.cliente
-- UNION
-- SELECT v.datavenda, c.nome FROM vendas AS v RIGHT JOIN clientes AS c ON c.email=v.cliente;

SELECT eventos.descricao, (ingressos.valor * ingressos.qtde) AS total FROM eventos JOIN ingressos ON eventos.idevento=ingressos.evento;
-- Não sei se era exatamente isso que você queria mas você disse total da tabela ingressos e não da venda realizada então é isso aí

