/**
Agenda de contatos
@Jhuly Velasquez Andrade
*/

-- Verificar Banco de Dados
show databases;

-- Criar um novo Banco de Dados
create database teste;
create database agendajhuly;

-- Excluir um banco de dados
drop database teste;

-- Selecionar o banco de dados
use agendajhuly;

-- criando uma tabela
-- int -> tipo de dados - numeros inteiro
-- decimal (10,2) -> tio de dados - numeros não inteiros 
-- (10,2) 10 digitos com 2 casas decimais 
-- primary key (transforma o campo em chave primaria)
-- auto_increment (numeração automatica)
-- varchar(255) -> tipo de dados String (com variação)
-- char(255) -> tipo de dados String (sem variação)
-- (255) -> maximo de caracteres
-- not null (obrigatorio o preenchimento)

create table contatos (
   id int primary key auto_increment,
   nome varchar(255) not null,
   fone varchar(255) not null,
   email varchar(255)
);

-- verificar tabelas do banco
show tables;

-- descrever a tabela 
describe contatos;

-- adicionando uma coluna (campo) a tabela
alter table contatos add column obs varchar(255);

alter table contatos add column fone2 varchar(255) after fone;

-- adicionando uma coluna (campo) a tabela após um campo 
alter table contatos add column cel varchar(255) after fone;

-- modificando uma propriedade da coluna(campo) tabela
alter table contatos modify column cel varchar(255) not null;

-- excluir uma coluna (campo) da tabela 
alter table contatos drop column obs;

-- excluir a tabela 
drop table contatos;

describe contatos;



