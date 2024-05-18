use Lib_SYSTEM 
go

create proc update_customer_info
@id nvarchar(30),
@cname nvarchar(30),
@newPass nvarchar(30),
@newPhone nvarchar(30),
@newAdd nvarchar(30),
@newEsh nvarchar(30)
as
begin
if @cname is not null begin
	update Customer set Cname = @cname where Customer.customer_id = @id
end 
if @newPass is not null begin
	update Customer set Cpassword = @newPass where Customer.customer_id = @id
end 
if @newPhone is not null begin
	update Customer set phone = @newPhone where Customer.customer_id = @id
end
if @newAdd is not null begin
	update Customer set [address] = @newAdd where Customer.customer_id = @id
end

if @newEsh is not null begin
	update Customer set Csubscription = @newEsh where Customer.customer_id = @id
end
end
go


Exec update_customer_info 'C001', N'مشتری ۱',null ,null , null, null

select * from Customer