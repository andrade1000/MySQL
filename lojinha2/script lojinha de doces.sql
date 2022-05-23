/**
lojinha
@author Jhuly Velasquez Andrade
@version 1.0
*/

create database lojinhajhuly2;
use lojinhajhuly2;
create table produtos(
    codigo int primary key auto_increment,
    produto varchar(255) not null,
    quantidade int not null,
    valor decimal(10,2)
    );
    describe produtos;
    
insert into produtos (produto,quantidade,valor)
values ('chocolate suflair','10','4.00');
insert into produtos (produto,quantidade,valor)
values ('Chiclete trident','23','2.00');
insert into produtos (produto,quantidade,valor)
values ('Pão de Mel Bauducco','9','8.00');
insert into produtos (produto,quantidade,valor)
values ('Alfajor Milka','18','3.50');
insert into produtos (produto,quantidade,valor)
values ('Bolinhos Ana Maria','26','4.60');
insert into produtos (produto,quantidade,valor)
values ('Refrigerante Coca-Cola','13','8.50');
select * from produtos;

select produto,quantidade,valor from produtos order by produto;

update produtos set valor=3.85 where codigo=2;

delete from produtos where codigo=6;

select * from produtos;

insert into produtos (produto,quantidade,valor)
values ('chiclete ','22','0.50');
    