/*Script para inserção de informações dentro das tabelas*/

INSERT INTO categoria (nome)
    VALUES
        ('blusa'),
        ('calça'),
        ('sapato'),
        ('meia'),
        ('acessorio')

INSERT INTO fornecedor (cnpj, nome)
    VALUES 
        ('82.930.264/0001-09', 'Kudan'),
        ('44.084.243/0001-20', 'Hosea'),
        ('13.432.541/0001-30', 'Exquisite Clothing'),
        ('15.572.845/0001-29', 'Tricera'),
        ('56.840.404/0001-48', 'Worn Wear'),
        ('81.404.575/0001-71', 'Chantilly'),
        ('23.183.732/0001-60', 'Tights'),
        ('71.823.147/0001-20', 'Nelly')

 INSERT INTO pagamento (forma_pagamento)
    VALUES
        ('Cartã o de Crédito'),
        ('Cartão de Débito'),
        ('Dinheiro'),
        ('Pix'),
        ('Cheque')

 INSERT INTO vendedor (nomeCompleto)
    VALUES
        ('Anita Sears'),
        ('Maximilian Morse'),
        ('Mohammed Santiago'),
        ('Cleo Meyers'),
        ('Rachael Hurst'),
        ('Kyla Ruiz'),
        ('Agnes Mcconnell'),
        ('Holly Hendricks'),
        ('Lerroy Jenkins'),
        ('Talha Powers')

INSERT INTO cliente (nomeCompleto, telefone, email) 
    VALUES
        ('Esme Harris','(67)920321011','EsmeHarris@gmail.com'),
        ('Kayla Ford','(62)939193445','KaylaFord@gmail.com'),
        ('Reggie ONeill','(68)929624119','ReggieONeill@gmail.com'),
        ('Alicia Booth','(84)934337552','AliciaBooth@gmail.com'),
        ('Susannah Donovan','(79)925336348','SusannahDonovan@gmail.com'),
        ('Franklin Welch','(66)924427514','FranklinWelch@gmail.com'),
        ('Alissa Hammond','(63)920261739','AlissaHammond@gmail.com'),
        ('Henrietta Cobb','(61)936854282','HenriettaCobb@gmail.com'),
        ('Cora Anderson','(79)923438762','CoraAnderson@gmail.com'),
        ('Preston Archer','(61)932163762','PrestonArcher@gmail.com'),
        ('Arnold Brown','(49)937712674','ArnoldBrown@gmail.com'),
        ('Shirley Stanton','(55)926124058','ShirleyStanton@gmail.com'),
        ('Oakley Dotson','(34)935427222','OakleyDotson@gmail.com'),
        ('Maxim Romero','(68)921473873','MaximRomero@gmail.com'),
        ('Harri Suarez','(79)937190230','HarriSuarez@gmail.com'),
        ('Millie Arroyo','(53)925845582','MillieArroyo@gmail.com'),
        ('Betty Thompson','(65)927010233','BettyThompson@gmail.com'),
        ('Taya Burnett','(15)927041827','TayaBurnett@gmail.com')

INSERT INTO venda (id_cliente, id_vendedor, id_pagamento, valor_total, data)
    VALUES 
        (12,3,5,1778.0,'20220817 13:53:10'),
        (8,2,3,6147.9,'20220112 20:53:21'),
        (4,1,3,23075.1,'20230103 11:06:08'),
        (7,1,4,38908.9,'20220412 12:16:53'),
        (9,7,1,1869.55,'20220407 22:49:54'),
        (10,6,1,2543.79,'20220920 11:51:15'),
        (1,4,2,94799.4,'20220908 08:46:50'),
        (15,5,4,99676.0,'20221008 18:20:33'),
        (3,8,3,7177.3,'20220203 15:49:55'),
        (6,3,2,89513.3,'20220309 10:45:49')

INSERT INTO produto (id_categoria, id_fornecedor, nome, preco, qtd_estoque)
    VALUES 
        (2,5,'Jeans Azul Unisex',723.0,10),
        (1,3,'cropped azul',2815.3,13),
        (4,2,'croche cinza',40.62,30),
        (5,8,'chapeu bucket preto',87.7,18),
        (3,6,'mocassin azul',2616.6,34),
        (1,7,'manga longa boyfriend',4617.2,45),
        (1,1,'botão daddy',8292.8,57),
        (2,4,'jeans preto anos 90',2831.8,25),
        (5,8,'carteira cinza',9663.7,12),
        (5,5,'pulseira rose',7171.0,16),
        (3,3,'Jordan dunk mid',2343.8,24),
        (2,6,'pantalona',2616.6,65),
        (1,1,'largada com furo',6481.5,67),
        (4,2,'simples preta',10.5,25),
        (3,5,'LaBotin salto vermelho',8010.0,18),
        (3,7,'LV social marrom',8883.7,12)

INSERT INTO venda_produto (id_venda, id_produto)
    VALUES
        (1,16),
        (1,14),
        (2,3),
        (3,16),
        (3,12),
        (4,3),
        (4,7),
        (5,1),
        (5,5),
        (5,13),
        (5,8),
        (6,4),
        (7,2),
        (7,1),
        (8,13),
        (8,11),
        (9,10),
        (9,4),
        (9,7),
        (9,9),
        (10,12),
        (10,2)
