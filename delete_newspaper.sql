use Lib_SYSTEM 
go

create proc delete_newspaper
@id nvarchar(30),
@NID nvarchar(30)
as
begin 
	if ( select @NID from CNewspaper where CNewspaper.customer_id = @id and CNewspaper.NID = @NID) is not null begin
		delete from CNewspaper where CNewspaper.customer_id = @id and CNewspaper.NID = @NID
		update Newspaper set [count] = [count] + 1 where NID = @NID
	end 
	else begin
		print N'you dont have this book'
	end 
end
go


Exec delete_newspaper 'C001', 'ISBN002'

select * from Employee

select * from CNewspaper

delete from Cmagazine where Cmagazine.customer_id = 'C001' and MID = 'MID002'