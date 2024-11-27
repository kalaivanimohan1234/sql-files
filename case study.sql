-- Create the EmployeeManagement database
CREATE DATABASE EmployeeManagement;
USE EmployeeManagement;

-- Create the Departments table
CREATE TABLE Departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);
select*from departments;

-- Create the Employees table
CREATE TABLE Employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    salary INT NOT NULL CHECK (salary > 30000),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);
select*from employees;

-- Create the Projects table
CREATE TABLE projects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    budget INT NOT NULL CHECK (budget > 10000)
);

-- Create the Employee_Projects table (many-to-many relationship)
CREATE TABLE Employee_Projects (
    employee_id INT,
    project_id INT,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(id),
    FOREIGN KEY (project_id) REFERENCES Projects(id)
);

-- Create the Attendance table
CREATE TABLE Attendance (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    date DATE NOT NULL,
    status ENUM('Present', 'Absent', 'On Leave') NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employees(id)
);


INSERT INTO departments (id, name) 
VALUES
(1, 'HR'),
(2, 'Engineering');
SELECT * FROM departments;


INSERT INTO employees (id, name, age, gender, salary, department_id) 
VALUES
(1, 'Deep', 25, 'Female', 45000, 1),
(2, 'Swe', 30, 'Female', 50000, 2),
(3, 'Mohan', 28, 'Male', 60000, 2);
select*from employees;

insert into projects ( name,budget) 
values
('PROJECT A',20000),
('PROJECTS B',30000),
 ('PROJECT C',40000); 
SELECT*FROM PROJECTS;

INSERT INTO Employee_Projects (employee_id, project_id)
values 
(1,1),
(2,2),
(3,3);
select*from employee_projects;

insert into  Attendance (employee_id, date, status)
values
(1, '2024-11-19', 'Present'),
(2, '2003-04-25', 'Absent'),
(3, '2005-01-01', 'Present');
select*from attendance;