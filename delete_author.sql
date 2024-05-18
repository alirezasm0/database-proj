use Lib_SYSTEM
go

create proc delete_author
@author_id nvarchar(30)
as
begin
	if exists(select Author.author_id from Author where author_id = @author_id) begin
		delete from Author where author_id = @author_id
	end
	else begin
		print N'there is no one with this ID'
	end
end

select * from Author

Exec delete_author'A001','نویسنده ۱', '123456', 'تهران، خیابان اصلی، کوچه برج', '09123456789'