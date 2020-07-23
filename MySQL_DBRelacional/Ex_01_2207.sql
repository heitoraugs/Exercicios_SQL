/*
Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, o nome do banco deverá ter o seguinte nome db_RH2, onde o sistema trabalhará com as informações dos funcionários desta empresa. 
O sistema trabalhará com 2 tabelas tb_funcionário e tb_cargo.
siga  exatamente esse passo a passo:
1.	Crie uma tabela tb_cargo utilizando a habilidade de abstração e determine 3 atributos relevantes do Cargos para se trabalhar com o serviço deste RH.
2.	Crie uma tabela tb_funcionário  e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH (não esqueça de criar a foreign key de tb_cargo nesta tabela).
3.	Popule esta tabela cargos com até 5 dados.
4.	Popule esta tabela funcionarios com até 15 dados.
5.	Faça um select que retorne os funcionários com o salário maior do que 2000.
6.	Faça um select trazendo  os funcionários com salário entre 1000 e 2000.
7.	Faça um select  utilizando LIKE buscando os Funcionários com a letra C.
8.	Faça um um select com Inner join entre  tabela cargos e funcionarios.
9.	Faça um select onde traga todos os funcionários de um cargo específico (exemplo todos os funcionários que são programador).
*/

/*Criação do banco de dados*/

create database rh2_db

/*1.Criação da tabela tb_cargo*/

create table tb_cargo(
id int auto_increment not null,
cargo varchar (15) not null,
ativo boolean not null,
primary key (id)
);

/*2.Criaçao da tabela tb_funcionario*/

create table tb_funcionario(
id int auto increment not null,
nome varchar(30) not null,
nascimento date not null,
salario float,
gestor varchar(30),
cargo_id int,

primary key(id)
foreign key(cargo_id) references tb_cargo(id)
);

/*3.Inserir cargos na tabela tb_cargo*/

insert into tb_cargo (cargo,ativo) values ('Analista JR',0);	
insert into tb_cargo (cargo,ativo) values ('Analista SR',0);
insert into tb_cargo (cargo,ativo) values ('Analista PL',1);
insert into tb_cargo (cargo,ativo) values ('Estagiário',0);
insert into tb_cargo (cargo,ativo) values ('Programador',1);	

/*4.Inserir funcionarios na tabela tb_funcionarios*/

insert into tb_funcionario
values (default,'Heitor','2000-07-03','1.8','Marcos','1'),
 	(default,'Michael','1989-07-27','2.9','Luana','3'),
	(deafult,'Nicolas','1968-01-30','25.000','Lucas','4');

/*5.Selecionar os salarios maiores que 2.000*/

select * from tb_funcionario where salario>2.0;

/*6. Selecionar os salarios entre 1.000 e 2.000*/

select * from tb_funcionario where salario>1.0 and salario<2.0;

/*7.Selecionar apenas funcionários com nome contendo inicial C*/

select * from tb_funcionario where nome like '%C%';

/*8.Selecionar usando INNER JOIN*/

select * from tb_funcionario
inner join tb_cargo on tb_cargo.id = tb_funcionario.cargo_id;

/*9.Selecionar todos os funcionarios de um determinado cargo*/

select * from tb_funcionario
inner join tb_cargo on tb_cargo.id = tb_funcionario.cargo_id
where cargo ='Analista Pl';

