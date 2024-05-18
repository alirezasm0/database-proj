use Lib_SYSTEM 
go

create proc add_books
@id nvarchar(30),
@ISBN nvarchar(30)
as
begin 
	if ( select ISBN from CBook where CBook.customer_id = @id and CBook.ISBN = @ISBN) is not null begin
		print N'you already have this book'
	end 
	else if (select [count] from Book where Book.ISBN = @ISBN) <= 0 begin
		print N'we dont have enough book'
	end
	else begin
		insert into Cbook values(@id, @ISBN)
		update Book set[count] = [count] - 1 where ISBN = @ISBN
	end 
end
go

Exec add_books 'C001', 'ISBN001'
select * from Book
select * from Employee

select * from CBook

delete from CBook where CBook.customer_id = 'C001'