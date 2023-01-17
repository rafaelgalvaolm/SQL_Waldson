-----------------------------------UPDATE----------------------------------------------------
CREATE PROCEDURE [SP.Incremento_de_Estoque]

    AS

    /*Documentação
    Arquivo Fonte...........: procedure.sql
    Objetivo................: Incrementar em 100 a quantidade de produtos no estoque
    Autor...................: Rafael Galvão
    Data....................: 16/01/2023
    Ex......................: EXEC [SP.Incremento_de_Estoque]
    código de retorno.......: 0 - Execução OK
                            
    */

    BEGIN

        DECLARE @incremento INT = 100;
            UPDATE produto SET qtd_estoque = qtd_estoque 
            + @incremento;
            
        RETURN 0

    END
