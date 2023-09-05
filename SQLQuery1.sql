create database Example;
use Example;

create table Class1(
SId int primary key not null Identity(1,1),
SName varchar(20),
Addres Varchar(20),
Phoneno int,
DOJ Date
);

--select * from Class1 where SName lIKE '%i' and (Addres='Nellore' OR DOJ='2021-04-12');
--select * from Class1 where Not Addres='Nellore' and Not Sids=3;

Select count(distinct Addres) from Class1;
select * from Class1;
insert into Class1(SName,Addres,Phoneno,DOJ,SIds) values('Kalyani','CGR',7805092808,'4/18/2021',5),('Navya','NLR',6305562890,'4/19/2021',6),('Muni','Nellore',9305092823,'4/12/2021',7),('Naresh','Hyd',6305199808,'4/18/2021',8);
--delete from class1 where sid=4;
--alter table class1 alter column Phoneno bigint;
--alter table class1 drop constraint PK__Class1__CA19595081EECC9E;
--alter table class1 drop column sid;
alter table class1 add SIds int primary key;
select distinct SName,Addres from Class1;
select count(Sname) from class1;
SELECT COUNT(*) FROM (SELECT DISTINCT SName,Addres FROM Class1) AS internalQuery;
select top 3 percent SIds from Class1 where Addres='CGR';
SELECT 'Hello';
--select * into Class2 from Class1;
select * from Class2;
--select * from Class3;
select * into Class3 from Class1;

--select * from Class3 order by Addres desc, SIDS  ;
insert into Class3 values('Kali', 'AMR', 8978654321,'2022-09-09', 1);
INSERT INTO Class3(SName,Addres, Sids) values('Namratha','TPT', 9);

select * from Class3 where Phoneno is null;
select * from Class3 where phoneno is not null;
select top 3 *  from Class3 where Addres='NLR';
select count(*) as noofColumns from Class3;
SELECT count(*) as No_of_Column FROM information_schema.columns WHERE table_name ='Class3';
select min(SIDS)as Mini,max(sids) as Maxi  from class3;
select count(SIDS) from Class3;
select count(*) from INFORMATION_SCHEMA.columns where table_name='class3';
select avg(Sids) from Class3 where Addres='NLR';
Select sum(sids) from Class3 WHERE Addres='NLR';
select SName from class3 where SName  Like 'n__%';
select Sname from class3 where Sname like '_a_e_h';
select sname from class3 where sname like '%[nab]';
select sname from class3 where sname like '%[a-c]';
select sname from class3 where sname not like '%[a-c]';
select * from class3 where Sids IN(1,4,3) order by SIDS ;
select count(*) from INFORMATION_SCHEMA.columns where TABLE_NAME='Class1'; 
select * from class3 where Sids in( select sids from class1) order by SIds desc;

select * from class3 where sids between 1 and 10 and sname in('Kavya','Naresh','Kali','Muni') order by SName ;
select SIDS, Sname + '  ==> From ' + Addres  AS T_a from class3;
Select sids, concat(sname,'  ==> From  ' , addres) as T_A from class3;






update Class1 set SName= 'Rajesh' where SIds=1;

--DESCRIBE Example;  
delete from class1 where Sids=1;
-- alter database Example Modify Name= Example1;
--exec sp_renamedb 'Example1', 'Example2';


show databases;
desc Example2;

 --select * into Example1  from Example2
 --insert into Examp from (select * from Example2);