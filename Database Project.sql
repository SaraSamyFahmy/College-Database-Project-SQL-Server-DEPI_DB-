-- Database Project --

-- Create Database --

create database DEPI_DB;

-- Create Tables In Database --

-- Student Table --

create table Student(
St_ID int not null,
St_FName varchar(50),
St_LName varchar(10),
St_Address varchar(100),
St_Age int,
Dept_ID int,
St_Super_ID int);

-- Add Primary Key --

alter table Student
add constraint St_ID_PK primary key (St_ID);

-- Department Table --

create table Department(
Dept_ID int not null,
Dept_Name varchar(50),
Dept_Desc varchar(100),
Dept_Location varchar(50),
Dept_Manager_ID int,
Manager_HireDate date);

-- Add Primary Key --

alter table Department
add constraint Dept_ID_PK primary key (Dept_ID);

-- Topics Table --

create table Topics(
Top_ID int not null,
Top_Name varchar(50));

-- Add Primary Key --

alter table Topics
add constraint Top_ID_PK primary key (Top_ID);

-- Instructor Table --

create table Instructor(
Ins_ID int not null,
Ins_Name varchar(50),
Ins_Degree varchar(50),
Salary money,
Dept_ID int);

-- Add Primary Key --

alter table Instructor
add constraint Ins_ID_PK primary key (Ins_ID);

-- Ins_Course Table --

create table Ins_Course(
Ins_ID int not null,
Crs_ID int not null,
Evaluation varchar(50));

-- Add Primary Key --

alter table Ins_Course
add constraint Ins_Crs_ID_PK primary key (Ins_ID,Crs_ID);

-- Course Table --

create table Course(
Crs_ID int not null,
Crs_Name varchar(50),
Crs_Duration int,
Top_ID int);

-- Add Primary Key --

alter table Course
add constraint Crs_ID_PK primary key (Crs_ID);

-- Stud_Course Table --

create table Stud_Course(
Crs_ID int not null,
St_ID int not null,
Grade int);

-- Add Primary Key --

alter table Stud_Course
add constraint Crs_St_ID_PK primary key (Crs_ID,St_ID);

-- Add Foreign Keys In Tables --

-- Student Table --

alter table Student
add constraint St_Super_Id_FK Foreign key (St_Super_Id) references Student(St_ID);

alter table Student
add constraint Dept_ID_FK Foreign key (Dept_ID) references Department(Dept_ID);

-- Department Table --

alter table Department
add constraint Dept_Manager_ID_FK Foreign key (Dept_Manager_ID) references Instructor(Ins_ID);

-- Instructor Table --

alter table Instructor
add constraint Dept_ID_FK2 Foreign key (Dept_ID) references Department(Dept_ID);

-- Course Table -- 

alter table Course
add constraint Top_ID_FK Foreign key (Top_ID) references Topics(Top_ID);

-- Ins_Course Table -- 

alter table Ins_Course
add constraint Ins_ID_FK Foreign key (Ins_ID) references Instructor(Ins_ID);

alter table Ins_Course
add constraint Crs_ID_FK Foreign key (Crs_ID) references Course(Crs_ID);

-- Stud_Course Table --

alter table Stud_Course
add constraint Crs_ID_FK2 Foreign key (Crs_ID) references Course(Crs_ID);

alter table Stud_Course
add constraint St_Id_FK Foreign key (St_Id) references Student(St_ID);

-- Insert Values Into The Tables --

-- Insert Values In Student Table --

INSERT INTO Student(St_ID, St_FName, St_LName, St_Address, St_Age, St_Super_ID) 
VALUES(1, 'Ahmed', 'Hassan', 'Cairo', 20, NULL),
(2, 'Amr', 'Magdy', 'Cairo', 21, 1),
(3, 'Mona', 'Saleh', 'Cairo', 22, 1),
(4, 'Ahmed', 'Mohamed', 'Alex', 23, 1),
(5, 'Khalid', 'Mohamed', 'Alex', 24, 1),
(6, 'Heba', 'Farouk', 'Mansoura', 25, NULL),
(7, 'Ali', 'Hussein', 'Cairo', 25, 6),
(8, 'Mohamed', 'Fars', 'Alex', 28, 6);

