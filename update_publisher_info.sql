use Lib_SYSTEM 
go

create proc update_publisher_info
@publisher_id nvarchar(30),
@Pname nvarchar(30),
@newPass nvarchar(30),
@newPhone nvarchar(30),
@newAdd nvarchar(30)
as
begin
if @Pname is not null begin
	update Publisher set Pname = @Pname where Publisher.publisher_id = @publisher_id
end 
if @newPass is not null begin
	update Publisher set Ppassword = @newPass where Publisher.publisher_id = @publisher_id
end 
if @newPhone is not null begin
	update Publisher set phone = @newPhone where Publisher.publisher_id = @publisher_id
end
if @newAdd is not null begin
	update Publisher set [address] = @newAdd where Publisher.publisher_id = @publisher_id
end
end
go


Exec update_manager_info 'E001', N'مدیر کتابخانه',null ,null , null

select * from Library_manager