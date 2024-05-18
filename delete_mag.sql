use Lib_SYSTEM 
go

create proc delete_mag
@id nvarchar(30),
@MID nvarchar(30)
as
begin 
	if ( select MID from Cmagazine where Cmagazine.customer_id = @id and Cmagazine.MID = @MID) is not null begin
		delete from Cmagazine where Cmagazine.customer_id = @id and Cmagazine.MID = @MID
		update Magazine set [count] = [count] + 1 where MID = @MID
	end 
	else begin
		print N'you dont have this magazine'
	end 
end
go


Exec delete_mag 'C001', 'MID001'

select * from Employee
select * from Magazine
select * from Cmagazine

delete from Cmagazine where Cmagazine.customer_id = 'C001' and MID = 'MID002'