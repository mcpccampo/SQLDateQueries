declare @f as float  = '12121211.10221'
select cast(@f as numeric(38,2))
SELECT TRY_CAST(@f AS NUMERIC(7,2))

-- date commands
select GETDATE()
select CURRENT_TIMESTAMP
select SYSDATETIME()
select SYSDATETIMEOFFSET()

-- three months ago
select dateadd(day, -7, getdate())
select dateadd(month, -7, getdate())

-- split day
select 
 day(getdate()) as day
 ,month(getdate()) as month
 ,year(getdate()) as year
 ,datename(month, getDate()) as monthName
 ,datepart(dayofyear, getdate()) as dayOfyear