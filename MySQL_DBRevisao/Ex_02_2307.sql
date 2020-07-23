/*1.Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
2.	Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar a foreign key de tb_categoria nesta tabela).
3.	Popule esta tabela Categoria com até 5 dados.
4.	Popule esta tabela pizza com até 10 dados.
5.	Faça um select que retorne os Produtos com o valor maior do que 45 reais.
6.	Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
7.	Faça um select  utilizando LIKE buscando os Produtos com a letra C.
8.	Faça um um select com Inner join entre  tabela categoria e pizza.
9.	Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
*/

create database db_pizzaria_legal
default character set utf8
default collate utf8_general_ci;

/*1.Criação da tabela tb_categoria*/
create table tb_categoria(
id int auto_increment,
tipo varchar(30) not null,
disponibilidade boolean,
primary key(id)
);

/*2.Criação da tabela tb_pizza*/
create table tb_pizza(
id int auto_increment,
valor decimal(4,2) not null,
sabor varchar(30) not null unique,
categoria_id int,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

/*3.Inserindo valores na tabela tb_categoria*/
insert into tb_categoria value
(default,'Salgada',1),
(default,'Doce',0),
(default,'Brotinho',0),
(default,'Fechada',1),
(default,'Esfiha',1);

/*4.Inserindo valores na tabela tb_pizza*/
insert into tb_pizza value
(default,'25.99','Mussarela',1),
(default,'25.99','Calabresa',1),
(default,'27.99','Atum',1),
(default,'27.99','Brigadeiro',2),
(default,'32.99','Creme de avelã',2),
(default,'17.99','4 queijos',3),
(default,'22.99','Portuguesa',4),
(default,'9.99','Carne',5);

/*5.Select dos produtos com valor maior que 25.00*/
select * from tb_pizza 
inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id
where tb_pizza.valor >=25;

/*6.Select dos produtos com o valor entre 20 e 30*/
select* from tb_pizza
inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id
where tb_pizza.valor between 20 and 30;

/*7.Select dos produtos usando Like*/
select tb_pizza.sabor from tb_pizza
inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id
where tb_pizza.sabor like '%c%';

/*8.Select usando inner join*/
select * from tb_pizza
inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

/*9.Select de um produto específico*/
select*from tb_pizza
inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.tipo = 'Doce';