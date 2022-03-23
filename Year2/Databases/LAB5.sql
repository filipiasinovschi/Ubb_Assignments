use master;

go

create table dbo.Ta (
	aid int primary key identity(1, 1),
	a2 int unique,
	a3 int
)

create table dbo.Tb (
	bid int primary key identity(1, 1),
	b2 int,
	b3 int
)

create table dbo.Tc (
	cid int primary key identity(1, 1),
	aid int,
	bid int
)

--a)
--clustered index scan->bassically we scan/select the table
select aid from dbo.Ta

--clustered index seek->we use the clustered index structure to efficiently find a specific subset of rows
select aid from dbo.Ta where aid > 5

--nonclustered index scan->A non-clustered index is an index where the order of the rows doesn not match the physical order of the actual data 
select a2 from dbo.Ta

--nonclustered index seek
select a2 from dbo.Ta where a2 > 1

--key lookup->A key lookup is an operation that occurs when a query has used a nonclustered index on a given table, but needs to access more columns to complete the query
select * from Ta

--b)
select b2 from dbo.Tb where b2 = 5 

if exists(select * from sys.indexes where name = 'index_b2')
	drop index index_b2 on dbo.Tb
create nonclustered index index_b2 on dbo.Tb(b2)

select b2 from dbo.Tb where b2 = 5 

--c)
go

CREATE VIEW View_TaTc AS
    SELECT Tc.cid, Tc.aid
    FROM dbo.Tc inner join dbo.Ta T on T.aid = dbo.Tc.aid
    WHERE dbo.Tc.aid between 1 and 100
go

select * from View_TaTc --clustered index scan on Tc and clustered index seek on Ta 

if exists(select * from sys.indexes where name = 'index_aid')
	drop index index_aid on dbo.Tc
create nonclustered index index_aid on dbo.Tc(aid)

select * from View_TaTc --nonclustered index scan on Tc and clustered index seek on Ta 