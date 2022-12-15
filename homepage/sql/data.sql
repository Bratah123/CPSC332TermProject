# INSERT some data that inclues at least 8 students, 2 departments, 3 professors, 4 courses, 6 sections, and 20 enrollments.
-- Path: homepage\sql\data.sql

INSERT INTO professors(ssn, pname, street_address, city, state, zip_code, area_code, phone_num, sex, title, salary, college_degrees) VALUES
(123456789, 'John Smith', '1234 Main St', 'Fullerton', 'California', 12345, 123, '4567890', 'M', 'Professor', 100000, 'PhD'),
(234567890, 'Jane Doe', '2345 Main St', 'Westminster', 'California', 23456, 234, '5678901', 'F', 'Professor', 120000, 'PhD'),
(345678901, 'John Doe', '3456 Main St', 'Santa Ana', 'California', 34567, 345, '6789012', 'M', 'Professor', 210000, 'PhD');

INSERT INTO departments(department_num, dname, phone_num, location, chair_person) VALUES
(1, 'Computer Science', '1234567890', '1234 Main St', 123456789),
(2, 'Mathematics', '2345678901', '2345 Main St', 234567890);

INSERT INTO courses(course_num, title, textbook, units, department_offered) VALUES
(1, 'Intro to Computer Science', 'Intro to Computer Science', 4, 1),
(2, 'Advanced Computer Science', 'Advanced Computer Science', 4, 1),
(3, 'Intro to Mathematics', 'Intro to Mathematics', 4, 2),
(4, 'Advanced Mathematics', 'Advanced Mathematics', 4, 2);

INSERT INTO sections(section_num, classroom, seats_num, meeting_days, begin_time, end_time, course, p_ssn) VALUES
(1, '167B', 35, 'MWF', '9:00am', '10:00am', 1, 123456789),
(2, '367A', 42, 'MW', '10:00am', '11:00am', 1, 123456789),
(3, '376C', 36, 'TTh', '11:00am', '12:00pm', 2, 234567890),
(4, '326A', 22, 'Fri', '12:00pm', '1:00pm', 2, 234567890),
(5, '124D', 34, 'Sat', '1:00pm', '2:00pm', 3, 345678901),
(6, '531F', 37, 'MWF', '2:00pm', '3:00pm', 4, 345678901);

INSERT INTO students(cwid, s_fname, s_lname, address, phone_num, major, minors) VALUES
(1, 'John', 'Smith', '1234 Main St', '1234567890','Mathematics', 'Computer Science'),
(2, 'Jane', 'Doe', '2345 Main St', '2345678901', 'Computer Science', ''),
(3, 'John', 'Doe', '3456 Main St', '3456789012', 'Mathematics', ''),
(4, 'Jane', 'Smith', '4567 Main St', '4567890123', 'Computer Science', 'Physics'),
(5, 'John', 'Doe', '5678 Main St', '5678901234', 'Mathematics', ''),
(6, 'Jane', 'Doe', '6789 Main St', '6789012345', 'Computer Science', 'Electrical Engineering, Biology'),
(7, 'John', 'Smith', '7890 Main St', '7890123456', 'Mathematics', ''),
(8, 'Jane', 'Doe', '8901 Main St', '8901234567', 'Computer Science', 'Electrical Engineering');

INSERT INTO enrollments(student_id, course_section, grade) VALUES
(1, 3, 'A+'),
(1, 6, 'B-'),
(1, 5, 'C'),
(2, 1, 'D-'),
(2, 3, 'F'),
(2, 5, 'A'),
(3, 2, 'B'),
(3, 5, 'C+'),
(3, 6, 'D+'),
(4, 4, 'F'),
(4, 3, 'A'),
(4, 1, 'B-'),
(5, 5, 'C'),
(5, 3, 'D-'),
(5, 6, 'F'),
(6, 2, 'A'),
(6, 3, 'B+'),
(6, 5, 'C'),
(7, 6, 'D-'),
(7, 3, 'F'),
(7, 2, 'A+'),
(8, 4, 'B'),
(8, 5, 'C-'),
(8, 6, 'F');