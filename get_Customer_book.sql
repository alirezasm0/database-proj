use Lib_SYSTEM
go

create function get_Customer_book
(@id nvarchar(30))
returns table
as
	return select Book.Bname, Book.ISBN from Book inner join CBook on Book.ISBN = CBook.ISBN where CBook.customer_id = @id
go

select * from get_Customer_book('C001')