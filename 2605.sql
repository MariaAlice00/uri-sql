create table categories (
    id numeric primary key,
    name varchar(255)
);

create table providers (
    id numeric primary key,
    name varchar(255),
    street varchar(255),
    city varchar(255),
    state char(2)
);


create table products (
    id numeric primary key,
    name varchar(255),
    amount numeric,
    price numeric,
    id_providers numeric references providers(id),
    id_categories numeric references categories(id)
);

insert into categories (id , name) values 
(1,	'old stock'),
(2,	'new stock'),
(3,	'modern'),
(4,	'commercial'),
(5,	'recyclable'),
(6,	'executive'),
(7,	'superior'),
(8,	'wood'),
(9,	'super luxury'),
(10, 'vintage');

insert into providers (id, name, street, city, state) values
(1,	'Henrique' ,'Av Brasil', 'Rio de Janeiro', 'RJ'),
(2,	'Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte', 'MG'),
(3,	'Caroline Silva', 'Av São Paulo', 'Salvador', 'BA'),
(4,	'Guilerme Staff', 'Rua Central', 'Porto Alegre', 'RS'),
(5,	'Isabela Moraes', 'Av Juiz Grande',	'Curitiba',	'PR'),
(6,	'Francisco Accerr',	'Av Paulista', 'São Paulo',	'SP');

insert into products (id, name, amount, price, id_providers, id_categories) values
(1,	'Two-door wardrobe', 100, 800, 6, 8),
(2,	'Dining table',	1000, 560, 1, 9),	
(3,	'Towel holder',	10000, 25.50, 5, 1),
(4,	'Computer desk', 350, 320.50, 4, 6),
(5,	'Chair', 3000, 210.64, 3, 6),
(6,	'Single bed', 750, 460, 1, 2);


-- Seu trabalho é retornar os nomes dos produtos e dos fornecedores cujo código da categoria é 6.

select products.name, providers.name from products inner join providers 
on (products.id_providers = providers.id)
and products.id_categories = 6;