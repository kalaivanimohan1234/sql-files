create database studentdb;
use studentdb;
create table student_table(
id int primary key auto_increment,
name varchar(50) not null,
age int not null,
email varchar(50) not null unique
);
select*from student_table;

create table courses_table(
id int primary key auto_increment,
name varchar(50) not null
);
select*from courses_table;

create table enrollments_table(
student_id int ,
course_id int ,
grade char(1),
primary key (student_id,course_id),
foreign key(student_id) references student_table(id),
foreign key(course_id) references courses_table(id)
);
select*from enrollments_table;

insert into student_table( name,age,email)
values('ishu', 17, 'ishu1234as@gmail.com'),
('priya',16, 'priya4567pr@gmail.com'),
('vani', 18, 'vani2345@gail.com');
select*from student_table;

insert into courses_table(name)
values('Data Structures'),
    ('Database Management Systems'),
    ('Web Development');
    select*from courses_table;
    
    insert into enrollments_table( student_id, course_id,grade)
    VALUES ( 1, 1, 'A'),
    (2, 2, 'B'),
    (3, 3, 'C');

select*from enrollments_table;

select*from student_table;
select*from courses_table;

select
s.name as student_name,
c.name as course_name
from 
enrollments_table e
join
student_table s on e.student_id= s.id
join
courses_table c on e.course_id=c.id;

select
c.name as course_name,
count(e.student_id)as student_count
from
enrollments_table e
join
courses_table c on e.course_id=c.id
group by
c.name
order by 
student_count desc;
