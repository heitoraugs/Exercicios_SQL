/*Atividade 2
1.Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
2.Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
3.Popule esta tabela com até 15 dados;
4.Faça um select que retorne os produtos com o valor maior do que 500.
5.Faça um select que retorne os produtos com o valor menor do que 500.
6.Ao término atualize um dado desta tabela através de uma query de atualização.*/

/*1.Ciação do banco de dados*/
create database ecommerce_db;

/*2.Criação da tabela produtos*/
create  table produtos(
id int(2) auto_increment,
quantidadeEmEstoque tinyint,
seção varchar(20),
produto varchar(20),
preço decimal(4,3),
primary key (id)
);

/*3.Inserindo produtos na tabela*/

insert into produtos value
('1','17','Produtos Eletrônicos','Computador','4.299'),
('2','9','Produtos Eletrônicos','Notebook','2.499'),
('3','21','Produtos Eletrônicos','Televisor','4.999'),
('4','11','Produtos Eletrônicos','Tablet','1.299'),
('5','8','Produtos Eletrônicos','Smartphone','1.299'),
('6','16','Vestuário','Camiseta','25.99'),
('7','5','Vestuário','Tênis','99.99'),
('8','22','Vestuário','Calça','89.99'),
('9','7','Vestuário','Casaco','109.99'),
('10','25','Decoração','Quadros','49.99'),
('11','5','Decoração','Vela aromática','19.99'),
('12','12','Decoração','Porta-Retrato','19.99'),
('13','11','Decoração','Luminária','59.99'),
('14','19','Decoração','Almofada','29.99'),
('15','15','Decoração','Porta-Copo','9.99');

/*4.Select dos produtos com preço maior que 500*/

select * from produtos where preço >500;

/*5.Select dos produtos com preço menor que 500*/

select * from produtos where preço <500;

/*6.Atualização dos dados*/

update produtos set preço '500.0' where id=5;