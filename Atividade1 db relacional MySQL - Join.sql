-- Crie um banco de dados para um serviço de um Games Online. 
-- O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
-- O sistema trabalhará com as informações dos personagens do jogo. 
-- O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária,
-- relevantes para classificar os personagens do Game Online.
CREATE TABLE tb_classes(
id_classes bigint auto_increment,
nome_classes varchar (50),
poder_classes int,
PRIMARY KEY(id_classes)
);

-- Insira 5 registros na tabela tb_classes.
INSERT INTO tb_classes(nome_classes, poder_classes) 
VALUES('Arqueiros', 2500);
INSERT INTO tb_classes(nome_classes, poder_classes) 
VALUES('Cavaleiros', 3000);
INSERT INTO tb_classes(nome_classes, poder_classes) 
VALUES('Magos', 4000);
INSERT INTO tb_classes(nome_classes, poder_classes) 
VALUES('Ladrões', 1800);
INSERT INTO tb_classes(nome_classes, poder_classes) 
VALUES('Lanceiros', 2000);

-- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, 
-- relevantes aos personagens do Game Online.
CREATE TABLE tb_personagens(
id_personagens bigint auto_increment,
nome_personagens varchar(60),
poder_ataque_personagens int,
poder_defesa_personagens int,
nivel_personagens bigint,
classe_id bigint,
PRIMARY KEY(id_personagens),
FOREIGN KEY(classe_id) REFERENCES tb_classes(id_classes)
);

-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira 
-- para criar a relação com a tabela tb_classes.
INSERT INTO tb_personagens(nome_personagens, poder_ataque_personagens, poder_defesa_personagens, nivel_personagens, classe_id) 
VALUES('Volaion', 1500, 2000, 3, 4);
INSERT INTO tb_personagens(nome_personagens, poder_ataque_personagens, poder_defesa_personagens, nivel_personagens, classe_id) 
VALUES('Hiengrin', 500, 4000, 2, 2);
INSERT INTO tb_personagens(nome_personagens, poder_ataque_personagens, poder_defesa_personagens, nivel_personagens, classe_id) 
VALUES('Relgu', 5500, 3000, 4, 2);
INSERT INTO tb_personagens(nome_personagens, poder_ataque_personagens, poder_defesa_personagens, nivel_personagens, classe_id) 
VALUES('Quolo', 1500, 2000, 3, 1);
INSERT INTO tb_personagens(nome_personagens, poder_ataque_personagens, poder_defesa_personagens, nivel_personagens, classe_id) 
VALUES('Foenon', 5500, 3000, 4, 3);
INSERT INTO tb_personagens(nome_personagens, poder_ataque_personagens, poder_defesa_personagens, nivel_personagens, classe_id) 
VALUES('Tova', 1500, 2000, 3, 4);
INSERT INTO tb_personagens(nome_personagens, poder_ataque_personagens, poder_defesa_personagens, nivel_personagens, classe_id)  
VALUES('Sesyothir', 500, 500, 1, 3);
INSERT INTO tb_personagens(nome_personagens, poder_ataque_personagens, poder_defesa_personagens, nivel_personagens, classe_id) 
VALUES('Dahasrao', 700, 900, 1, 1);

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE poder_ataque_personagens > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE poder_defesa_personagens BETWEEN 1500 AND 2000;

-- Faça um SELECT utilizando o operador LIKE, 
-- buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome_personagens LIKE "%C";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens 
-- com os dados da tabela tb_classes.
SELECT nome_personagens, nivel_personagens 
	FROM tb_personagens 
    INNER JOIN tb_classes; 
    
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens 
-- com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam 
-- a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).    
SELECT nome_personagens, nivel_personagens 
	FROM tb_personagens 
    INNER JOIN tb_classes  
    ON tb_personagens.classe_id = tb_classes.id_classes
	WHERE tb_classes.nome_classes = 'Arqueiros';






