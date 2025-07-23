# College-Database-Project-SQL-Server-DEPI_DB-
This project was developed as part of the Digital Egypt Pioneers Initiative (DEPI) under the Google Data Analytics Track. It demonstrates the design and implementation of a fully relational college database using SQL Server, covering essential concepts like data modeling, query writing, procedures, and views.

---

## 📁 Project Structure

- **Database**: `DEPI_DB`
- **Language**: SQL (SQL Server)
- **Focus**: Relational database design, data manipulation, queries, procedures

---

## 🧱 Tables

- `Student`
- `Instructor`
- `Department`
- `Course`
- `Topics`
- `Stud_Course`
- `Ins_Course`

Each table includes primary keys, foreign keys, and appropriate constraints to maintain data integrity.

---

## 📥 Sample Data Inserted

- Students with departments and supervisors
- Instructors with salaries and assigned departments
- Courses linked to topics
- Student-course grades
- Instructor-course assignments

---

## 📊 Included SQL Queries

- Count of students with known ages
- Distinct instructor names
- Students with department names
- Instructors with or without department
- Students and courses (where grades exist)
- Number of courses per topic
- Instructor salary analysis (min, max, avg)
- Instructors with salaries below average
- Department of the instructor with the lowest salary
- Top 2 highest salaries
- Using `COALESCE` to handle null salary values
- Supervisor information for students

---

## ⚙️ Additional Features

### 🛠 Stored Procedure
```sql
EXEC GetStudentCountByDepartment 'IT';
Returns the number of students in a given department.

🔍 View
StudentCourses
Shows full student names and their enrolled courses.

▶️ How to Use
Open SQL Server Management Studio (SSMS)

Run the Database Project.sql script in order

Explore queries, view, and procedure

📂 Files
Database Project.sql – Complete SQL script

DB_project.pdf – Project instructions and requirements

README.md – Project documentation

✅ Requirement Coverage
This project fully implements all requirements outlined in the official instructions, including:

Database creation

Table setup with constraints

Data insertion

Complex queries

Stored procedure

View

👤 Author
Sara Samy
Google Data Analytics Track – Digital Egypt Pioneers Initiative
Initiative: Digital Egypt Pioneers (DEPI)
