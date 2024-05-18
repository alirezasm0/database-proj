use Lib_SYSTEM
go

create function get_customer_list()
returns table
as
	return select * from Customer
go

select * from get_customer_list()