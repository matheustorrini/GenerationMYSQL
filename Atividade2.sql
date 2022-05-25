-- Atividade 2

-- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
-- Insira nesta tabela no mínimo 8 dados (registros).
-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
-- Ao término atualize um registro desta tabela através de uma query de atualização.
-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL)
 -- e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.





create database db_maze;
use db_maze;

create table tb_products (

id bigint(5) auto_increment,
nome varchar(40) not null,
marca varchar(20) not null,
valor decimal(10,2) not null,
quantidade bigint (7),

primary key (id)

);

insert into tb_products (nome, marca, valor, quantidade) values ("Camiseta KING", "Adidas", 139.90, 22);
insert into tb_products (nome, marca, valor, quantidade) values ("Camisa Polo Rick and Morty", "Rip and Dip", 302.10, 10);
insert into tb_products (nome, marca, valor, quantidade) values ("Tenis Azul Old Skook", "Vans", 388.99, 55);
insert into tb_products (nome, marca, valor, quantidade) values ("Tenis Jordan Vermelho", "Nike", 900.99, 5);
insert into tb_products (nome, marca, valor, quantidade) values ("Tenis Adistar Rosa Pink", "Adidas", 2000.00, 4);

select * from tb_products where valor > 500;

select * from tb_products where valor < 500;