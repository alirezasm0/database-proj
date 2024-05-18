use Lib_SYSTEM 
go

create proc update_customer_phone
@newPhone nvarchar(30),
@id nvarchar(30)
as
begin
update Customer set phone = @newPhone where Customer.customer_id = @id
end
go


Exec update_customer_phone N'09123456789', 'C001'

select * from Customer