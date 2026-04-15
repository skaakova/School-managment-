CREATE TABLE "students" (
  "id" integer PRIMARY KEY,
  "full_name" varchar(150),
  "birth_date" date,
  "email" varchar(150),
  "phone" varchar(30),
  "home_address" text,
  "work_book_number" varchar(20),
  "class_id" integer
);

CREATE TABLE "classes" (
  "id" integer PRIMARY KEY,
  "class_name" varchar(50),
  "teacher_id" integer
);

CREATE TABLE "teachers" (
  "id" integer PRIMARY KEY,
  "fullName" varchar(150),
  "email" varchar(150),
  "phone" varchar(30),
  "home_address" text,
  "salary" numeric(10,2),
  "office_number" varchar(20),
  "work_experience" integer
);

CREATE TABLE "parents" (
  "id" integer PRIMARY KEY,
  "student_id" integer,
  "full_name" varchar(150),
  "government_id" varchar(50),
  "phone" varchar(30),
  "home_address" text
);

CREATE TABLE "medicalinfo" (
  "id" integer PRIMARY KEY,
  "student_id" integer,
  "medical_notes" text,
  "allergies" text,
  "disability_status" boolean
);

CREATE TABLE "grades" (
  "id" integer PRIMARY KEY,
  "student_id" integer,
  "subject_id" integer,
  "teacher_id" integer,
  "grade" integer,
  "grade_date" date
);

CREATE TABLE "subjects" (
  "id" integer PRIMARY KEY,
  "subject_name" varchar(150),
  "description" text
);

CREATE TABLE "courses" (
  "id" integer PRIMARY KEY,
  "course_name" varchar(150)
);

CREATE TABLE "coursesubjects" (
  "id" integer PRIMARY KEY,
  "course_id" integer,
  "subject_id" integer
);

ALTER TABLE "students" ADD FOREIGN KEY ("class_id") REFERENCES "classes" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "classes" ADD FOREIGN KEY ("teacher_id") REFERENCES "teachers" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "parents" ADD FOREIGN KEY ("student_id") REFERENCES "students" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "medicalinfo" ADD FOREIGN KEY ("student_id") REFERENCES "students" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "grades" ADD FOREIGN KEY ("student_id") REFERENCES "students" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "grades" ADD FOREIGN KEY ("subject_id") REFERENCES "subjects" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "coursesubjects" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "coursesubjects" ADD FOREIGN KEY ("subject_id") REFERENCES "subjects" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "grades" ADD FOREIGN KEY ("teacher_id") REFERENCES "teachers" ("id") DEFERRABLE INITIALLY IMMEDIATE;
