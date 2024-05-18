use Lib_SYSTEM
go
-- Insert data into the Library table
INSERT INTO Library (libID, lib_name, [address], phone_number, manager, income)
VALUES (1, N'کتابخانه مرکزی', N'تهران، خیابان اصلی، کوچه برج', N'021-12345678', N'مدیر اصلی', 50000000);

-- Insert data into the Library_manager table
INSERT INTO Library_manager (employee_id, Mpassword, [address], phone, Mname, position, salary, [start_Date], end_Date, libID)
VALUES ('E001', '123', N'تهران، خیابان اصلی، کوچه برج', N'09123456789', N'مدیر کتابخانه', N'مدیر', 3000000, '2023-01-01', NULL, 1);

-- Insert data into the Employee table
INSERT INTO Employee (employee_id, Ename, Epassword, [address], phone, position, salary, [start_Date], end_Date, libID)
VALUES (1001, N'کارمند ۱', '123456', N'تهران، خیابان اصلی، کوچه برج', N'09123456789', N'کارمند', 2000000, '2023-01-01', NULL, 1);

-- Insert data into the Author table
INSERT INTO Author (author_id, Aname, Apassword, [address], phone, salary, [start_Date], end_Date)
VALUES ('A001', N'نویسنده ۱', '123456', N'تهران، خیابان اصلی، کوچه برج', N'09123456789', 1500000, '2023-01-01', NULL);
INSERT INTO Author (author_id, Aname, Apassword, [address], phone, salary, [start_Date], end_Date)
VALUES ('A002', N'نویسنده ۱', '123456', N'تهران، خیابان اصلی، کوچه برج', N'09123456789', 1500000, '2023-01-01', NULL);
INSERT INTO Author (author_id, Aname, Apassword, [address], phone, salary, [start_Date], end_Date)
VALUES ('A003', N'نویسنده ۱', '123456', N'تهران، خیابان اصلی، کوچه برج', N'09123456789', 1500000, '2023-01-01', NULL);
--update Author set Aname = N'نویسنده ۳' where author_id = 'A003'

-- Insert data into the Publisher table
INSERT INTO Publisher (publisher_id, Pname, Ppassword, [address], phone, [start_Date], end_Date)
VALUES ('P001', N'انتشارات فارسی', '123456', N'تهران، خیابان اصلی، کوچه برج', N'09123456789', '2023-01-01', NULL);
INSERT INTO Publisher (publisher_id, Pname, Ppassword, [address], phone, [start_Date], end_Date)
VALUES ('P002', N'انتشارات فارسی ۲', '123456', N'تهران، خیابان اصلی، کوچه برج', N'09123456789', '2023-01-01', NULL);
INSERT INTO Publisher (publisher_id, Pname, Ppassword, [address], phone, [start_Date], end_Date)
VALUES ('P003', N'۳ انتشارات فارسی', '123456', N'تهران، خیابان اصلی، کوچه برج', N'09123456789', '2023-01-01', NULL);
--update Publisher set Pname = N'انتشارات فارسی ۳' where publisher_id = 'P003'


-- Insert data into the Book table
INSERT INTO Book (ISBN, Bauthor, Bcategory, Bname, shelf_number, [row_number], rental_price, price, [status], [count], libID)
VALUES ('ISBN001', 'A001', N'داستان', N'کتاب ۱', 1, 1, 10000, 50000, 1, 10, 1);

-- Insert data into the BDetails table
INSERT INTO BDetails (ISBN, publisher_id)
VALUES ('ISBN001', 'P001');

-- Insert data into the Magazine table
INSERT INTO Magazine (MID, Mcategory, Mname, shelf_number, [row_number], rental_price, price, [status], [count], libID)
VALUES ('MID001', N'مجله', N'Magazine ۱', 2, 1, 5000, 20000, 1, 5, 1);

-- Insert data into the MDetails table
INSERT INTO MDetails (MID, publisher_id, author_id)
VALUES ('MID001', 'P001', 'A001');

-- Insert data into the Newspaper table
INSERT INTO Newspaper (NID, Ncategory, Nname, shelf_number, [row_number], rental_price, price, [status], [count], libID)
VALUES ('NID001', N'روزنامه', N'Newspaper ۱', 3, 1, 2000, 5000, 1, 20, 1);

-- Insert data into the NDetails table
INSERT INTO NDetails (NID, publisher_id, author_id)
VALUES ('NID001', 'P001', 'A001');

-- Insert data into the Customer table
INSERT INTO Customer (customer_id, Cname, Cpassword, [address], phone, Csubscription, [start_Date], end_Date)
VALUES ('C001', N'مشتری ۱', '123456', N'تهران، خیابان اصلی، کوچه برج', N'09123456789', N'اشتراک سالانه', '2023-01-01', NULL);

-- Insert data into the CBook table
INSERT INTO CBook (customer_id, ISBN)
VALUES ('C001', 'ISBN001');

-- Insert data into the MBook table
INSERT INTO CMagazine (customer_id, MID)
VALUES ('C001', 'MID001');

-- Insert data into the NBook table
INSERT INTO CNewspaper (customer_id, NID)
VALUES ('C001', 'NID001');

-------------------------------------------

