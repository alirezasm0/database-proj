use Lib_SYSTEM 
go

create proc update_manager_info
@id nvarchar(30),
@mname nvarchar(30),
@newPass nvarchar(30),
@newPhone nvarchar(30),
@newAdd nvarchar(30)
as
begin
if @mname is not null begin
	update Library_manager set Mname = @mname where Library_manager.employee_id = @id
end 
if @newPass is not null begin
	update Library_manager set Mpassword = @newPass where Library_manager.employee_id = @id
end 
if @newPhone is not null begin
	update Library_manager set phone = @newPhone where Library_manager.employee_id = @id
end
if @newAdd is not null begin
	update Library_manager set [address] = @newAdd where Library_manager.employee_id = @id
end
end
go


Exec update_manager_info 'E001', N'مدیر کتابخانه',null ,null , null

select * from Library_manager