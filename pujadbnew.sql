use pujadb;
create table emp1(ID numeric(2), ID_Name varchar(10), Basic numeric(6), Designation varchar(10), Age numeric(2));
alter table emp1 modify Basic integer(6);
alter table emp1 modify ID_Name varchar(15);
create table emp_trainee(Emp_id numeric(2) ,ID_Name varchar (10), Basic numeric(6,2), 
Designation varchar(10),Age numeric(2));

insert into emp1 values 
(1,'rohit',8790,'manager',28),
(2,'abc',8799,'mnager',30),
(3,'sarbo',8790,'ytrfg',56);
insert into emp_trainee select * from emp1;
select * from emp1,emp_trainee;
alter table emp1 add Skills varchar(15) after age;
alter  table emp1 add doj date after skills;

update emp1  set Skills=  'html' where ID=1; 
update emp1  set Skills='c++' where ID=2;
update emp1  set doj=  '11/10/1999' where ID=1; 
update emp1  set doj='18/12/2022' where ID=2;

alter table emp_trainee modify Designation varchar(30);
update emp_trainee set Designation='IT_Specialist';
update emp1 set Skills='python' where Designation='Manager';
select * from emp1,emp_trainee;
