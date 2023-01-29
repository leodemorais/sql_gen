-- Crie um banco de dados para uma plataforma de Cursos Online (EAD).
-- O nome do Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida.
 -- O sistema trabalhará com as informações dos cursos comercializados pela empresa. 
 -- O sistema trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar relacionadas.

CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

-- Crie a tabela tb_categorias e determine 4 atributos, além da Chave Primária,
-- relevantes para determinar as categorias.

CREATE TABLE tb_categorias(
id bigint auto_increment,
area_de_conhecimento varchar(50) NOT NULL,
campus varchar(50),
coordenacao varchar(40),
conceito varchar(20),
PRIMARY KEY(id)
);

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(area_de_conhecimento, campus, coordenacao, conceito) VALUES('Ciência e Tecnologia', 'Betim', 'Antonio De Franceschi', 'B');

INSERT INTO tb_categorias(area_de_conhecimento, campus, coordenacao, conceito) VALUES('Ciência e Tecnologia', 'EAD', 'Roberto Piva', 'B');

INSERT INTO tb_categorias(area_de_conhecimento, campus, coordenacao, conceito) VALUES('Ciência e Tecnologia', 'Belo Horizonte', 'Claudio Willer', 'A');

INSERT INTO tb_categorias(area_de_conhecimento, campus, coordenacao, conceito) VALUES('Ciência e Tecnologia', 'Barreiro', 'Rodrigo de Haro', 'A');

INSERT INTO tb_categorias(area_de_conhecimento, campus, coordenacao, conceito) VALUES('Ciência e Tecnologia', 'EAD', 'Roberto Bicelli', 'A');

SELECT * FROM tb_categorias;

-- Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, 
-- relevantes aos cursos oferecidos.
CREATE TABLE tb_cursos(
id bigint auto_increment,
nome varchar(50) NOT NULL,
modalidade varchar(50),
turno varchar(50),
nivel varchar(50),
mensalidade decimal(5, 2) not null,
categoria_id bigint,

PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id) 
);

-- Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira 
-- para criar a relação com a tabela tb_categorias.

INSERT INTO tb_cursos(nome, modalidade, turno, nivel, mensalidade, categoria_id) 
VALUES('Gestão da Tencologia da Informação', 'EAD', '', 'Pós-Graduação', 250.00, 2);

INSERT INTO tb_cursos(nome, modalidade, turno, nivel, mensalidade, categoria_id) 
VALUES('Sistemas para Internet', 'Presencial', 'Noturno', 'Graduação', 290.00, 1);

INSERT INTO tb_cursos(nome, modalidade, turno, nivel, mensalidade, categoria_id) 
VALUES('Ciência de Dados', 'Presencial', 'Diurno', 'Pós-Graduação', 320.00, 2);

INSERT INTO tb_cursos(nome, modalidade, turno, nivel, mensalidade, categoria_id) 
VALUES('Engenharia de Software', 'Híbrido', 'Noturno', 'Graduação', 350.00, 1);

INSERT INTO tb_cursos(nome, modalidade, turno, nivel, mensalidade, categoria_id) 
VALUES('Devops', 'EAD', '', 'Pós-Graduação', 250.00, 2);

INSERT INTO tb_cursos(nome, modalidade, turno, nivel, mensalidade, categoria_id) 
VALUES('Ciências da Computação', 'Presencial', 'Diurno', 'Graduação', 300.00, 1);

INSERT INTO tb_cursos(nome, modalidade, turno, nivel, mensalidade, categoria_id) 
VALUES('Sistemas de Informação', 'Híbrido', 'Noturno', 'Graduação', 250.00, 1);

INSERT INTO tb_cursos(nome, modalidade, turno, nivel, mensalidade, categoria_id) 
VALUES('Filosofia da Técnica', 'EAD', '', 'Pós-Graduação', 180.00, 2);


SELECT * FROM tb_cursos;

-- Faça um SELECT que retorne todas as mensalidades cujo valor seja maior do que R$ 300,00.
SELECT * FROM tb_cursos WHERE mensalidade > 300.00;

-- Faça um SELECT que retorne todas os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_cursos WHERE mensalidade BETWEEN 200.00 AND 300.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas os produtos que possuam a letra "c" no atributo nome.
SELECT * FROM tb_cursos WHERE nome LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
SELECT * 
	FROM tb_cursos
    INNER JOIN tb_categorias 
    ON tb_cursos.categoria_id = tb_categorias.id; 
    
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todas os produtos que pertençam a categoria cosméticos).    
SELECT * 
	FROM tb_cursos 
    INNER JOIN tb_categorias 
    ON tb_cursos.categoria_id = tb_categorias.id
    WHERE categoria_id = 2;
