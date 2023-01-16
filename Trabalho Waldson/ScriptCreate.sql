/*Script para criação das tabelas*/

CREATE TABLE categoria(
    id smallint PRIMARY KEY identity(1,1),
    nome varchar(30) NOT NULL
)

CREATE TABLE fornecedor(
    id smallint PRIMARY KEY identity(1,1),
    cnpj varchar(18) NOT NULL,
    nome varchar(100) NOT NULL
)

CREATE TABLE pagamento(
    id tinyint PRIMARY KEY identity(1,1),
    forma_pagamento varchar(45) NOT NULL
)

CREATE TABLE vendedor(
    id tinyint PRIMARY KEY identity(1,1),
    nomeCompleto varchar(100) NOT NULL,
)

CREATE TABLE cliente(
    id int PRIMARY KEY identity(1,1),
    nomeCompleto varchar(100) NOT NULL,
    telefone varchar(13) NOT NULL,
    email varchar(80) NOT NULL
)

CREATE TABLE venda(
    id int PRIMARY KEY identity(1,1),
    id_cliente int NOT NULL,
    id_vendedor tinyint NOT NULL,
    id_pagamento tinyint NOT NULL,
    valor_total decimal(7,2) NOT NULL, 
    data DATETIME NOT NULL, 
    CONSTRAINT FK_id_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id),
    CONSTRAINT FK_id_vendedor FOREIGN KEY (id_vendedor) REFERENCES vendedor (id),
    CONSTRAINT FK_id_pagamento FOREIGN KEY (id_pagamento) REFERENCES pagamento (id)
)

CREATE TABLE produto(
    id int PRIMARY KEY identity(1,1),
    id_categoria smallint NOT NULL,
    id_fornecedor smallint NOT NULL,
    nome varchar(70) NOT NULL,
    preco decimal(6,2),
    qtd_estoque int NOT NULL,
    CONSTRAINT FK_id_categoria FOREIGN KEY (id_categoria) REFERENCES categoria (id),
    CONSTRAINT FK_id_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES fornecedor (id)
)

CREATE TABLE venda_produto(
    id int PRIMARY KEY identity(1,1),
    id_venda int NOT NULL,
    id_produto int NOT NULL,
    CONSTRAINT FK_id_venda FOREIGN KEY (id_venda) REFERENCES venda (id),
    CONSTRAINT FK_id_produto FOREIGN KEY (id_produto) REFERENCES produto (id)
)
