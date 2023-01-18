create database exercicio3;

use exercicio3;

create table escola(
	id int not null auto_increment,
    nome varchar(150) not null,
    turma varchar(50) not null,
    media decimal(8,2),
    matricula varchar(30) not null,
    primary key(id)
);

select * from escola;

insert into escola (nome, turma, media, matricula) 
	values ('André Resende', '1º ano Ensino Médio', '8.5', '11111-1');
    
    insert into escola (nome, turma, media, matricula) 
	values ('Bárbara Oliveira', '1º ano Ensino Médio', '7.2', '22222-1');
    
    insert into escola (nome, turma, media, matricula) 
	values ('Carla Malta', '1º ano Ensino Médio', '9.1', '33333-1');
    
    insert into escola (nome, turma, media, matricula) 
	values ('Ana Machado', '2º ano Ensino Médio', '6.8', '11111-2');
    
    insert into escola (nome, turma, media, matricula) 
	values ('Beatriz Moreira', '2º ano Ensino Médio', '8.7', '22222-2');
    
    insert into escola (nome, turma, media, matricula) 
	values ('Clara Renda', '2º ano Ensino Médio', '9.5', '33333-2');
    
    insert into escola (nome, turma, media, matricula) 
	values ('Aurora Duarte', '3º ano Ensino Médio', '6.9', '11111-3');
    
    insert into escola (nome, turma, media, matricula) 
	values ('Denise Simões', '3º ano Ensino Médio', '9.5', '22222-1');
    
    select * from escola where media > 7.0;
    
    select * from escola where media < 7.0;
    
    update escola set media = 7.1 where id = 4;