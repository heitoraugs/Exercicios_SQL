/*Atividade 1
1.Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionários desta empresa. 
2.Crie uma tabela de funcionários e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.
3.Popule esta tabela com até 15 dados;
4.Faça um select que retorne os funcionários com o salário maior do que 2000.
5.Faça um select que retorne os funcionários com o salário menor do que 2000.
6.Ao término atualize um dado desta tabela através de uma query de atualização.*/

/*1. Criação do banco de dados*/

create database rh_db;

/*2. Criação da tabela funcionários*/

create table funcionarios(
id int auto increment,
nome varchar(30),
nascimento date,
cargo varchar(20),
salario decimal(5,3),
primary key (id)
);
describe funcionarios;

/*3. Populando a tabela com 15 dados*/

insert into funcionarios values
('1','Nicolas','1968-01-30','Diretor RH','25.000'),
('2','Eden','1969-05-16','Diretor MKT','24.000'),
('3','Elisete','1997-04-11','Analista JR','3.500'),
('4','Malak','1967-10-31','Gerente de projetos','15.000'),
('5','Emma','1972-10-04','Analista SR','7.800'),
('6','Renato','1976-01-22','Especialista','10.000'),
('7','Caetana','1972-12-23','Coodernador','10.000'),
('8','Sebatian','1996-04-10','Analista PL','7.000'),
('9','Eliseu','1967-04-22','Gerente de projetos','16.000'),
('10','Ion','1994-07-28','Estagiário','1.800'),
('11','Alda','1990-12-01','Coodernadora','12.000'),
('12','Maira','2001-04-30','Estagiária','1.850'),
('13','Izabel','1999-12-08','Analista JR','2.000'),
('14','Izabellas','1984-12-28','Gerente PL','15.000'),
('15','Julieta','1971-06-08','Especialista','11.000');

/*4.Select dos salários maiores que 2.000*/

select *from funcionarios where salario>2.000

/*5.Select dos salários menores que 2.000*/

select *from funcionarios where salario<2.000

/*6.Atualização de um dado*/
alter table funcionarios
add column setor varchar(10);

update funcionarios set salario =13.000 where id = 7;