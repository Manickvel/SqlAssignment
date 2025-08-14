create database dresss;
use dresss;
create table talent( my_id int primary key ,my_name varchar(50),soundharya_id int);
insert into talent values (101,"rekha",101),(102,"daniel",102),(103,"jeeva",104);
create table toy( id int primary key ,sales varchar(50),cost int);
insert into toy values (10,"rekha",101),(12,"daniel",102),(13,"ex",104);

select * 
from talent;
select m.my_name as my_name , s.my_name as soundharya_name
from talent m left join talent s 
on m.soundharya_id = s.my_id ;