-- Crie um banco de dados para um serviço de uma loja de Material de Construção.
-- O nome do Banco de dados deverá ter o seguinte nome db_construindo_vidas. 
-- O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
-- O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.

CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
-- relevantes para classificar os produtos.
CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(50) NOT NULL,
procedencia varchar(50),

PRIMARY KEY(id)
);


-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(tipo, procedencia) 
VALUES('Banheiro', 'Nacional');

INSERT INTO tb_categorias(tipo, procedencia)  
VALUES('Elétrica', 'Nacional e Importado');

INSERT INTO tb_categorias(tipo, procedencia)   
VALUES('Pisos e revestimentos', 'Nacional');

INSERT INTO tb_categorias(tipo, procedencia)  
VALUES('Tintas', 'Nacional');

INSERT INTO tb_categorias(tipo, procedencia)  
VALUES('Materiais de construção', 'Nacional e Importado');

SELECT * FROM tb_categorias;


-- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, 
-- relevantes aos produtos da loja.
CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(50) NOT NULL,
preco double,
marca varchar(50),
quantidade int,
promocao boolean,
categoria_id bigint,

PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);


-- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira 
-- para criar a relação com a tabela tb_categorias.
INSERT INTO tb_produtos(nome, preco, marca, quantidade, promocao, categoria_id)
VALUES('Torneira para Lavatório de Bancada', 70.00 , 'Matic' , 2 , false,  1);

INSERT INTO tb_produtos(nome, preco, marca, quantidade, promocao, categoria_id)
VALUES('Placa 4x2 2 Postos', 5.00 , 'Schneidera', 8 , true,  1);

INSERT INTO tb_produtos(nome, preco, marca, quantidade, promocao, categoria_id)
VALUES('Porcelanato Canela Acetinado Retificado', 150.00 , 'Portobello', 24, true,  1);

INSERT INTO tb_produtos(nome, preco, marca, quantidade, promocao, categoria_id)
VALUES('Tinta Impermeável para Parede', 170.00 , 'Vedacit Vedapren', 5, false,  1);

INSERT INTO tb_produtos(nome, preco, marca, quantidade, promocao, categoria_id)
VALUES('Argamassa Cimentcola Externo ', 48.50 , 'Quartzolit', 20, true,  1);

INSERT INTO tb_produtos(nome, preco, marca, quantidade, promocao, categoria_id)
VALUES('Tricha 700 1/2" ', 18.00 , 'Condor', 3 , false,  1);

INSERT INTO tb_produtos(nome, preco, marca, quantidade, promocao, categoria_id)
VALUES('Bloco de Vidro 19x19cm Translúcido', 38.00 , 'Seven', 10 , false,  1);

INSERT INTO tb_produtos(nome, preco, marca, quantidade, promocao, categoria_id)
VALUES('Pedra Ensacada', 8.00 , 'AB Areias', 20, false,  1);

SELECT * FROM tb_produtos;

-- Faça um SELECT que retorne todas os produtos cujo valor seja maior do que R$ 100,00.
SELECT * FROM tb_produtos WHERE preco > 100.00;

-- Faça um SELECT que retorne todas os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas os produtos que possuam a letra "p" no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE "%p%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * 
	FROM tb_produtos
    INNER JOIN tb_categorias 
    ON tb_produtos.categoria_id = tb_categorias.id; 
    
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todas os produtos que pertençam a categoria  aves ou fruta).    
SELECT * 
	FROM tb_produtos 
    INNER JOIN tb_categorias 
    ON tb_produtos.categoria_id = tb_categorias.id 
    WHERE tb_categorias.tipo = 'Materiais de construção';






