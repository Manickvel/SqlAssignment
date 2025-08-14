use sqlpraticequestion;
create table sample_join(emp_id int ,emp_name varchar(20),depart int);
insert into sample_join values(101,'xxxx',401),(102,'yyyy',402),(103,'zzzz',403),(104,'ssss',404),(105,'mmmm',405);
create table sample_depart(depart int primary key, department_name varchar(20));

alter table sample_join drop constraint depart;
alter table sample_depart drop primary key,drop foreign key depart;

describe sample_join;
describe sample_depart;
insert into sample_depart values(401,'HR'),
(402,'Sales'),
(403,'IT'),
(404,'Marketing'),
(405,'Finance');

select * from sample_join;
select * from sample_depart;

select sj.emp_id, sj.emp_name,sj.depart,sd.department_name from sample_join sj Inner join sample_depart sd on sj.depart = sd.depart;

select * from sample_join natural join sample_depart;

select sj.* , sd.department_name from sample_join sj natural join sample_depart sd;
select * from sample_join sj natural join sample_depart sd;

select * from sample_join sj left join sample_depart sd on sj.depart = sd.depart
union
select * from sample_join sj Right join sample_depart sd on sd.depart = sj.depart;

show tables;