use Lib_SYSTEM 
go

create proc update_customer_pass
@newPass nvarchar(30),
@id nvarchar(30)
as
begin
update Customer set Cpassword = @newPass where Customer.customer_id = @id
end
go


Exec update_customer_pass N'123456', 'C001'

select * from Customer