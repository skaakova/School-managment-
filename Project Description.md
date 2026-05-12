


## Project Description
This project is a **School Management Database System**
It helps organize and manage school data such as **students, teachers, classes, subjects, parents, grades, and medical information** in one database.

The system solves the problem of storing school information in different documents or spreadsheets by providing a structured relational database with clear relationships and constraints.

---

## Problem Statement
Many schools still manage student information manually (Excel sheets, paper records, separate files).  
This causes problems such as:
- Data duplication
- Missing information
- Difficult reporting (grades, attendance, class lists)

### Schema Overview

The database consists of **11 tables** with proper relationships, constraints, and foreign keys:

| Table | Description |
|-------|-------------|
| `students` | Student personal info, linked to a class |
| `teachers` | Teacher info, linked to subjects |
| `classes` | Class groups, assigned to a teacher |
| `subjects` | Academic subjects |
| `grades` | Student grades per subject (0–100) |
| `attendance` | Daily attendance records |
| `courses` | Course catalog |
| `coursesubjects` | Many-to-many: courses ↔ subjects |
| `enrollments` | Student course enrollments |
| `parents` | Parent/guardian info linked to students |
| `medicalinfo` | Student medical records |
| `users` | System users (admin/teacher roles) |

### Key Relationships

- A **Class** belongs to one **Teacher**
- A **Student** belongs to one **Class**
- **Grades** link Students and Subjects
- **Attendance** tracks Students by date
- **CourseSubjects** is a junction table (many-to-many)

### Constraints

- `grade CHECK (grade BETWEEN 0 AND 100)`
- `age CHECK (age > 5)`
- `status CHECK (status IN ('present', 'absent', 'late'))`
- All foreign keys enforce referential integrity
- `UNIQUE` on subject names and usernames


## 🔍 Sample Queries

### 1. List all students with their class
```sql
SELECT s.full_name, s.email, c.class_name
FROM students s
LEFT JOIN classes c ON c.id = s.class_id
ORDER BY s.full_name;
```

### 2. Average grade per subject
```sql
SELECT sub.name AS subject,
       ROUND(AVG(g.grade)::numeric, 1) AS avg_grade,
       COUNT(g.id) AS total_grades
FROM grades g
JOIN subjects sub ON sub.id = g.subject_id
GROUP BY sub.name
ORDER BY avg_grade DESC;
```

### 3. Top students by GPA
```sql
SELECT s.full_name,
       ROUND(AVG(g.grade)::numeric, 1) AS gpa
FROM students s
JOIN grades g ON g.student_id = s.id
GROUP BY s.full_name
ORDER BY gpa DESC;
```

### 4. Attendance summary per student
```sql
SELECT s.full_name,
       COUNT(*) FILTER (WHERE a.status = 'present') AS present,
       COUNT(*) FILTER (WHERE a.status = 'absent')  AS absent,
       COUNT(*) FILTER (WHERE a.status = 'late')    AS late
FROM students s
JOIN attendance a ON a.student_id = s.id
GROUP BY s.full_name;
```

### 5. Students per class
```sql
SELECT c.class_name, COUNT(s.id) AS student_count
FROM classes c
LEFT JOIN students s ON s.class_id = c.id
GROUP BY c.class_name
ORDER BY student_count DESC;
```

### 6. Teachers and their classes
```sql
SELECT t.full_name AS teacher, c.class_name
FROM teachers t
JOIN classes c ON c.teacher_id = t.id
ORDER BY t.full_name;
```


### API Documentation (Swagger UI)
> Available at `http://localhost:8000/docs` after running the server

### Web Dashboard
> Open `school_dashboard.html` in browser after starting the API

---

## 🎥 Demo Video

> 📹 [Watch Demo on YouTube](https://youtu.be/5uFKuZ48U2Q?si=bTShzM7XdqzAPu2m)

## 🎥 Feedback 

> 📹 [Watch Feedback on YouTube](https://youtube.com/shorts/MKBV5utlDvg?si=oi-sQasKCU6aPZPt) 

---
