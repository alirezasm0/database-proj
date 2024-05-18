use Lib_SYSTEM 
go

create proc delete_magazine_total

@MID nvarchar(30)
as
begin 
	if ( select Magazine.[count] from Magazine where Magazine.MID = @MID	) > 0 begin
		update Magazine set [count] = [count] - 1 where Magazine.MID = @MID
	end
	else begin
		print N'there is not enough magazine to delete'
	end
end
go


Exec delete_magazine_total 'MID001'

select * from Employee

select * from Magazine

delete from CBook where CBook.customer_id = 'C001'