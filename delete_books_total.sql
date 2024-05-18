use Lib_SYSTEM 
go

create proc delete_books_total
@ISBN nvarchar(30)
as
begin 
	if ( select Book.[count] from Book where Book.ISBN = @ISBN	) > 0 begin
		update Book set [count] = [count] - 1 where Book.ISBN = @ISBN 
	end
	else begin
		print N'there is not enough book to delete'
	end
end
go


Exec delete_books_total 'ISBN001'

select * from Employee

select * from Book

delete from CBook where CBook.customer_id = 'C001'