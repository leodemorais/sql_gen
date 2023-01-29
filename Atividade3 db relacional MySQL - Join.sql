-- Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar.
-- O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos
-- e tb_categorias, que deverão estar relacionadas.

CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(50) NOT NULL,
fabricante varchar (50),
PRIMARY KEY(id)
);


-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(tipo, fabricante) VALUES ('Antibióticos', 'Alergan');
INSERT INTO tb_categorias(tipo, fabricante) VALUES ('Analgésicos', 'Prati');
INSERT INTO tb_categorias(tipo, fabricante) VALUES ('Higiene', 'Colgate');
INSERT INTO tb_categorias(tipo, fabricante) VALUES ('Cosméticos', 'Gessy-Lever');
INSERT INTO tb_categorias(tipo, fabricante) VALUES ('Mercado', 'Outros');

SELECT * FROM tb_categorias;


-- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(45) not null,
    controlado boolean,
	preco decimal(6, 2) not null,
	validade date, 
    categoria_id bigint,
    
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id) 
);


-- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira 
-- para criar a relação com a tabela tb_categorias.
INSERT INTO tb_produtos(nome, controlado, preco, validade, categoria_id) VALUES('novalgina', false, 26.70 , '2025-09-10', 1);
INSERT INTO tb_produtos(nome, controlado, preco, validade, categoria_id) VALUES('ceci', true, 100.99 , '2026-12-01', 2);
INSERT INTO tb_produtos(nome, controlado, preco, validade, categoria_id) VALUES('escova de dentes', false , 5.80, '2025-09-06', 3);
INSERT INTO tb_produtos(nome, controlado, preco, validade, categoria_id) VALUES('gel para cabelo', false, 18.00, '2023-02-22', 4);
INSERT INTO tb_produtos(nome, controlado, preco, validade, categoria_id) VALUES('chocolate', false, 6.50, '2023-12-04', 5);
INSERT INTO tb_produtos(nome, controlado, preco, validade, categoria_id) VALUES('enxaguante bucal', false, 16.80, '2026-03-14', 3);
INSERT INTO tb_produtos(nome, controlado, preco, validade, categoria_id) VALUES('vaso de flores', false, 36.70, '2023-03-19', 5);
INSERT INTO tb_produtos(nome, controlado, preco, validade, categoria_id) VALUES('rivotril', true, 60.50, '2025-11-07', 1);

SELECT * FROM tb_produtos;

-- Faça um SELECT que retorne todas os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Faça um SELECT que retorne todas os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas os produtos que possuam a letra "c" no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * 
	FROM tb_produtos
    INNER JOIN tb_categorias 
    ON tb_produtos.categoria_id = tb_categorias.id; 
    
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todas os produtos que pertençam a categoria cosméticos).    
SELECT * 
	FROM tb_produtos 
    INNER JOIN tb_categorias 
    ON tb_produtos.categoria_id = tb_categorias.id
    WHERE categoria_id = 4;






