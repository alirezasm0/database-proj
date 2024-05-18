use Lib_SYSTEM
go
create function get_Book_by_Pubname (@name_ nvarchar(30))
returns table
as

-- return select * from MDetails inner join Author on Author.author_id = MDetails.author_id where Author.Aname = @name_
return select Book.Bname from Book inner join BDetails on Book.ISBN = BDetails.ISBN where BDetails.publisher_id in 
(Select publisher_id from Publisher where Publisher.Pname = @name_)

go
select * from get_Book_by_Pubname(N'انتشارات فارسی')