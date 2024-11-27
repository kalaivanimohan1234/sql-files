create database librarydb;
use librarydb;
create table book_table(
id INT PRIMARY KEY AUTO_INCREMENT,
title  varchar (100) not null,
author varchar (50) not null,
published_year INT NOT NULL,
genre varchar(30)
);
select*from book_table;

create table members_table(
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(50) not null,
membership_date not null,
);