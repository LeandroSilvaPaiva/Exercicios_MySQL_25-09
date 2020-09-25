create database db_generation_game_online;
use db_generation_game_online;

create table if not exists tb_personagem(
id_personagem int primary key auto_increment,
nome varchar(45),
idade int,
sexo varchar(10),
nacionalidade varchar(45),
id_classe int,
FOREIGN KEY (id_classe) REFERENCES tb_classe (id_classe)
);

create table if not exists tb_classe(
id_classe int primary key auto_increment,
ataque int,
defesa int
);
insert into tb_classe (ataque, defesa) values 
(3000, 1000), (4000, 2000), (1000, 2000), (3000, 2000), (3000, 1000), (4000, 2000), (1000, 2000), (2000, 1000);

insert into tb_personagem (nome, idade, sexo, nacionalidade, id_classe) values 
('Cleiton', 26, 'Masculino', 'Portugal', 1), ('Bruna', 22, 'Feminina', 'Canadá', 2), 
('Leandro', 26, 'Masculino', 'Brasil', 3), ('Fernanda', 24, 'Feminina', 'méxico', 4), 
('Guilherme', 27, 'Masculino', 'Brasil', 5), ('Amanda', 21, 'Feminina', 'África', 6),
('Carlos', 25, 'Masculino', 'Japão', 7), ('Giovana', 22, 'Feminina', 'USA', 8);

select * from tb_personagem;
select * from tb_classe;
select * from tb_personagem, tb_classe where  ataque > 2000;
select * from tb_personagem, tb_classe where defesa >1000 && 2000;
select * from tb_personagem where nome like'%c%';
truncate tb_personagem;
truncate tb_classe;