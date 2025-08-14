create  database sqlpraticequestion;
use sqlpraticequestion;
create table employees(slno int , Name varchar(20),Designation varchar(10),salary int);
alter table employees modify Department varchar(20);
insert into employees(employeeid,Name,Department,Salary) values(3,'MS','HR',30000),(4,'Jack','Analyst',45000),(5,'Jhon','Data Scientist',55000);
update employees modify set salary = 60000 where employeeid = 101;
alter table employees rename column Designation to Department;
update employees modify set Department = 'HR' where employeeid = 103;
delete from employees where Department = 'HR';
truncate table employees;
select * from employees;

create table Students(Id int,Name varchar(30),Age tinyint,Email varchar(30));

create table Customer(Id int NOt Null, Name varchar(30),Email varchar(30) Not null ,Product varchar(30),Amount int,primary key(Id,email));

alter table Customer add constraint email primary key(email);
drop table orders;
drop table Customer;
create table orders(ProductId int, Product_Name varchar(30) , CustomerId int,foreign key (CustomerID) references Customer(Id)); 
select * from Students;
alter table Customer drop primary key;
alter table Customer drop column Email;
Create index slno on Customer(id);
show index from Customer;
drop index slno on Customer;

select slno from Customer;
alter table employees add column DOB date;
alter table employees modify salary float;
alter table employees rename column name to FullName;
alter table Customer rename to Clients;
describe employees;
describe Clients;
alter table Clients add column Email varchar(30);
alter table Clients modify column Email varchar(30) Not null;
Insert into Clients Values(1,'ms','Pen',10,'manicks@gmail.com');

describe orders;
select * from Clients;
create table Activity(id int, name varchar(30), status varchar(20) default 'Active');
describe Activity;







show tables;
use sqlpraticequestion;


-- remove of constraint int sql doubt
-- alter table customer drop constraint  Id;
-- Delete using sub Query Doubt 
describe employees;
select * from employees;

DELETE FROM employees WHERE salary IN (select * from (SELECT salary FROM employees) as minsalary where employeeid = 5);
update employees set employeeid = null,fullname = null,Department = null,salary = null, DOB = null where salary = (SELECT salary FROM employees WHERE employeeid = 4); 

CREATE TABLE Products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
unit_price DECIMAL(10, 2)
);

INSERT INTO Products (product_id, product_name, category, unit_price) VALUES
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);

select * from Products;
Select product_name,unit_price from Products;
select * from Products where category = 'Electronics';
select product_id,product_name from products where unit_price > 100;
select avg(unit_price) as Average_unit_price from products;
select product_name,unit_price from products order by unit_price desc Limit 1;
select product_name,unit_price from products order by unit_price desc;
select product_name, unit_price from products where unit_price between 20 and 600;
select product_name,category from products order by category;

CREATE TABLE Sales (
sale_id INT PRIMARY KEY,
product_id INT,
quantity_sold INT,
sale_date DATE,
total_price DECIMAL(10, 2),
FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Sales (sale_id, product_id, quantity_sold, sale_date, total_price) VALUES
(1, 101, 5, '2024-01-01', 2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);

select * from sales;
select sale_id, sale_date from sales;
select * from sales where total_price >100;
select sale_id,total_price from sales where sale_date = '2024-01-03';
select sum(total_price) as Total_revenue from sales;
select sum(quantity_sold) as Total_quantity from sales;
select sale_id,product_id,total_price from sales where quantity_sold > 4;
select round(sum(total_price)/count(total_price),2) as Average_sales_price from sales;


CREATE TABLE students10 (
    student_id INT,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT,
    age INT,
    city VARCHAR(50),
    scholarship INT
);
INSERT INTO students10 VALUES 
(1, 'Ravi', 'Math', 85, 20, 'Chennai', NULL),
(2, 'Priya', 'Science', 92, 21, 'Delhi', 10000),
(3, 'Amit', 'English', 75, 19, 'Mumbai', 5000),
(4, 'Sneha', 'Math', 88, 22, 'Kolkata', NULL),
(5, 'John', 'History', 67, 20, 'Chennai', NULL),
(6, 'Meena', 'Science', 95, 23, 'Delhi', 15000),
(7, 'Karan', 'English', 70, 20, 'Bangalore', 3000),
(8, 'Divya', 'History', 80, 22, 'Mumbai', NULL);

alter table students10 rename to student;
select * from student where marks between 70 and 90;
select * from student where age between 20 and 22;
select Student_id ,name from student where name like 'P%';
select * from student where city like '%ai%';
select name from student where name like '_r%';
select * from student order by marks desc limit 3; 
select *from student where scholarship is not null;
select * from student where (select count(city) from student where city = 'Delhi') >=1 And city = 'Delhi';
select * from student where marks > (select min(marks) from student where course = 'History');
select * from student where marks > any (select marks from student where course = 'History');
select * from student where marks > all (select marks from student where course = 'English');
select * from student where course = 'Math' and age>21;

select * from student where  not city = 'Mumbai';
select * from student where scholarship is null;
select student_id,name,course,marks,age,city,ifnull(scholarship,0) from student;
select student_id,name,course,marks,age,city,coalesce(scholarship,0) from student;

select * from student;






