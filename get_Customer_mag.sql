use Lib_SYSTEM
go

create function get_Customer_mag
(@id nvarchar(30))
returns table
as
	return select Magazine.Mname from Magazine inner join Cmagazine on Magazine.MID = Cmagazine.MID where Cmagazine.customer_id = @id
go

select * from get_Customer_mag('C001')