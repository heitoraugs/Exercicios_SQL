/*1.Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes das classes desse game Online.
2.	Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes dos desse game Online (não esqueça de criar a foreign key de tb_classe nesta tabela).
3.	Popule esta tabela classe com até 5 dados.
4.	Popule esta tabela personagem com até 15 dados.
5.	Faça um select que retorne os personagens com o poder de ataque maior do que 50.
6.	Faça um select trazendo  os personagens com poder de defesa entre 50 e 100.
7.	Faça um select  utilizando LIKE buscando os personagens com a letra CA.
8.	Faça um um select com Inner join entre  tabela classe e personagem.
9.	Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
*/
/*Criação do banco de dados*/
create database if not exists db_generation_game_online
 default character set utf8
 default collate utf8_general_ci;
 
 /*1.Criação da tabela  tb_classe*/
 use db_generation_game_online;
 create table tb_classe(
 id int auto_increment not null,
 classe varchar(30),
 habEspecial varchar(30),
 primary key(id)
 );
 
 /*2.Criação da tabela tb_personagem*/
create table tb_personagem(
id int auto_increment,
usuario varchar(30) not null unique,
ataque int,
defesa int,
classe_id int not null,
primary key(id),
foreign key (classe_id) references tb_classe (id)
);

/*3.Inserindo dados na tabela tb_classse*/
insert into tb_classe value
(default,'Ranger','Magia da natureza'),
(default,'Guerreiro','Estocada Fatal'),
(default,'Mago','Magia arcana milenar'),
(default,'Clérigo','Poder de ressurreição'),
(default,'Arqueiro','Flecha dupla');
select*from tb_personagem;

/*4.Inserindo dados na tabel tb_personagem*/

insert into tb_personagem value
(default,'Linferum',56,45,1),
(default,'Casgrimjo',78,89,2),
(default,'Lefled',67,34,3),
(default,'Gormara',57,43,4),
(default,'Dagard',65,52,5),
(default,'Leonae',87,90,2),
(default,'Wigthor',34,21,1),
(default,'Rielac',78,56,3);

/*5.Select dos personagens com mais de 50 de ataque*/
select * from tb_personagem
inner join tb_classe on tb_classe.id=tb_personagem.classe_id
where tb_personagem.ataque >50;

/*6.select dos personagens com defesa entre 50 e 100*/
select tb_personagem.usuario, tb_personagem.defesa from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where tb_personagem.defesa between 50 and 100;

/*7.Select usando Like*/
select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where tb_personagem.usuario like "%ca%";

/*8.Select usando inner join*/
select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

/*9.Select de todos os personagens da classe guerreiro*/
select tb_personagem.usuario from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where tb_classe.classe = 'guerreiro';



 
 