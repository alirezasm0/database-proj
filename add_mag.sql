use Lib_SYSTEM 
go

create proc add_mag
@id nvarchar(30),
@MID nvarchar(30)
as
begin 
	if ( select MID from Cmagazine where Cmagazine.customer_id = @id and Cmagazine.MID = @MID) is not null begin
		print N'you already have this magazine'
	end
	else if (select [count] from Magazine where Magazine.MID = @MID) <= 0 begin
		print N'we dont have enough book'
	end
	else begin
		insert into Cmagazine values(@id, @MID)
		update Magazine set[count] = [count] - 1 where MID = @MID
	end 
end
go


Exec add_mag 'C001', 'MID002'

select * from Employee

select * from Cmagazine

delete from Cmagazine where Cmagazine.customer_id = 'C001' and MID = 'MID002'