-- Insert Values In Department Table --

INSERT INTO Department(Dept_ID, Dept_Name, Dept_Desc, Dept_Location, Dept_Manager_ID, Manager_HireDate) 
VALUES(10, 'SD', 'System Development', 'Cairo', NULL, '2000-01-01'),
(20, 'EL', 'E-Learning', 'Mansoura', NULL, '2002-10-02'),
(30, 'Java', 'Java', 'Cairo', NULL, '2008-05-04'),
(40, 'MM', 'Multimedia', 'Alex', NULL, '2009-01-01'),
(50, 'Unix', 'Unix', 'Alex', NULL, NULL),
(60, 'NC', 'Network', 'Cairo', NULL, NULL),
(70, 'EB', 'E-Business', 'Alex', NULL, NULL);

-- Update The Student Table --

update Student
set Dept_ID=(10);

update Student
set Dept_ID=(20)
where St_FName='Heba';

update Student
set Dept_ID=(20)
where St_FName='Ali';

update Student
set Dept_ID=(20)
where St_FName='Mohamed';

-- Insert Values In Topics Table --

INSERT INTO Topics(Top_ID, Top_Name) 
VALUES(1, 'Programming'),
(2, 'DB'),
(3, 'Web'),
(4, 'Operating System'),
(5, 'Design');

-- Insert Values In Instructor Table --

INSERT INTO Instructor(Ins_ID, Ins_Name, Ins_Degree, Salary, Dept_ID) 
VALUES(1, 'Ahmed', 'Master', NULL, 10),
(2, 'Hany', 'Master', NULL, 10),
(3, 'Reham', 'Master', NULL, 10),
(4, 'Yasmin', 'PHD', NULL, 10),
(5, 'Amany', 'PHD', NULL, 10),
(6, 'Eman', 'Master', NULL, 10),
(7, 'Saly', NULL, NULL, 10),
(8, 'Amr', NULL, NULL, 30),
(9, 'Hussein', NULL, NULL, 50),
(10, 'Khalid', NULL, NULL, 30),
(11, 'Salah', NULL, NULL, 70);

-- Insert Values In Course Table --

INSERT INTO Course(Crs_ID, Crs_Name, Crs_Duration, Top_ID) 
VALUES(100, 'HTML', 20, 3),
(200, 'C Programming', 60, 1),
(300, 'OOP', 80, 1),
(400, 'Unix', 50, 4),
(500, 'SQL Server', 60, 2);

-- Insert Values In Stud_Course Table --

INSERT INTO Stud_Course(Crs_ID, St_ID, Grade) 
VALUES(100, 1, 100),
(100, 2, 90),
(100, 3, 80),
(100, 4, 70),
(100, 5, 100),
(100, 6, 90),
(200, 1, 90),
(200, 2, 90),
(200, 3, 80),
(200, 4, 80);

-- Insert Values In Ins_Course Table --

INSERT INTO Ins_Course(Ins_ID, Crs_ID, Evaluation) 
VALUES(1, 100, 'Good'),
(1, 200, 'Good'),
(1, 300, 'Good'),
(2, 400, 'VGood'),
(2, 500, 'Good'),
(3, 100, 'Distinct'),
(4, 200, 'Good'),
(4, 300, 'Good');

/* Values Should Be Inserted But Can't Because There Is NO Found Data In Course Table 
So FOREIGN KEY Constraint Can't Be Something Else Than The 
Table And The PRIMARY KEY Constraint Can't Make It Null So They Are Not In The Table */ 

INSERT INTO Ins_Course(Ins_ID, Crs_ID, Evaluation) 
VALUES
(3, 600,'VGood'),
(3, 700, 'Good');

-- End Of The Database Construction --

-- retrieving The Required Data From Database --

-- Retrieve Number Of Students Who Have a Value In Their Age --

select count(St_Age)
from Student;

-- Get All Instructors Names Without Repetition --

select distinct Ins_Name
from Instructor;

-- Display Student With The Following Format : Student ID , Student Full Name , Department Name --

select St_ID as 'Student ID', St_FName + ' ' + St_LName as 'Student Full Name', Dept_Name + ' : ' + Dept_Desc as 'Department Name'
from Student s join Department d
on s.Dept_ID=d.Dept_ID;

