use Lib_SYSTEM
go

create proc add_employee
@employee_id nvarchar(30),
@Ename nvarchar(30),
@Epassword nvarchar(30),
@address nvarchar(30),
@phone nvarchar(30),
@position nvarchar(30)
as
begin
	if not exists(select Employee.employee_id from Employee where employee_id = @employee_id) begin
		insert into Employee(employee_id, Ename, Epassword, [address], phone, position) 
		values(@employee_id, @Ename, @Epassword, @address, @phone, @position)
	end
	else begin
		print N'there is already a Employee with this ID'
	end
end

select * from Employee

Exec add_author'A001','نویسنده ۱', '123456', 'تهران، خیابان اصلی، کوچه برج', '09123456789'