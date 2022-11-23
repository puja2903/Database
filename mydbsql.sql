
use c2268;
create table emp1(ID numeric(2),ID_name varchar(10),
Basic numeric(6),designation varchar(10),age numeric(2));
alter table emp1 modify Basic integer(6);
alter table emp1 modify ID_name varchar(20);
create table emp_trainee(emp_ID numeric(2),ID_name varchar(10),
Basic numeric(6),designation varchar(10),age numeric(2));
insert into emp1 values
(1,'rohit',6700,'manager',24),
(2,'priya',4500,'manager',28),
(3,'riya',6680,'manager',25),
(4,'ram',4365,'manager',23),
(5,'sam',7300,'manager',26),
(6,'jadu',6500,'manager',28);
insert into emp_trainee select * from emp1;
select * from emp1,emp_trainee;
alter table emp1 add skills varchar(20) after age;
alter table emp1 add doj date after skill;

update emp1 set skills='java' where ID=1;
 update emp1 set skills='c++' where ID=2;
update emp1 set skills='c' where ID=3;
update emp1 set skills='js' where ID=4;
update emp1 set skills='python' where ID=5;
update emp1 set skills='sql' where ID=6;
        
update emp1 set doj='2o22-11-16'where ID=1;
update emp1 set doj='2o22-11-15'where ID=2;
update emp1 set doj='2o22-11-14'where ID=3;
update emp1 set doj='2o22-11-13'where ID=4;
update emp1 set doj='2o22-11-12'where ID=5;
update emp1 set doj='2o22-11-11'where ID=6;
             
alter table emp_trainee modify designation varchar(30);
update emp_trainee set designation='IT _specialist';
update emp1 set skill= 'python' where designation ='manager'; 
select* from emp1,emp_trainee;
   delete from emp1 where doj ='2022-11-14';
