create table customers (
    id numeric primary key,
    name varchar(255),
    street varchar(255),
    city varchar(255),
    state char(2),
    credit_limit numeric
);


insert into customers (id , name, street, city, state, credit_limit) values 
(1,	'Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700.00),
(2,	'Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50),
(3,	'Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00),
(4,	'Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', 800.00),
(5,	'Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', 4250.25);



-- O seu trabalho é nos passar os nomes e os endereços dos clientes que moram em 'Porto Alegre', para entregar os convites pessoalmente.

select name, street from customers where city = 'Porto Alegre'