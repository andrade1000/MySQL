/**
lojinha
@author Jhuly Velasquez Andrade
@version 1.0
*/

create database lojinhajhuly2;
use lojinhajhuly2;

-- timestamp default current_timestamp (data e hora automatica)
-- date (tipo de datos relacionado a data YYYYMMDD)
create table produtos(
    codigo int primary key auto_increment,
    barcode varchar(255),
    produto varchar(255) not null,
    descrição varchar(255) not null,
    fabricante varchar(255) not null,
    datacard timestamp default current_timestamp,
    dataval date not null,
    estoque int not null,
    estoquemin int not null,
    unidade varchar(255) not null,
    localizacao varchar(255),
    custo decimal(10,2) not null,
    lucro decimal(10,2),
    venda decimal(10,2)
    );
    describe produtos;
    
    insert into produtos(barcode,produto,escricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values
    ('1234567899','chocolate','chocotale garoto','nestle',2013456,20,5,'un','salgadinho2',0.75,100,1.50);
    
    

select * from produtos;

select produto,quantidade,valor from produtos order by produto;

update produtos set valor=3.85 where codigo=2;

delete from produtos where codigo=6;

select * from produtos;

insert into produtos (produto,quantidade,valor)
values ('chiclete ','22','0.50');


/**
lojinha
@author Jhuly Velasquez Andrade
@version 1.1
*/

create table usuarios(
    idusu int primary key auto_increment,
    usuario varchar(255) not null,
    login varchar(255) not null unique,
    senha varchar(255) not null,
    perfil varchar(255) not null
    );

    
describe usuarios;

-- para inserir uma senha com criptografia usamos md5()
insert into usuarios(usuario,login,senha,perfil)
values('administrador','admin',md5('admin'),'admin');
insert into usuarios(usuario,login,senha,perfil)
values('jhuly velasquez','jhuly_andrade',md5('123456'),'user');
select * from usuarios;

-- acessando o sistema pela tela de login
-- and (função logica onde todas as condiçoes devem ser verdadeiras)
select * from usuarios where login='admin' and senha=md5('admin');


    