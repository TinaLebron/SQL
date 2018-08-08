use LotteryDB
go

------------------------------------------------------------------------
--Create

--database
create database LotteryDB
--table
create table BigLottery
(ID int not null primary key identity,
categoryid as(right('0000'+CONVERT([varchar],[id],0),(4))),
UserName varchar(255),
PickNumber varchar(255))

-------------------------------------------------------------------------
--Select(query)

select *
from BigLottery

--------------------------------------------------------------------------
--Insert

insert into BigLottery(UserName,PickNumber)
values ('John','07011132244506')
insert into BigLottery(UserName,PickNumber)
values ('Jordan','33021433453228')
insert into BigLottery(UserName,PickNumber)
values ('Tom','03092411351226')

--------------------------------------------------------------------------
--Delete

--delete database
--1.
USE master;
GO
--2.
ALTER DATABASE LotteryDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO
--3.
DROP DATABASE LotteryDB

--delect table
drop table BigLottery

--delect data
delete from BigLottery 
where  ID = '1'

--------------------------------------------------------------------------
--Update
update BigLottery
SET UserName = 'Bob', PickNumber= '17032122042506'
WHERE ID = 1;





