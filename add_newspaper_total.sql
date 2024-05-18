use Lib_SYSTEM 
go

create proc add_newspaper_total
@NID nvarchar(30),
@Ncategory nvarchar(30),
@Nname nvarchar(30),
@shelf_number int,
@row_number int,
@rental_price int,
@price int,
@status bit,
@count_ int,
@libID int
as
begin 
	if ( select Magazine.[count] from Magazine where Magazine.MID = @NID	) > 0 begin
		update Magazine set [count] = [count] + 1 where Magazine.MID = @NID 
	end
	else begin
		insert into Magazine(MID, Mcategory, Mname, shelf_number, [row_number], rental_price, price, [status], [count], libID) 
		values(@NID, @Ncategory, @Nname, @shelf_number, @row_number, @rental_price, @price, @status, @count_, @libID)
	end
end
go


Exec add_newspaper_total 'MID007', 'مجله', 'Magazine ۱', 2, 1, 10000, 50000, 1, 10, 1

select * from Employee

select * from Magazine

delete from CBook where CBook.customer_id = 'C001'