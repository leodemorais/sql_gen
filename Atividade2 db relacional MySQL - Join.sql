-- Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. 
-- O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas
-- e tb_categorias, que deverão estar relacionadas.
-- O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes para classificar as pizzas.
CREATE TABLE tb_categorias(
id_categorias bigint auto_increment,
variedade varchar (50),
preparacao varchar (50),
PRIMARY KEY(id_categorias)
);

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(variedade, preparacao) 
VALUES('especial', 'forno à gas');
INSERT INTO tb_categorias(variedade, preparacao) 
VALUES('tradicional', 'forno à lenha');
INSERT INTO tb_categorias(variedade, preparacao)  
VALUES('legitima', 'forno siciliano');
INSERT INTO tb_categorias(variedade, preparacao)  
VALUES('moda da casa', 'forno elétrico');
INSERT INTO tb_categorias(variedade, preparacao)  
VALUES('personalizada', 'cliente escolhe');


-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
CREATE TABLE tb_pizzas(
id_pizzas bigint auto_increment,
sabor varchar(60),
tamanho varchar(50),
valor decimal(4,2),
borda boolean,
categoria_id bigint,
PRIMARY KEY(id_pizzas),
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id_categorias)
);

-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira 
-- para criar a relação com a tabela tb_categorias.
INSERT INTO tb_pizzas(sabor, tamanho, valor, borda, categoria_id) 
VALUES('Napolitana', 'médio', 40.00, true, 1);
INSERT INTO tb_pizzas(sabor, tamanho, valor, borda, categoria_id) 
VALUES('Portuguesa', 'grande', 80.00, false, 2);
INSERT INTO tb_pizzas(sabor, tamanho, valor, borda, categoria_id) 
VALUES('Margherita', 'brotinho', 20.00, true, 3);
INSERT INTO tb_pizzas(sabor, tamanho, valor, borda, categoria_id) 
VALUES('Frango à Bolonhesa', 'médio', 50.00, false, 3);
INSERT INTO tb_pizzas(sabor, tamanho, valor, borda, categoria_id) 
VALUES('Quatro Queijos', 'gigante', 120.00, true, 4);
INSERT INTO tb_pizzas(sabor, tamanho, valor, borda, categoria_id) 
VALUES('Calabresa', 'médio', 40.00, false, 1);
INSERT INTO tb_pizzas(sabor, tamanho, valor, borda, categoria_id) 
VALUES('Brigadeiro', 'grande', 80.00, false, 2);
INSERT INTO tb_pizzas(sabor, tamanho, valor, borda, categoria_id) 
VALUES('Goiabada com Queijo', 'médio', 40.00, false, 4);

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra "m" no atributo sabor.
SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * 
	FROM tb_pizzas 
    INNER JOIN tb_categorias 
    ON tb_pizzas.categoria_id = tb_categorias.id_categorias; 
    
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, 
-- onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).    
SELECT * 
	FROM tb_pizzas 
    INNER JOIN tb_categorias 
    ON tb_pizzas.categoria_id = tb_categorias.id_categorias 
    WHERE tb_categorias.variedade = 'tradicional';






