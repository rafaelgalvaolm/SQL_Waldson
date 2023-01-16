-- Valor da venda
SELECT v.valor_total AS Valor, c.nomeCompleto AS Nome, 
p.forma_pagamento AS Forma_de_pagamento FROM venda v
    INNER JOIN cliente c 
        ON v.id_cliente = c.id
    LEFT JOIN pagamento p 
        ON v.id_pagamento = p.id
    WHERE p.id = 5;

--Produtos Ligados à uma venda
SELECT p.nome AS Nome_do_Produto, id_venda AS ID_da_Venda FROM produto p
    INNER JOIN venda_produto vp
        ON vp.id_produto = p.id
    WHERE vp.id_venda = 9;

--SubQuery para descobrir o vendedor com maior total de vendas
SELECT ve.nomeCompleto, v.Total_Vendido FROM vendedor ve
    INNER JOIN (
        SELECT TOP 1 id_vendedor, COUNT(id) AS Total_Vendido
        FROM venda 
            GROUP BY id_vendedor
            ORDER BY Total_Vendido DESC
    ) v 
        ON v.id_vendedor = ve.id

