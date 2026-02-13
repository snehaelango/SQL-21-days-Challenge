
-- 1CREATE DATABASE

CREATE DATABASE StudentsDB;
USE StudentsDB;

-- CREATE TABLES

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Duration VARCHAR(20)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


-- INSERT SAMPLE DATA

INSERT INTO Students VALUES
(1, 'Aarav', 21, 'Chennai'),
(2, 'Meera', 22, 'Bangalore'),
(3, 'Karthik', 23, 'Hyderabad'),
(4, 'Divya', 21, 'Delhi');

INSERT INTO Courses VALUES
(101, 'Data Analytics', '3 Months'),
(102, 'Python Programming', '2 Months'),
(103, 'SQL Basics', '1 Month');

INSERT INTO Enrollments VALUES
(1001, 1, 101, '2025-05-10'),
(1002, 2, 102, '2025-06-01'),
(1003, 3, 103, '2025-06-15');

-- DAY 5: SQL CODING CHALLENGE –JOINS & BUILDIN FUNTION
-- Show students with their enrolled course names.
select s.StudentName,c.CourseName from students s join enrollments e on s.StudentID=e.StudentID
join courses c on e.CourseID=c.CourseID;

-- List all students and their courses, including those without matches.
select s.StudentName,c.CourseName from students s left join enrollments e on s.StudentID=e.StudentID
left join courses c on e.CourseID=c.CourseID;

-- While preparing numeric reports, analysts need to round off decimal values.
-- Round the value 123.4567 to two decimal places using the ROUND() function.
select round(123.4567,2) as Rounded_value;

-- The HR team wants to calculate absolute values and remainders for data validation.
-- Use ABS() to convert negative numbers to positive and MOD() to find the remainder when 25 is divided by 4.
select abs(-150) as absolute_value, mod(25,4) as mod_value; 

-- Use CONCAT() to merge StudentName and City into one column like “Aarav from Chennai.”
select concat(StudentName,' ','from',' ',City) as Full_Description from students;

-- Use LENGTH() to display each student’s name along with its character count.
select StudentName,length(StudentName) as Name_Length from students;

-- Course titles need updating — every occurrence of “SQL” should be replaced with “Database.”
select CourseName,replace(CourseName,"SQL","Database") as Updated_CourseName from courses;

-- For generating student codes, you need the first 3 letters of each name.
select StudentName, substring(StudentName,1,3) as Code_Prefix from students;

-- Use UPPER() and LOWER() to show each name in uppercase and lowercase.
select StudentName, upper(StudentName) as Upper_name,lower(StudentName) as Lower_name from students;

-- 1.	Use NOW() to display the current date and time.
-- 2.	Use DATEDIFF() to find the number of days between '2025-06-01' and '2025-05-10'.
-- 3.	Use DATE_ADD() to add 10 days to each student’s EnrollmentDate.
select s.StudentName,e.EnrollmentDate,DATE_ADD(e.EnrollmentDate,interval 10 day) as FollowUp_Date,
datediff('2025-06-01','2025-05-10') as Days_Difference,now() as Current_DateTime from students s join enrollments e
on s.StudentID=e.StudentID;
