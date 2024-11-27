create database learningdb;
use learningdb;
create table courses(
id int primary key auto_increment,
title varchar(100) not null,
description text
);
select*from courses;

create table instructors(
id int primary key auto_increment,
name varchar(50) not null,
expertise varchar(50) not null
);
select*from instructors;

create table students(
id int primary key auto_increment,
name varchar(50) not null,
email varchar(50) not null unique
);
select*from students;

create table enrollment(
student_id int ,
course_id int,
enrollment_date date not null,
primary key (student_id,course_id),
foreign key (student_id) references students(id),
foreign key (course_id) references courses(id)
);
select*from enrollment;


insert into courses(title,description)
values ( 'title 1', 'description title 1'),
('title 2', 'description title 2'),
('title 3','description title 3');

insert into instructors(name,expertise)
values ( 'john doe', 'computer science'),
( 'wil pet', 'mathematics'),
('alice johnson','physics');

insert into students(name,email)
values ( 'alice green', 'alice.green@examplke.com'),
('bob brown','bob.brown@example.com'), 
('charlie white','charlie.white@example.com');

insert into enrollment(student_id,course_id,enrollment_date)
values( 1, 1,'2024-11-25'),
(2,2,'2024-11-26'),
(3,3,'2024-11-27');

select*from courses;
select*from instructors;

SELECT 
    s.name AS student_name,
    c.title,
    e.enrollment_date
FROM 
    enrollment e
JOIN 
    students s ON e.student_id = s.id
JOIN 
    courses c ON e.course_id = c.id;
    
    select
    c.title,
    count(e.student_id)as student_count
    from
    enrollment e
    join
    courses c on e.course_id=c.id
    group by
    c.title;



