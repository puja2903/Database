create database Demo1;
use Demo1;
create table Fruit(Fname varchar(10)not null unique,
Fcolor varchar(10)not null ,
Fprice int not null unique);
#add a row
alter table Fruit ADD taste varchar (30)not null after Fcolor;
#modify datatype
alter table Fruit MODIFY Fcolor varchar(30)not null;
alter table Fruit MODIFY Fname varchar(15)not null unique;
#rename
alter table Fruit RENAME TO Fruit_history;
insert into Fruit_history values
('mango','green','sweet',250),
('banana','yellow','good',100),
('orange','orange','sweet',300),
('dragon ','pink','sweet',500),
('watermelon','red','sweet',200);
alter table Fruit_history DROP COLUMN Fprice;
insert into Fruit_history values('jamun','black');
#truncate
truncate TABLE Fruit_history;


