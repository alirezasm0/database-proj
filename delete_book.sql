use Lib_SYSTEM 
go

create proc delete_book
@id nvarchar(30),
@ISBN nvarchar(30)
as
begin 
	if ( select @ISBN from CBook where CBook.customer_id = @id and CBook.ISBN = @ISBN) is not null begin
		delete from CBook where CBook.customer_id = @id and CBook.ISBN = @ISBN
		update Book set [count] = [count] + 1 where ISBN = @ISBN
	end 
	else begin
		print N'you dont have this book'
	end 
end
go


Exec delete_book 'C001', 'ISBN001'

select * from Employee

select * from CBook
select * from Book
delete from Cmagazine where Cmagazine.customer_id = 'C001' and MID = 'MID002'