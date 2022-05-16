SELECT TOP (1000) [id]
      ,[user_id]
      ,[first_name]
      ,[last_name]
      ,[dob]
      ,[city]
      ,[salary]
  FROM [multiRecords].[dbo].[series]

--in name/salary format getting recods

select concat_ws('.', first_name, salary) AS ConcatenatedString from [multiRecords].[dbo].[series];





create table tblbarcodes (
ID int primary key identity,
keys varchar(50)

) 
go

declare @keys varchar(50)
declare @counter int
set @counter = 1;
while(@counter <= 100000)
begin 
select @keys = newid();
insert into tblbarcodes values (@keys);
set @counter = @counter+1;
end

select * from tblbarcodes;



declare @t table(randum float)
declare @cnt int; set @cnt = 0
while @cnt <= 100000
begin 
set @cnt = @cnt + 1
insert into @t
select rand((datepart(mm, getdate()) * 100000)
+(datepart(ss, getdate()) * 1000)
+datepart(ms, getdate()))
end


select randum, count(*)
from @t 
group by randum


select rand((datepart(mm, getdate()) * 100000)
+(datepart(ss, getdate()) * 1000)
+datepart(ms, getdate()))