-- Insert data into the Book table
INSERT INTO Book (ISBN, Bauthor, Bcategory, Bname, shelf_number, [row_number], rental_price, price, [status], [count], libID)
VALUES 
  ('ISBN002', 'A001', N'داستان', N'کتاب ۲', 2, 2, 12000, 55000, 1, 8, 1),
  ('ISBN003', 'A002', N'روانشناسی', N'کتاب ۳', 3, 1, 15000, 60000, 1, 12, 1),
  ('ISBN004', 'A001', N'تاریخی', N'کتاب ۴', 2, 3, 10000, 45000, 1, 6, 1),
  ('ISBN005', 'A002', N'علمی', N'کتاب ۵', 1, 2, 13000, 58000, 1, 9, 1),
  ('ISBN006', 'A003', N'داستان', N'کتاب ۶', 4, 2, 11000, 52000, 1, 7, 1);

-- Insert data into the BDetails table
INSERT INTO BDetails (ISBN, publisher_id)
VALUES 
  ('ISBN002', 'P001'),
  ('ISBN003', 'P002'),
  ('ISBN004', 'P001'),
  ('ISBN005', 'P002'),
  ('ISBN006', 'P003');

-- Insert data into the Magazine table
INSERT INTO Magazine (MID, Mcategory, Mname, shelf_number, [row_number], rental_price, price, [status], [count], libID)
VALUES
  ('MID002', N'مجله', N'Magazine ۳', 4, 1, 5500, 22000, 1, 6, 1),
  ('MID003', N'مجله', N'Magazine ۳', 4, 1, 5500, 22000, 1, 6, 1),
  ('MID004', N'مجله', N'Magazine ۴', 2, 4, 7000, 28000, 1, 8, 1),
  ('MID005', N'مجله', N'Magazine ۵', 1, 3, 6500, 26000, 1, 9, 1),
  ('MID006', N'مجله', N'Magazine ۶', 3, 3, 5500, 23000, 1, 7, 1);

INSERT INTO Magazine (MID, Mcategory, Mname, shelf_number, [row_number], rental_price, price, [status], [count], libID)
VALUES
  ('MID008', N'مجله', N'magazine1', 4, 1, 5500, 22000, 1, 6, 1);

-- Insert data into the MDetails table
INSERT INTO MDetails (MID, publisher_id, author_id)
VALUES 
  ('MID002', 'P001', 'A001'),
  ('MID003', 'P002', 'A002'),
  ('MID004', 'P001', 'A003'),
  ('MID005', 'P002', 'A001'),
  ('MID006', 'P003', 'A002');

-- Insert data into the Newspaper table
INSERT INTO Newspaper (NID, Ncategory, Nname, shelf_number, [row_number], rental_price, price, [status], [count], libID)
VALUES 
  ('NID002', N'روزنامه', N'Newspaper ۲', 2, 1, 3000, 10000, 1, 10, 1),
  ('NID003', N'روزنامه', N'Newspaper ۳', 3, 2, 3500, 12000, 1, 12, 1),
  ('NID004', N'روزنامه', N'Newspaper ۴', 1, 3, 3200, 11000, 1, 9, 1),
  ('NID005', N'روزنامه', N'Newspaper ۵', 4, 1, 2800, 9500, 1, 8, 1),
  ('NID006', N'روزنامه', N'Newspaper ۶', 3, 3, 3300, 11500, 1, 11, 1);
  INSERT INTO Newspaper (NID, Ncategory, Nname, shelf_number, [row_number], rental_price, price, [status], [count], libID)
VALUES 
  ('NID007', N'روزنامه', N'Newspaper1', 2, 1, 3000, 10000, 1, 10, 1);

-- Insert data into the NDetails table
INSERT INTO NDetails (NID, publisher_id, author_id)
VALUES 
  ('NID002', 'P001', 'A002'),
  ('NID003', 'P002', 'A003'),
  ('NID004', 'P001', 'A001'),
  ('NID005', 'P002', 'A002'),
  ('NID006', 'P003', 'A003');

-- Insert data into the Customer table
INSERT INTO Customer (customer_id, Cname, Cpassword, [address], phone, Csubscription, [start_Date], end_Date)
VALUES 
  ('C002', N'مشتری ۲', '987654', N'تهران، خیابان فردوسی، کوچه ۱', N'09129876543', N'ماهانه', '2023-01-01', NULL),
  ('C003', N'مشتری ۳', '654321', N'تهران، خیابان اصلی، کوچه برج', N'09123456789', N'سالیانه', '2023-01-01', NULL),
  ('C004', N'مشتری ۴', '456789', N'تهران، خیابان فردوسی، کوچه ۲', N'09129876543', N'ماهانه', '2023-01-01', NULL),
  ('C005', N'مشتری ۵', '789456', N'تهران، خیابان اصلی، کوچه برج', N'09123456789', N'سالیانه', '2023-01-01', NULL);

-- Insert data into the CBook table
INSERT INTO CBook (customer_id, ISBN)
VALUES 
  ('C001', 'ISBN001'),
  ('C002', 'ISBN002'),
  ('C003', 'ISBN003'),
  ('C004', 'ISBN004'),
  ('C005', 'ISBN005');

-- Insert data into the CMagazine table
INSERT INTO CMagazine (customer_id, MID)
VALUES 
  ('C001', 'MID001'),
  ('C002', 'MID002'),
  ('C003', 'MID003'),
  ('C004', 'MID004'),
  ('C005', 'MID005');

-- Insert data into the CNewspaper table
INSERT INTO CNewspaper (customer_id, NID)
VALUES 
  ('C001', 'NID001'),
  ('C002', 'NID002'),
  ('C003', 'NID003'),
  ('C004', 'NID004'),
  ('C005', 'NID005');


  select * from Library_manager

  