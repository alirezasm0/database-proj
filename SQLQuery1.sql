Create Database Lib_SYSTEM
    on( Name='uni_data',FileName='E:\library\new\lib_data.mdf',Size=5 )
log on( Name='uni_log',FileName='E:\library\new\lib_lig.ldf' )
GO
use Lib_SYSTEM
go
create table Book
(
   ISBN nvarchar(30) primary key,
   Bauthor nvarchar(30) FOREIGN KEY REFERENCES Author(author_id), 
   Bcategory nvarchar(30) not null,
   Bname nvarchar(30) not null,                 
   shelf_number int not null,
   [row_number] int not null,
   rental_price float not null,
   price float not null,
   [status] bit not null,  
   [count] int not null,
   libID int FOREIGN key references [Library](libID),
 )
 CREATE TABLE BDetails(
    ISBN nvarchar(30) FOREIGN key REFERENCES Book(ISBN),
    publisher_id nvarchar(30) FOREIGN key references Publisher(publisher_id),
 )

 CREATE TABLE MDetails(
    MID nvarchar(30) FOREIGN key REFERENCES Magazine(MID),
    publisher_id nvarchar(30) FOREIGN key references Publisher(publisher_id),
    author_id nvarchar(30) FOREIGN key references Author(author_id)
 )

CREATE TABLE NDetails(
    NID nvarchar(30) FOREIGN key REFERENCES Newspaper(NID),
    publisher_id nvarchar(30) FOREIGN key references Publisher(publisher_id),
    author_id nvarchar(30) FOREIGN key references Author(author_id)
 )
 
 create table Magazine
(
   MID nvarchar(30) primary key,
   Mcategory nvarchar(30) not null,
   Mname nvarchar(30) not null,                 
   shelf_number int not null,
   [row_number] int not null,
   rental_price float not null,
   price float not null,
   [status] bit not null,   
   [count] int not null,
   libID int FOREIGN key references [Library](libID),
 )

  create table Newspaper
(
   NID nvarchar(30) primary key,
   Ncategory nvarchar(30) not null,
   Nname nvarchar(30) not null,                 
   shelf_number int not null,
   [row_number] int not null,
   rental_price float not null,
   price float not null,
   [status] bit not null,   
   [count] int not null,
   libID int FOREIGN key references [Library](libID)
 )

 create table [Library]
 (
    libID int primary key,
    lib_name nvarchar(30) not null,
    [address] nvarchar(30) not null,
    phone_number nvarchar(30) not null,
    manager nvarchar(30) not null, -- to be replaced with a foreign key
    income float,

 )



 create table Library_manager 
 (
 employee_id nvarchar(30) primary key,
 Mpassword nvarchar(3) null,
 [address] nvarchar(30) null,
 phone nvarchar(30) null,
 Mname nvarchar(30) null,
 position nvarchar(30) not null,
 salary float,
 [start_Date] Datetime2,
 end_Date Datetime2,
 libID int foreign key references [Library](libID)
 )

-- ALTER TABLE Library_manager ALTER COLUMN Mname nvarchar(30) NULL

 create table Employee
 (
 employee_id int primary key,
 Ename nvarchar(30) null,
 Epassword nvarchar(30) null,
 [address] nvarchar(30) null,
 phone nvarchar(30) null,
 position nvarchar(30) not null,
 salary float,
 [start_Date] Datetime2,
 end_Date Datetime2,
 libID int foreign key references [Library](libID)
 )

-- ALTER TABLE Employee ALTER COLUMN phone nvarchar(30) NULL


 CREATE TABLE Author 
 (
    author_id nvarchar(30) primary key,
    Aname nvarchar(30) not null,
    Apassword nvarchar(30) not null,
    [address] nvarchar(30) not null,
    phone nvarchar(30) not null,
    salary float,
    [start_Date] Datetime2,
    end_Date Datetime2,
 )



  CREATE TABLE  PARelation(
    publisher_id nvarchar(30) FOREIGN key references Publisher(publisher_id),
    author_id nvarchar(30) FOREIGN key references Author(author_id)
  )

  CREATE TABLE Publisher 
 (
    publisher_id nvarchar(30) primary key,
    Pname nvarchar(30) not null,
    Ppassword nvarchar(30) not null,
    [address] nvarchar(30) not null,
    phone nvarchar(30) not null,
    [start_Date] Datetime2,
    end_Date Datetime2,
 )

 CREATE TABLE CBook(
    customer_id nvarchar(30) FOREIGN key REFERENCES Customer(customer_id),
    ISBN nvarchar(30) FOREIGN key references Book(ISBN)
 )
 
 CREATE TABLE Cmagazine(
    customer_id nvarchar(30) FOREIGN key REFERENCES Customer(customer_id),
    MID nvarchar(30) FOREIGN key references Magazine(MID)
 )
 
 CREATE TABLE CNewspaper(
    customer_id nvarchar(30) FOREIGN key REFERENCES Customer(customer_id),
    NID nvarchar(30) FOREIGN key references Newspaper(NID)
 )

 CREATE TABLE Customer
 (
    customer_id nvarchar(30) primary key,
    Cname nvarchar(30) not null,
    Cpassword nvarchar(30) not null,
    [address] nvarchar(30) not null,
    phone nvarchar(30) not null,
    Csubscription nvarchar(30) not null,
    [start_Date] Datetime2,
    end_Date Datetime2
 )
