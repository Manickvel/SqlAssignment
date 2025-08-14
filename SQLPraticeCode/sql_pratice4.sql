create schema sqljoinpratice;
use sqljoinpratice;
create table employees(emp_id int primary key,name varchar(30),dept_id int );
insert into employees values (1,'Ravi',101),(2,'Priya',102),(3,'Karan',101),(4,'Anjali',103),(5,'Manish',null);
create table department(dept_id int,dept_name varchar(30));
insert into department values(101,'IT'),(102,'HR'),(103,'Finance'),(104,'Marketing');

-- querys

select e.*,d.dept_name from employees e Inner join department d on e.dept_id = d.dept_id where d.dept_name = 'IT';
select d.dept_id,d.dept_name from employees e right join department d on e.dept_id = d.dept_id where e.emp_id is null;
select e.name , d.dept_name from employees e cross join department d;
select e.name ,d.dept_name from employees e left join department d on e.dept_id = d.dept_id 
union 
select e.name,d.dept_name from employees e right join department d on e.dept_id = d.dept_id;

select e.emp_id,e.name from employees e left join department d on e.dept_id = d.dept_id where e.dept_id is null;