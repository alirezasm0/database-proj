use Lib_SYSTEM
go

create function get_Customer_news
(@id nvarchar(30))
returns table
as
	return select Newspaper.Nname from Newspaper inner join CNewspaper on Newspaper.NID = Newspaper.NID where CNewspaper.customer_id = @id
go

select * from get_Customer_news('C001')