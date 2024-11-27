create database retaildb;
use retaildb;
create table products_table(
id int primary key auto_increment,
name varchar(50) not null,
price decimal(10,2) check (price>=0) ,
stock int not null check (stock>=0)
);
select*from products_table;

create table suppliers_table(
id int primary key auto_increment,
name varchar(50) not null,
contact varchar(50)
);
select*from suppliers_table;

create table sales_table(
id int primary key auto_increment,
product_id int,
date date not null,
quantity int not null check (quantity>0),
total_price decimal(10,2) not null,
foreign key (product_id) references products_table(id)
);
select*from sales_table;

insert into products_table(name,price,stock)
values( 'product 1', 19.99, 100),
('product 2', 29.99, 50),
('product 3', 9.99, 200),
('product 4', 49.99, 150);
select*from products_table;

insert into suppliers_table(name,contact)
values ('supplier A', 'supplierA@example.com'),
('supplier B', 'supplierB@example.com'),
('supplier C ', 'supplierC@example.com');
select*from suppliers_table;

insert into sales_table(product_id, date, quantity , total_price)
values( 1,'2024-11-21', 10,199.90),
(2,'2024-11-22', 5,149.95),
(3,'2024-11-23',2,19.98);
select*from sales_table;

select*from products_table;

select*from products_table where stock<10;


SELECT products.name AS product_name, sales.total_price AS total_price
FROM sale
JOIN products ON sales.product_id = products.id
LIMIT 0, 5000;



SELECT p.name AS product_name, SUM(total_price) AS total_sales
FROM sales_table
JOIN Products_table p ON product_id = p.id
GROUP BY p.name;


