/*Script para alteração de tabelas*/

ALTER TABLE fornecedor
    ADD atrasa BIT NULL;

ALTER TABLE pagamento
    ADD devedor BIT NOT NULL;

    UPDATE vendedor SET nomeCompleto = 'Agnes Hendricks'
        WHERE id = 7;

/*A Query a seguir deverá ser executada conjuntamente
para que o nome da coluna seja alterado e
haja a possibilidade de se obter a opção de nulidade*/

EXEC SP_RENAME 'telefone' 'contato';
ALTER TABLE cliente
    MODIFY contato varchar(13) NULL;


