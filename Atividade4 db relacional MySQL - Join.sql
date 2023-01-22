-- Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti.
-- O nome do Banco de dados deverá ter o seguinte nome db_cidade_das_carnes ou cidade_dos_vegetais.
-- O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
-- O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.

CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(50) NOT NULL,
frigorífero varchar (50),
PRIMARY KEY(id)
);


-- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da casa de carnes.
CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(50) NOT NULL,
preco decimal(4, 2),
validade date NULL,
procedencia varchar(50),
categoria_id bigint,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);


-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(tipo, frigorífico) 
VALUES('Aves', 'Frigosur');

INSERT INTO tb_categorias(tipo, frigorífico) 
VALUES('Bovinos', 'Master Boi');

INSERT INTO tb_categorias(tipo, frigorífico)  
VALUES('Suínos', 'Minerva');

INSERT INTO tb_categorias(tipo, frigorífico)  
VALUES('Pescados', 'Marfrig');

INSERT INTO tb_categorias(tipo, frigorífico)  
VALUES('Exóticas', 'Rio Maria');


-- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira 
-- para criar a relação com a tabela tb_categorias.
INSERT INTO tb_produtos(nome, preco, validade, procedencia, categoria_id)
VALUES('Costela', 57.70 , '30/01/2023', 'importado' , 1);

INSERT INTO tb_produtos(nome, preco, validade, procedencia, categoria_id)
VALUES('Picanha', 90.80 , '30/01/2023', 'nacional', 1);

INSERT INTO tb_produtos(nome, preco, validade, procedencia, categoria_id)
VALUES('Frango', 25.80, '28/01/2023', 'nacional' , 3);

INSERT INTO tb_produtos(nome, preco, validade, procedencia, categoria_id)
VALUES('Camarão', 50.30, '30/01/2023', 'importado', 4);

INSERT INTO tb_produtos(nome, preco, validade, procedencia, categoria_id)
VALUES('Peru', 34.50, '30/01/2023', 'nacional', 3);

INSERT INTO tb_produtos(nome, preco, validade, procedencia, categoria_id)
VALUES('Jacaré', 60.80, '14/03/2026', 'nacional', 5);

INSERT INTO tb_produtos(nome, preco, validade, procedencia, categoria_id)
VALUES('Bacalhau', 62.70, '19/03/2023', 'importado', 4);

INSERT INTO tb_produtos(nome, preco, validade, procedencia, categoria_id)
VALUES('Pernil', 28.80, '29/01/2023', 'nacional', 2);


-- Faça um SELECT que retorne todas os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- Faça um SELECT que retorne todas os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 150.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas os produtos que possuam a letra "c" no atributo sabor.
SELECT * FROM tb_produtos WHERE sabor LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * 
	FROM tb_produtos
    INNER JOIN tb_categorias 
    ON tb_produtos.categoria_id = tb_categorias.id_categorias; 
    
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todas os produtos que pertençam a categoria  aves ou fruta).    
SELECT * 
	FROM tb_produtos 
    INNER JOIN tb_categorias 
    ON tb_produtos.categoria_id = tb_categorias.id_categorias 
    WHERE tb_categorias.tipo = 'Aves';






