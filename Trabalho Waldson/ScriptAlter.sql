/*Script para alteração de tabelas*/

ALTER TABLE fornecedor
    ADD atrasa BIT NULL;

ALTER TABLE pagamento
    UPDATE SET forma_pagamento = 'fiado'
        WHERE id = 5;

ALTER TABLE vendedores
    UPDATE SET nomeCompleto = 'Agnes Hendricks'
        WHERE id = 7;

/*A Query a seguir deverá ser executada conjuntamente
para que o nome da coluna seja alterado e
haja a possibilidade de se obter a opção de nulidade*/

ALTER TABLE cliente 
    RENAME COLUMN telefone TO contato;
ALTER TABLE cliente
    MODIFY contato varchar(13) NULL;


