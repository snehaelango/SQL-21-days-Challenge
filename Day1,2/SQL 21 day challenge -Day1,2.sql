-- Day 1: SQL Coding Challenge – Hospital Database 

create database challenge;
use challenge;
create table Patients (
Patient_id varchar(30),
Patient_name varchar(50),
Age int,
Gender varchar(10),
Admission_Date date
);

alter table Patients add column Doctor_Assigned VARCHAR(50);
alter table Patients modify column Patient_name varchar(100);
rename table Patients to Patient_Info;
truncate table Patient_Info;
select * from Patient_Info;
drop table Patient_Info;


-- Day 2: SQL Coding Challenge – Online Bookstore 
create table Books (
BookID  INT PRIMARY KEY,
Title  VARCHAR(100) NOT NULL,
Author VARCHAR(50) NOT NULL,
ISBN  VARCHAR(20) UNIQUE,
Price  DECIMAL(8,2) CHECK(Price > 0)
);

create table Orders (
OrderID  INT PRIMARY KEY,
BookID  INT ,
OrderDate  DATE NOT NULL,
Quantity  INT CHECK(Quantity > 0),
FOREIGN KEY (BookID) REFERENCES Books(BookID)
);


alter table Books modify ISBN VARCHAR(20) UNIQUE Default 'NOT PROVIDED';
INSERT INTO BOOKS (BookID,Title,Author,ISBN,Price) values
(1, 'The Alchemist', 'Paulo Coelho', '9780061122415', 299.00),
(2, 'Wings of Fire', 'A. P. J. Abdul Kalam', '9788173711466', 350.00),
(3, 'Harry Potter and the Philosopher''s Stone', 'J. K. Rowling', '9780747532699', 499.00),
(4, 'Atomic Habits', 'James Clear', '9780735211292', 450.00),
(5, 'Rich Dad Poor Dad', 'Robert Kiyosaki', '9781612680194', 399.00);

select * from BOOKS;

INSERT INTO Orders (OrderID, BookID, OrderDate, Quantity) VALUES
(101, 1, '2025-01-10', 2),
(102, 3, '2025-01-12', 1),
(103, 2, '2025-01-15', 4),
(104, 5, '2025-01-18', 1),
(105, 4, '2025-01-20', 3);

update books set Price=250.00 where BookID=1;
update Orders set Quantity=2 where BookID=1;

delete from Orders where OrderID=102;

