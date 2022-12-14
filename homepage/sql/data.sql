# INSERT some data that inclues at least 8 students, 2 departments, 3 professors, 4 courses, 6 sections, and 20 enrollments.
-- Path: homepage\sql\data.sql

INSERT INTO professors(ssn, pname, street_address, city, state, zip_code, area_code, phone_num, sex, title, salary, college_degrees) VALUES
(123456789, 'John Smith', '1234 Main St', 'Fullerton', 'California', 12345, 123, 4567890, 'M', 'Professor', 100000, 'PhD'),
(234567890, 'Jane Doe', '2345 Main St', 'Westminster', 'California', 23456, 234, 5678901, 'F', 'Professor', 120000, 'PhD'),
(345678901, 'John Doe', '3456 Main St', 'Santa Ana', 'California', 34567, 345, 6789012, 'M', 'Professor', 210000, 'PhD');

INSERT INTO departments(department_num, dname, phone_num, location, chair_person) VALUES
(1, 'Computer Science', '1234567890', '1234 Main St', 123456789),
(2, 'Mathematics', '2345678901', '2345 Main St', 234567890);

INSERT INTO courses(course_num, title, textbook, units, department_offered) VALUES
(1, 'Intro to Computer Science', 'Intro to Computer Science', 4, 1),
(2, 'Advanced Computer Science', 'Advanced Computer Science', 4, 1),
(3, 'Intro to Mathematics', 'Intro to Mathematics', 4, 2),
(4, 'Advanced Mathematics', 'Advanced Mathematics', 4, 2);

INSERT INTO sections(section_num, classroom, seats_num, meeting_days, begin_time, end_time, course, p_ssn) VALUES
(1, '1234 Main St', 35, 'MWF', '9:00', '10:00', 1, 123456789),
(2, '2345 Main St', 42, 'MWF', '10:00', '11:00', 1, 123456789),
(3, '3456 Main St', 36, 'MWF', '11:00', '12:00', 1, 123456789),
(4, '4567 Main St', 22, 'MWF', '12:00', '1:00', 2, 234567890),
(5, '5678 Main St', 34, 'MWF', '1:00', '2:00', 2, 234567890),
(6, '6789 Main St', 37, 'MWF', '2:00', '3:00', 2, 234567890);

INSERT INTO students(cwid, s_fname, s_lname, address, phone_num, major, minors) VALUES
(1, 'John', 'Smith', '1234 Main St', '1234567890','Mathematics', 'Computer Science'),
(2, 'Jane', 'Doe', '2345 Main St', '2345678901', 'Computer Science'),
(3, 'John', 'Doe', '3456 Main St', '3456789012', 'Mathematics'),
(4, 'Jane', 'Smith', '4567 Main St', '4567890123', 'Computer Science', 'Physics'),
(5, 'John', 'Doe', '5678 Main St', '5678901234', 'Mathematics'),
(6, 'Jane', 'Doe', '6789 Main St', '6789012345', 'Computer Science', 'Electrical Engineering, Biology'),
(7, 'John', 'Smith', '7890 Main St', '7890123456', 'Mathematics'),
(8, 'Jane', 'Doe', '8901 Main St', '8901234567', 'Computer Science', 'Electrical Engineering');

INSERT INTO enrollments(student_id, course_section, grade) VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(1, 3, 'C'),
(2, 1, 'D'),
(2, 2, 'F'),
(2, 3, 'A'),
(3, 1, 'B'),
(3, 2, 'C'),
(3, 3, 'D'),
(4, 1, 'F'),
(4, 2, 'A'),
(4, 3, 'B'),
(5, 1, 'C'),
(5, 2, 'D'),
(5, 3, 'F'),
(6, 1, 'A'),
(6, 2, 'B'),
(6, 3, 'C'),
(7, 1, 'D'),
(7, 2, 'F'),
(7, 3, 'A'),
(8, 1, 'B'),
(8, 2, 'C'),
(8, 3, 'F');