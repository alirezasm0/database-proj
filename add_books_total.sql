use Lib_SYSTEM 
go

create proc add_books_total
@ISBN nvarchar(30),
@Bauthor nvarchar(30),
@Bcategory nvarchar(30),
@Bname nvarchar(30),
@shelf_number int,
@row_number int,
@rental_price int,
@price int,
@status bit,
@count_ int,
@libID int
as
begin 
	if ( select Book.[count] from Book where Book.ISBN = @ISBN	) > 0 begin
		update Book set [count] = [count] + 1 where Book.ISBN = @ISBN 
	end
	else begin
		insert into Book(ISBN, Bauthor, Bcategory, Bname, shelf_number, [row_number], rental_price, price, [status], [count]) 
		values(@ISBN, @Bauthor, @Bcategory, @Bname, @shelf_number, @row_number, @rental_price, @price, @status, @count_)
	end
end
go


Exec add_books_total 'ISBN007', 'A001', 'داستان', 'کتاب ۱',  1, 1, 10000, 50000, 1, 10, 1

select * from Employee

select * from Book

delete from CBook where CBook.customer_id = 'C001'