use Lib_SYSTEM 
go

create proc add_magazine_total
@MID nvarchar(30),
@Mcategory nvarchar(30),
@Mname nvarchar(30),
@shelf_number int,
@row_number int,
@rental_price int,
@price int,
@status bit,
@count_ int,
@libID int
as
begin 
	if ( select Magazine.[count] from Magazine where Magazine.MID = @MID	) > 0 begin
		update Magazine set [count] = [count] + 1 where Magazine.MID = @MID 
	end
	else begin
		insert into Magazine(MID, Mcategory, Mname, shelf_number, [row_number], rental_price, price, [status], [count], libID) 
		values(@MID, @Mcategory, @Mname, @shelf_number, @row_number, @rental_price, @price, @status, @count_, @libID)
	end
end
go


Exec add_magazine_total 'MID007', 'مجله', 'Magazine ۱', 2, 1, 10000, 50000, 1, 10, 1

select * from Employee

select * from Magazine

delete from CBook where CBook.customer_id = 'C001'