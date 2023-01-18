create database exercicio1;

use exercicio1;

create table colaboradores(
	id int not null auto_increment,
    nome varchar(150) not null,
    salario decimal(8,2) not null,
    cargo varchar(50) not null,
    setor varchar(30),
    primary key(id)

);

select * from colaboradores;

insert into colaboradores (nome, salario, cargo, setor) 
	values ('Thiago', '1234.56', 'instrutor', 'aulas');
    
    insert into colaboradores (nome, salario, cargo, setor) 
	values ('Rafael', '1234.56', 'instrutor', 'aulas');
    
    insert into colaboradores (nome, salario, cargo) 
	values ('Leonardo', '1234.56', 'aluno');
    
    insert into colaboradores (nome, salario, cargo) 
	values ('Matheus', '12340.56', 'aluno');
    
    insert into colaboradores (nome, salario, cargo) 
	values ('Celina', '1234.56', 'aluno');
    
 select * from colaboradores where salario > 2000;
 
 select nome, salario from colaboradores where salario < 2000;
 
 update colaboradores set salario = 3000 where id = 5; 
 
 
 