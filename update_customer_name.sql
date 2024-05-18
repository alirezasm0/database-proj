use Lib_SYSTEM 
go

create proc update_customer_name
@newName nvarchar(30),
@id nvarchar(30)
as
begin
update Customer set Cname = @newName where Customer.customer_id = @id
end
go


Exec update_customer_name N'مشتری ۵', 'C005'

select * from Customer