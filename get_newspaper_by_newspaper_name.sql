use Lib_SYSTEM
go
create function get_newspaper_by_newspaper_name (@name_ nvarchar(30))
returns table
as
return select * from Newspaper where Newspaper.Nname = @name_
go


select * from get_newspaper_by_newspaper_name(N'Newspaper1')

select * from Newspaper