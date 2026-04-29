
-- Subjects
INSERT INTO subjects (name) VALUES
('Mathematics'),
('English'),
('Physics'),
('History'),
('Computer Science');

-- Teachers
INSERT INTO teachers (full_name, email, phone) VALUES
('Gulkair Skaakova', 'gulkair@school.kg', '+996700000001'),
('Aida Bekova', 'aida@school.kg', '+996700000002'),
('Marat Asanov', 'marat@school.kg', '+996700000003');

-- Classes
INSERT INTO classes (class_name, teacher_id) VALUES
('10A', 1),
('10B', 2),
('11A', 3);

-- Students
INSERT INTO students (full_name, birth_date, email, phone, home_address, class_id, work_book_number) VALUES
('Ali Mambetaliev', '2008-03-15', 'ali@student.kg', '+996770001001', 'Bishkek, Frunze St', 1, 'WB001'),
('Amina Junusova', '2009-07-22', 'amina@student.kg', '+996770002002', 'Bishkek, Panfilov St', 2, 'WB002'),
('Belek Toktosunov', '2008-11-10', 'belek@student.kg', '+996770003003', 'Bishkek, Tokombaev St', 1, 'WB003'),
('Aizat Kasymova', '2007-05-18', 'aizat@student.kg', '+996770004004', 'Bishkek, Moskov St', 3, 'WB004');

-- Grades
INSERT INTO grades (student_id, subject_id, grade) VALUES
(1, 1, 90),
(1, 2, 85),
(2, 2, 92),
(2, 3, 78),
(3, 1, 88),
(4, 4, 95),
(4, 5, 87);

-- Attendance
INSERT INTO attendance (student_id, date, status) VALUES
(1, '2026-03-01', 'present'),
(2, '2026-03-01', 'absent'),
(3, '2026-03-01', 'present'),
(4, '2026-03-01', 'late'),
(1, '2026-03-02', 'present'),
(2, '2026-03-02', 'present');

-- Courses
INSERT INTO courses (course_name) VALUES
('Advanced Mathematics'),
('English Literature'),
('Computer Science Basics');

-- CourseSubjects
INSERT INTO coursesubjects (course_id, subject_id) VALUES
(1, 1),
(2, 2),
(3, 5);

-- Parents
INSERT INTO parents (full_name, phone, student_id) VALUES
('Mambetaliev Askar', '+996700111001', 1),
('Junusova Ainur', '+996700111002', 2);

-- Medical Info
INSERT INTO medicalinfo (student_id, blood_type, allergies) VALUES
(1, 'A+', 'None'),
(2, 'B+', 'Penicillin'),
(3, 'O+', 'None');
