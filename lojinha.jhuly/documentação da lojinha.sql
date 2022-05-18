/**
minha lojinha
@Jhuly Velasquez Andrade
*/
show databases;

create database teste;
create database lojinhajhuly;

use lojinhajhuly;

create table loja (
   id int primary key auto_increment,
   nome varchar(255) not null,
   estoque varchar(255) not null,
   quantidade varchar(255) not null,
   produto varchar(255) not null,
   valor varchar(255)
);

show tables;
describe loja;

drop table loja;
