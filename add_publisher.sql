use Lib_SYSTEM
go

create proc add_publisher
@publisher_id nvarchar(30),
@Pname nvarchar(30),
@Ppassword nvarchar(30),
@address nvarchar(30),
@phone nvarchar(30)
as
begin
	if not exists(select publisher_id from Publisher where publisher_id = @publisher_id) begin
		insert into Publisher (publisher_id, Pname, Ppassword, [address], phone) 
		values(@publisher_id, @Pname, @Ppassword, @address, @phone)
	end
	else begin
		print N'there is already a publisher with this ID'
	end
end

select * from Publisher

Exec add_publisher 'P001','انتشارات فارسی', '123456', 'تهران، خیابان اصلی، کوچه برج', '09123456789'