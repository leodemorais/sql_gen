-- Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar.
-- O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos
-- e tb_categorias, que deverão estar relacionadas.

CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
CREATE TABLE tb_categorias(
id_categorias bigint auto_increment,
tipo varchar(50) NOT NULL,
fabricante varchar (50),
PRIMARY KEY(id_categorias)
);


-- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
CREATE TABLE tb_produtos(
id_produtos bigint auto_increment,
nome varchar(255) NOT NULL,
preco decimal(4, 2),
validade date NULL,
controlado boolean,
categoria_id bigint,
PRIMARY KEY(id_produtos),
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id_produtos)
);


-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(tipo, fabricante) 
VALUES('Antibióticos', 'Alergan');
INSERT INTO tb_categorias(tipo, fabricante) 
VALUES('Analgésicos', 'Prati');
INSERT INTO tb_categorias(tipo, fabricante)  
VALUES('Higiene', 'Colgate');
INSERT INTO tb_categorias(tipo, fabricante)  
VALUES('Cosméticos', 'Gessy-Lever');
INSERT INTO tb_categorias(tipo, fabricante)  
VALUES('Mercado', 'Outros');


-- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira 
-- para criar a relação com a tabela tb_categorias.
INSERT INTO tb_produtos(nome, preco, validade, controlado, categoria_id)
VALUES('novalgina', 26.70 , '20/09/2025', false , 1);
INSERT INTO tb_produtos(nome, preco, validade, controlado, categoria_id)
VALUES('ceci', 100.99 , '12/01/2026', true, 2);
INSERT INTO tb_produtos(nome, preco, validade, controlado, categoria_id)
VALUES('escova de dentes', 5.80, '06/09/2025', false , 3);
INSERT INTO tb_produtos(nome, preco, validade, controlado, categoria_id)
VALUES('gel para cabelo', 18.00, '22/02/2023', false, 4);
INSERT INTO tb_produtos(nome, preco, validade, controlado, categoria_id)
VALUES('chocolate', 6.50, '04/12/2023', false, 5);
INSERT INTO tb_produtos(nome, preco, validade, controlado, categoria_id)
VALUES('enxaguante bucal', 16.80, '14/03/2026', false, 3);
INSERT INTO tb_produtos(nome, preco, validade, controlado, categoria_id)
VALUES('vaso de flores', 36.70, '19/03/2023', false, 5);
INSERT INTO tb_produtos(nome, preco, validade, controlado, categoria_id)
VALUES('rivotril', 60.50, '07/11/2025', true, 1);


-- Faça um SELECT que retorne todas os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- Faça um SELECT que retorne todas os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas os produtos que possuam a letra "c" no atributo sabor.
SELECT * FROM tb_produtos WHERE sabor LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * 
	FROM tb_produtos
    INNER JOIN tb_categorias 
    ON tb_produtos.categoria_id = tb_categorias.id_categorias; 
    
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todas os produtos que pertençam a categoria cosméticos).    
SELECT * 
	FROM tb_produtos 
    INNER JOIN tb_categorias 
    ON tb_produtos.categoria_id = tb_categorias.id_categorias 
    WHERE tb_categorias.tipo = 'Mercado';






