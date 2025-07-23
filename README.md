# College-Database-Project-SQL-Server-DEPI_DB-
This project was developed as part of the Digital Egypt Pioneers Initiative (DEPI) under the Google Data Analytics Track. It demonstrates the design and implementation of a fully relational college database using SQL Server, covering essential concepts like data modeling, query writing, procedures, and views.

📚 Project Overview
The aim of this project is to simulate a real-world college system, modeling entities such as students, instructors, departments, courses, and topics. The project applies database normalization principles and showcases strong SQL query capabilities.

🏗️ Database Name
DEPI_DB

🧱 Database Structure
📌 Tables Created:
Student

Instructor

Department

Course

Topics

Stud_Course (student-course relationship)

Ins_Course (instructor-course assignment)

Each table includes proper primary and foreign key constraints to ensure data integrity.

📥 Data Inserted
Includes realistic entries for:

Students and their supervisors

Departments and managers

Courses linked to topics

Instructor details with degrees and salaries

Student enrollments and grades

Instructor course assignments

📊 SQL Queries
The project includes a rich set of SQL queries such as:

Counting students with age values

Distinct instructor names

Student and department joins

Left joins for instructors and departments

Student-course relationships (with grades)

Aggregated course counts by topic

Instructor salary stats (max, min, avg)

Salaries below average

Department of instructor with min salary

Top 2 instructor salaries

Use of COALESCE to show 'NA' for missing salaries

Supervisor relationships for students

⚙️ Additional Components
🛠️ Stored Procedure
GetStudentCountByDepartment
Returns the number of students in a specific department.

🔍 View
StudentCourses
Displays student full names with the courses they are enrolled in.

📝 How to Use
Open SQL Server Management Studio (SSMS).

Execute the Database Project.sql script.

It will:

Create the database

Build all tables

Populate data

Run queries

Define a stored procedure and a view

📄 Files Included
Database Project.sql – Complete SQL script

DB_project.pdf – Official project requirements

README.md – Project documentation

✅ Requirements Coverage
All requirements listed in the official project PDF are fully implemented, including:

Table creation with constraints

Data population

Complex SQL queries

Stored procedure

View

👤 Author
Name: Sara Samy

Track: Google Data Analytics

Initiative: Digital Egypt Pioneers (DEPI)
