use Junaid_Assignment

create table tblmanger (
mangerId int primary key,
name varchar(20)
);
insert into tblmanger(mangerId,name) values(1,'Namita'),(2,'Nilima'),(3,'sandeep');

 

create table tblemps(
empId int primary key,
name varchar(50),
salary int,
mangerId int,
foreign key (mangerId) references tblmanger(mangerId)
);

 

insert into tblemps(empId,name,salary,mangerId ) values(1,'Junaid',2000,1),(2,'charan',3000,2),(3,'Abi',2000,1),(4,'Sam',2000,3);

 
select* from tblemps
select* from tblmanger

select m.name as mangerName , e.name as empsName from tblmanger m inner join tblemps e on m.mangerId = e.empId order by m.mangerId, e.name ;
