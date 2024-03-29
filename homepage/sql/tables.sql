# The default database is named: cs332g20

CREATE TABLE professors(
	ssn INT NOT NULL,
    pname VARCHAR(255),
    street_address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip_code INT,
    area_code INT,
    phone_num VARCHAR(255),
    sex VARCHAR(255),
    title VARCHAR(255),
    salary INT,
    college_degrees VARCHAR(255),
    PRIMARY KEY(ssn)
);

CREATE TABLE departments(
	department_num INT NOT NULL,
    dname VARCHAR(255),
    phone_num VARCHAR(255),
    location VARCHAR(255),
    chair_person INT,
    FOREIGN KEY(chair_person) REFERENCES professors(ssn),
    PRIMARY KEY(department_num)
);

CREATE TABLE courses(
	course_num INT NOT NULL,
    title VARCHAR(255),
    textbook VARCHAR(255),
    units INT,
    department_offered INT,
    FOREIGN KEY(department_offered) REFERENCES departments(department_num),
    PRIMARY KEY(course_num)
);

CREATE TABLE sections(
    section_num INT NOT NULL,
    classroom VARCHAR(255),
    seats_num INT,
    meeting_days VARCHAR(255),
    begin_time VARCHAR(255),
    end_time VARCHAR(255),
    course INT,
    p_ssn INT,
	
    PRIMARY KEY(section_num),
	FOREIGN KEY (p_ssn) REFERENCES professors(ssn),
	FOREIGN KEY (course) REFERENCES courses(course_num)
);

CREATE TABLE students(
	cwid INT NOT NULL,
    s_fname VARCHAR(255),
    s_lname VARCHAR(255),
    address VARCHAR(255),
    phone_num VARCHAR(255),
    major VARCHAR(255),
    minors VARCHAR(255),
    
    PRIMARY KEY(cwid)
);

CREATE TABLE enrollments(
	student_id INT NOT NULL,
    course_section INT NOT NULL,
    grade VARCHAR(255),
    
    FOREIGN KEY(student_id) REFERENCES students(cwid),
    FOREIGN KEY(course_section) REFERENCES sections(section_num)
);