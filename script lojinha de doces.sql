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
    
    create table usuarios (
	idusu int primary key auto_increment,
    usuario varchar(255) not null,
    login varchar(255) not null unique,
    senha varchar(255) not null,
    perfil varchar(255) not null
);


    describe produtos;
    
    insert into produtos(barcode,produto,descrição,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('1234567890','chocolate','chocotale garoto','nestle',20130456,20,5,'un','salgadinho',0.75,100,50);
    
    insert into produtos(barcode,produto,descrição,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('1111111111','chiclete','chiclete trident','trident',20130456,20,5,'un','chiclete',0.75,100,50);
    
    insert into produtos(barcode,produto,descrição,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('2222222222','bala','Bala de iogurte no formato de coração','yogurt',20130556,20,5,'un','bala',0.25,100,25);
    
    insert into produtos(barcode,produto,descrição,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('3333333333','Pirulito','Pirulito com chiclete no interior','',22330556,100,74,'un','Pirulito com chiclete no interior',0.75,500,25);
    
    insert into produtos(barcode,produto,descrição,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('4444444444','Barra de chocolate','Chocolate Ovomaltine Hershey','Chocolate Hersheys',20130256,78,65,'un','Chocolate Ovomaltine Hersheys',6.25,700,85);
    
    insert into produtos(barcode,produto,descrição,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('5555555555','Pipoca','Pipoca de microondas','Yoki',20156256,88,65,'un','pipoca de microondas',3.60,600,41);
    
    insert into produtos(barcode,produto,descrição,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('6666666666','Biscoitos','Wafers','Bauducco',54156256,98,54,'un','biscoito wafers Bauducco',2.75,900,501);
    
    insert into produtos(barcode,produto,descrição,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('777777777','Salgadinhos','queijo','Fandangos',54155456,65,24,'un','Salgadinho queijo fandangos',2.00,600,261);
    
    insert into produtos(barcode,produto,descrição,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('888888888','Salgadinhos','cebola','Cebolitos',58155456,180,85,'un','Salgadinho cebola cebolitos',3.50,800,671);
    
    insert into produtos(barcode,produto,descrição,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('999999999','Biscoitos','Cookie','Toddy',32565456,200,155,'un','Biscoitos de Cookie Toddy',3.80,500,121);
    
    
select * from produtos;







create table cliente (
   idcli int primary key auto_increment,
   nome varchar(255) not null,
   fone varchar(255) not null,
   cpf varchar(255) unique,
   email varchar(255),
   marketing varchar(255) not null,
   cep varchar(255),
   endereco varchar(255),
   numero varchar(255),
   complemento varchar(255),
   bairro varchar(255),
   cidade varchar(255),
   uf char(2)
   );
   
   alter table produtos modify column barcode varchar(255) unique; 
alter table clientes add column nascimento date;
describe clientes;
select * from clientes;
insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Marcos Alvez da Silva','99710-1456','353.557.564-84','marcosalvez@gmail.com','sim','68555-903','Avenida Xingu','359','','Centro','Xinguara','PA',19840508);

insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Vanessa Ramos ','98167-4196','901.259.681-59','vanessaramos@gmail.com','não','25961-030','Praça Nilo Peçanha','910','','Alto','Teresópolis','RJ',19880312);

insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Gabriela Viscarra','99110-3507','606.949.631-00','gabrielaviscarra@gmail.com','não','69911-122','Rua Rádio Farol','683','','Glória','Rio Branco','AC',19470222);

insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Daniel gonsalves','99570-9759','044.258.771-60','danielgosnsalves@gmail.com','sim','74175-130','Rua 1128','965','','Setor Marista','brasilia','GO',19680522);

insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Jhuly Velasquez Andrade','98946-4438','373.969.786-53','jhulyvelasquez@gmail.com','não','49089-447','Rua J','132','','Soledade','Aracaju','SE',19860413);

insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Mario rodrigues','99546-5470','771.343.358-95','mariorodrigues@gmail.com','sim','54325-570','Rua Dona Bela','539','','Guararapes','Jaboatão dos Guararapes','PE',20020321);

update clientes set fone='99451-1212' where idcli=4;

delete from clientes where idcli=1;

select nome as Nome,
fone as Telefone,
email as Email 
from clientes;

select nome as Nome,
nascimento as Data_de_Nascimento
from clientes;

select * from clientes where marketing='Sim';
   




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

delete from produtos where codigo=6;
delete from produtos where codigo=2;
delete from produtos where codigo=3;







    