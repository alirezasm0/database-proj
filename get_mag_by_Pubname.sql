use Lib_SYSTEM
go

create function get_mag_by_Pubname (@name_ nvarchar(30))
returns table
as
-- return select * from MDetails inner join Author on Author.author_id = MDetails.author_id where Author.Aname = @name_
return select Magazine.Mname from Magazine inner join MDetails on Magazine.MID = MDetails.MID where MDetails.publisher_id in 
(Select publisher_id from Publisher where Publisher.Pname = @name_)
go

select * from get_mag_by_Pubname(N'انتشارات فارسی')