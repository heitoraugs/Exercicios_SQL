/*1.Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
2.	Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não esqueça de criar a foreign key de tb_categoria nesta tabela).
3.	Popule esta tabela Categoria com até 5 dados.
4.	Popule esta tabela Produto com até 30 dados.
5.	Faça um select que retorne os Produtos com o valor maior do que 50 reais.
6.	Faça um select trazendo  os Produtos com valor entre 30 e 60 reais.
7.	Faça um select  utilizando LIKE buscando os Produtos com a letra B.
8.	Faça um um select com Inner join entre  tabela categoria e produto.
9.	Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).*/

create database db_farmacia_do_bem;

/*1.Criação da tabela tb_categoria*/
create table tb_categoria(
id int auto_increment,
tipo varchar(30) unique,
qtd int,
primary key(id)
);

/*2.Criação da tabela tb_produto*/
create table tb_produto(
id int auto_increment,
tipo varchar(30),
valor decimal (5,2),
categoria_id int,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

/*3.Inserindo valores na tabela tb_categoria*/
insert into tb_categoria value
(default,'Medicamento',5),
(default,'Vitamina',3),
(default,'Produto de higiene',6);

/*4.Inserindo valores na tabela tb_produto*/
insert into tb_produto value
(default,'Dipirona','9.99',1),
(default,'Vitamina D','25.99',2),
(default,'Pasta de dentes','3.99',3),
(default,'Paracetamol','15.99',1),
(default,'Suplemento vitaminico','32.99',2),
(default,'Sabonete','5.99',3);

/*5.Select que retorna os valores acima de 15*/
select * from tb_produto
inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id
where tb_produto.valor>15;

/*6.Select com produtos entre 15 e 25*/
select * from tb_produto
inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id
where tb_produto.valor between 15 and 25;

/*7.Select de produtos com Like*/
select * from tb_produto
inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id
where tb_produto.tipo like '%b%';

/*8.Select usando o inner join*/
select * from tb_produto
inner join tb_categoria on tb_produto.categoria_id = tb_produto.id;

/*9.Select de produto de uma categoria*/
select * from tb_produto
inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.tipo = 'Medicamento';