/* Display Instructor Name And Department Name 
Note: Display All The Instructors If They Are Attached To a Department Or Not */

select Ins_Name as 'Instructor Name', Dept_Name + ' : ' + Dept_Desc as 'Department Name'
from Instructor i left join Department d
on i.Dept_ID=d.Dept_ID;

/* Display Student Full Name And The Name Of The Course He Is Taking
Note: For Only Courses Which Have a Grade */

select St_FName + ' ' + St_LName as 'Student Full Name', Crs_Name as 'Course Name'
from Student s join Stud_Course sc
on s.St_ID=sc.St_ID
join Course c
on sc.Crs_ID=c.Crs_ID
where Grade is not null;

-- Display Number Of Courses For Each Topic Name --select Top_Name as 'Topic Name', count(c.Top_ID) as 'Number Of Courses'from Topics t left join Course con t.Top_ID=c.Top_IDgroup by Top_Name;-- Because All Salary Are Null Will Add Some Salary To Make The Orders Happen ---- Update Instructor Table --update Instructorset Salary=5000where Ins_Name='Ahmed' or Ins_Name='Hany' or Ins_Name='Reham'or Ins_Name='Eman';update Instructorset Salary=5500where Ins_Name='Yasmin';update Instructorset Salary=6000where Ins_Name='Amany';update Instructorset Salary=4500where Ins_Name='Hussein'or Ins_Name='Khalid';update Instructorset Salary=4000where Ins_Name='Salah';-- Display Max And Min Salary For Instructors --SELECT Ins_Name, Salary as 'Max Salary'
FROM Instructor
WHERE Salary = (SELECT MAX(Salary) FROM Instructor);SELECT Ins_Name, Salary as 'Min Salary'
FROM Instructor
WHERE Salary = (SELECT MIN(Salary) FROM Instructor);-- Display Instructors Who Have Salaries Less Than The Average Salary Of All Instructors --select Ins_Name as 'Instructor Name', Salaryfrom Instructorwhere Salary<(select avg(coalesce(Salary,0)) from Instructor)or salary is null;-- Display The Department Name That Contains The Instructor Who Receives The Minimum Salary --select Dept_Name + ' : ' + Dept_Desc as 'Department Name', Ins_Name as 'Instructor Name', Salaryfrom Department d join Instructor ion d.Dept_ID=i.Dept_IDwhere salary=(select min(salary) from Instructor);-- Select Max Two Salaries In Instructor Table --SELECT top 2 Salary, Ins_Name as 'Instructor Name'
FROM Instructor 
ORDER BY Salary desc;
-- Select Instructor Name And His Salary But If There Is No Salary Display NA Keyword Instead --SELECT Ins_Name,COALESCE(CAST(Salary AS VARCHAR), 'NA') AS SalaryDisplay
FROM Instructor;

-- Select Average Salary For Instructors --

select avg(coalesce(Salary,0)) as 'Average Salary'
from Instructor;

-- Select Student First Name And The Data Of His Supervisor --

select s.St_FName as 'Student First Name',v.*
from Student s join Student v
on v.St_ID=s.St_Super_ID;

-- Create Stored Procedure To Retrieve Number Of Students For Specific Department Name --

go
CREATE PROCEDURE
GetStudentCountByDepartment
    @DepartmentName NVARCHAR(50)
AS
BEGIN
    SELECT COUNT(*) AS StudentCount
    FROM Student s JOIN Department d
    ON s.Dept_ID = d.Dept_ID
    WHERE d.Dept_Name = @DepartmentName;
END;

-- To Make Sure It Works Use This Query --

exec 
GetStudentCountByDepartment
'SD';

-- Create View That Contains Student Name And His Courses That Take --

go
CREATE VIEW
StudentCourses
AS
SELECT s.St_FName + ' ' + s.St_LName AS StudentName, c.Crs_Name AS CourseName 
FROM Student s JOIN Stud_Course sc 
ON s.St_ID=sc.St_ID
join Course c
on sc.Crs_ID=c.Crs_ID;

-- To Make Sure It Works Use This Query --

select*
from StudentCourses;

-- End Of The retrieving Of The Required Data --

-- End Of The Project --
