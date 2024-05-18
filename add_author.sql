use Lib_SYSTEM
go

create proc add_author
@author_id nvarchar(30),
@Aname nvarchar(30),
@Apassword nvarchar(30),
@address nvarchar(30),
@phone nvarchar(30)
as
begin
	if not exists(select Author.author_id from Author where author_id = @author_id) begin
		insert into Author(author_id, Aname, Apassword, [address], phone) 
		values(@author_id, @Aname, @Apassword, @address, @phone)
	end
	else begin
		print N'there is already a author with this ID'
	end
end

select * from Author

Exec add_author'A001','نویسنده ۱', '123456', 'تهران، خیابان اصلی، کوچه برج', '09123456789'