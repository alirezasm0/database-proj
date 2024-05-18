use Lib_SYSTEM 
go

create proc delete_newspaper_total
@NID nvarchar(30)
as
begin 
	if ( select Newspaper.[count] from Newspaper where Newspaper.NID = @NID	) > 0 begin
		update Newspaper set [count] = [count] - 1 where Newspaper.NID = @NID
	end
	else begin
		print N'there is not enough newpaper to delete'
	end
end
go


Exec delete_newspaper_total 'NID001'

select * from Employee

select * from Newspaper

delete from CBook where CBook.customer_id = 'C001'