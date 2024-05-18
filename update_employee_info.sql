use Lib_SYSTEM 
go

create proc update_employee_info
@id nvarchar(30),
@Ename nvarchar(30),
@newPass nvarchar(30),
@newPhone nvarchar(30),
@newAdd nvarchar(30)
as
begin
if @Ename is not null begin
	update Employee set Ename = @Ename where Employee.employee_id = @id
end 
if @newPass is not null begin
	update Employee set Epassword = @newPass where Employee.employee_id = @id
end 
if @newPhone is not null begin
	update Employee set phone = @newPhone where Employee.employee_id = @id
end
if @newAdd is not null begin
	update Employee set [address] = @newAdd where Employee.employee_id = @id
end
end
go


Exec update_employee_info '1001', N'کارمند ۱',null ,null , null

select * from Employee