use Lib_SYSTEM
go
create function get_newspaper_by_name (@name_ nvarchar(30))
returns table
as

-- return select * from MDetails inner join Author on Author.author_id = MDetails.author_id where Author.Aname = @name_
return select Newspaper.Nname from Newspaper inner join NDetails on Newspaper.NID = NDetails.NID where NDetails.author_id in 
(Select author_id from Author where Author.Aname = @name_)

go
select * from get_newspaper_by_name(N'نویسنده ۱')