use Lib_SYSTEM 
go

create proc add_newspaper
@id nvarchar(30),
@NID nvarchar(30)
as
begin 
	if ( select NID from CNewspaper where CNewspaper.customer_id = @id and CNewspaper.NID = @NID) is not null begin
		print N'you already have this newspaper'
	end
	else if (select [count] from Newspaper where Newspaper.NID = @NID) <= 0 begin
		print N'we dont have enough book'
	end
	else begin
		insert into CNewspaper(customer_id, NID) values(@id, @NID)
		update Newspaper set [count] = [count] - 1 where Newspaper.NID = @NID
	end 
end
go


Exec add_newspaper 'C001', 'NID001'

select * from Employee

select * from CNewspaper

delete from CNewspaper where CNewspaper.customer_id = 'C001'

insert into CNewspaper values('C002', 'NID001')

select * from Newspaper

