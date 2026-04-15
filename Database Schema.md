# Database Schema 
### Schema Overview
The database includes the following main entities:

- **students**
- **teachers**
- **classes**
- **subjects**
- **grades**
- **parents**
- **medicalinfo**
- **courses**
- **coursesubjects**

## Tables:

### 1. Students
Stores student personal information.

**Main columns:**
- `id` (PK)
- `name`
- `age`
- `class_id` (FK → classes.id)

---

### 2. Teachers
Stores teacher information.

**Main columns:**
- `id` (PK)
- `name`

---

### 3. Classes
Stores school class groups.

**Main columns:**
- `id` (PK)
- `class_name`
- `teacher_id` (FK → teachers.id)

---

### 4. Parents
Stores parents linked to students.

**Main columns:**
- `id` (PK)
- `name`
- `student_id` (FK → students.id)

---

### 5. MedicalInfo
Stores medical information for students.

**Main columns:**
- `id` (PK)
- `student_id` (FK → students.id)
- `blood_type`
- `allergies`

---

### 6. Subjects
Stores school subjects.

**Main columns:**
- `id` (PK)
- `subject_name`

---

### 7. Grades
Stores grades of students for different subjects.

**Main columns:**
- `id` (PK)
- `student_id` (FK → students.id)
- `subject_id` (FK → subjects.id)
- `grade`

---

### 8. Courses
Stores courses (optional, for grouping subjects).

**Main columns:**
- `id` (PK)
- `course_name`

---

### 9. CourseSubjects
Many-to-many table connecting courses and subjects.

**Main columns:**
- `id` (PK)
- `course_id` (FK → courses.id)
- `subject_id` (FK → subjects.id)


id (Primary Key)
student_id (Foreign Key)
date
status
##  Relationships

- **students.class_id → classes.id**
- **classes.teacher_id → teachers.id**
- **parents.student_id → students.id**
- **medicalinfo.student_id → students.id**
- **grades.student_id → students.id**
- **grades.subject_id → subjects.id**
- **coursesubjects.course_id → courses.id**
- **coursesubjects.subject_id → subjects.id**
