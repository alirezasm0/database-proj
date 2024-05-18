use Lib_SYSTEM
go

create proc delete_publisher
@publisher_id nvarchar(30)
as
begin
	if exists(select Publisher.publisher_id from Publisher where publisher_id = @publisher_id) begin
		delete from Publisher where publisher_id = @publisher_id
	end
	else begin
		print N'there is no publisher with this ID'
	end
end

select * from Author

Exec delete_publisher 'A001','نویسنده ۱', '123456', 'تهران، خیابان اصلی، کوچه برج', '09123456789'