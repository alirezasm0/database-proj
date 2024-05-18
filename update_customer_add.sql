use Lib_SYSTEM 
go

create proc update_customer_add
@newadd nvarchar(30),
@id nvarchar(30)
as
begin
update Customer set [address] = @newadd where Customer.customer_id = @id
end
go


Exec update_customer_add N'تهران، خیابان اصلی، کوچه برج', 'C001'

select * from Customer