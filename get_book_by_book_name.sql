use Lib_SYSTEM
go
create function get_book_by_book_name (@name_ nvarchar(30))
returns table
as
return select * from Book where Book.Bname = @name_
go


select * from get_book_by_book_name(N'کتاب ۱')

select * from Book