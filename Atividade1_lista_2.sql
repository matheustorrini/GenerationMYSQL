
-- Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online.
-- O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.
-- Boas Práticas:
-- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
-- Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
-- Insira 5 registros na tabela tb_classes.
-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens
-- que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes (
MultiversoId bigint (5) auto_increment,
Organização varchar (50) not null, 
Proteção boolean,

primary key (MultiversoId)

);

create table tb_personagens (

nome varchar (50) not null,
level_power bigint (1) not null,
Organização varchar (50) ,
Multiverso_Id bigint (5),

primary key (Organização),
foreign key (Multiverso_Id) references tb_classes (MultiversoID)
);

insert into tb_classes (MultiversoId, Organização, Proteção) values (1, "Liga da Justiça", true);
insert into tb_classes (MultiversoId, Organização, Proteção) values (2, "Vingadores", true);
insert into tb_classes (MultiversoId, Organização, Proteção) values (3, "Defensores", true);
insert into tb_classes (MultiversoId, Organização, Proteção) values (4, "Outsiders", true);
insert into tb_classes (MultiversoId, Organização, Proteção) values (5, "Justiça Jovem", true);
insert into tb_classes (MultiversoId, Organização, Proteção) values (6, "Liga da Injustiça", false);
insert into tb_classes (MultiversoId, Organização, Proteção) values (7, "Thano's Army", false);

insert into tb_personagens (nome, level_power, Organização, Multiverso_Id) values ("Superman", 8, "Liga da Justiça", 1);
insert into tb_personagens (nome, level_power, Organização, Multiverso_Id) values ("Wanda", 9, "Vingadores", 2);
insert into tb_personagens (nome, level_power, Organização, Multiverso_Id) values ("Mutano", 4, "Outsiders", 4);
insert into tb_personagens (nome, level_power, Organização, Multiverso_Id) values ("Jessica Jones", 2, "Defensores", 3);
insert into tb_personagens (nome, level_power, Organização, Multiverso_Id) values ("Aqualad", 5, "Justiça Jovem", 5);
insert into tb_personagens (nome, level_power, Organização, Multiverso_Id) values ("Bizarro", 8, "Liga da Injustiça", 6);
insert into tb_personagens (nome, level_power, Organização, Multiverso_Id) values ("Thanos", 6, "Thano's Army", 7);
insert into tb_personagens (nome, level_power, Organização, Multiverso_Id) values ("Robin", 1, "Justiça Jovem", 5);
insert into tb_personagens (nome, level_power, Organização, Multiverso_Id) values ("Mulher Maravilha", 8, "Liga da Justiça", 1);
insert into tb_personagens (nome, level_power, Organização, Multiverso_Id) values ("Sinestro", 7, "Liga da Injustiça", 6);

select * from tb_personagens where level_power > 2;
select * from tb_personagens where level_power between 3 and 7;
select * from tb_personagens where nome like "%C%";
select * from tb_personagens inner join tb_personagens on tb_personagens.Multiverso_Id = tb_classes.MultiversoId;