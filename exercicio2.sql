create database exercicio2;

use exercicio2;

create table produtos(
	id int not null auto_increment,
    nome varchar(150) not null,
    valor decimal(8,2) not null,
    marca varchar(50) not null,
    codigo varchar(30),
    primary key(id)
);

select * from produtos;

insert into produtos (nome, valor, marca, codigo) 
	values ('sofá', '2000.50', 'lint', '11111-1');
    
    insert into produtos (nome, valor, marca, codigo) 
	values ('cadeira', '400.50', 'lint', '22222-1');
    
    insert into produtos (nome, valor, marca, codigo) 
	values ('mesa', '1500.20', 'lint', '33333-1');
    
    insert into produtos (nome, valor, marca, codigo) 
	values ('estante', '2500.30', 'lint', '44444-1');
    
    insert into produtos (nome, valor, marca, codigo) 
	values ('banqueta', '99.99', 'lint', '55555-1');
    
    insert into produtos (nome, valor, marca, codigo) 
	values ('abajur', '200.00', 'lint', '66666-1');
    
    insert into produtos (nome, valor, marca, codigo) 
	values ('poltrona', '700.90', 'lint', '77777-1');
    
    insert into produtos (nome, valor, marca, codigo) 
	values ('espelho', '145.50', 'lint', '88888-1');
    
     select * from produtos where valor > 500;
     
     select * from produtos where valor < 500;
     
     update produtos set valor = 499.90 where id = 2; 
    
    