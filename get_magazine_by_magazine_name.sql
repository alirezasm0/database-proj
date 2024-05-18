use Lib_SYSTEM
go
create function get_magazine_by_magazine_name (@name_ nvarchar(30))
returns table
as
return select * from Magazine where Magazine.Mname = @name_
go


select * from get_magazine_by_magazine_name('magazine1')

select * from Magazine