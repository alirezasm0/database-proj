use Lib_SYSTEM 
go

create proc update_author_info
@author_id nvarchar(30),
@Aname nvarchar(30),
@newPass nvarchar(30),
@newPhone nvarchar(30),
@newAdd nvarchar(30)
as
begin
if @Aname is not null begin
	update Author set Aname = @Aname where Author.author_id = @author_id
end 
if @newPass is not null begin
	update Author set Apassword = @newPass where Author.author_id = @author_id
end 
if @newPhone is not null begin
	update Author set phone = @newPhone where Author.author_id = @author_id
end
if @newAdd is not null begin
	update Author set [address] = @newAdd where Author.author_id = @author_id
end
end
go


Exec update_customer_info 'A001', N'نویسنده ۵',null ,null , null, null

select * from Customer