use Lib_SYSTEM
go

create function get_book_by_name (@name_ nvarchar(30))
returns table
as
return select Book.Bcategory, Book.Bname from Book inner join Author as BA on BA.author_id = Book.Bauthor where BA.Aname = @name_
go


select * from get_book_by_name(N'نویسنده ۱')