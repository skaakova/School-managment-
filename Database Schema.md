# Database Schema 
## Tables:

Students

id (Primary Key)
name
age
class_id (Foreign Key)

## Teachers

id (Primary Key)
name
subject

## Classes

id (Primary Key)
name
teacher_id (Foreign Key)

## Subjects

id (Primary Key)
name

## Grades

id (Primary Key)
student_id (Foreign Key)
subject_id (Foreign Key)
grade

Attendance

id (Primary Key)
student_id (Foreign Key)
date
status
