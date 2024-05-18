use Lib_SYSTEM
go

create proc delete_employee
@employee_id nvarchar(30)
as
begin
	if exists(select Employee.employee_id from Employee where employee_id = @employee_id) begin
		delete from Employee where employee_id = @employee_id
	end
	else begin
		print N'there is no employee with this ID'
	end
end

select * from Employee

Exec delete_employee 'A001','نویسنده ۱', '123456', 'تهران، خیابان اصلی، کوچه برج', '09123456789'