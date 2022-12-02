CREATE TABLE professors(
	ssn INT NOT NULL,
    pname VARCHAR(255),
    street_address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip_code INT,
    area_code INT,
    phone_num INT,
    sex VARCHAR(255),
    title VARCHAR(255),
    salary INT,
    college_degrees VARCHAR(255),
    PRIMARY KEY(ssn)
);

CREATE TABLE departments(
	department_num INT NOT NULL,
    dname VARCHAR(255),
    phone_num INT,
    location VARCHAR(255),
    chair_person INT,
    FOREIGN KEY(VARCHAR_person) REFERENCES professors(ssn),
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

# WEAK Entity of courses hence no primary key
CREATE TABLE sections(
    section_num INT NOT NULL,
    classroom VARCHAR(255),
    seats_num INT,
    meeting_days VARCHAR(255),
    begin_time VARCHAR(255),
    end_time VARCHAR(255),
    course INT,
    p_ssn INT,
	
	Foreign Key (p_ssn) REFERENCES professors(p_ssn),
	Foreign Key (course) REFERENCES courses(course)
);

CREATE TABLE students(
	cwid INT NOT NULL,
    s_fname VARCHAR(255),
    s_lname VARCHAR(255),
    address VARCHAR(255),
    phone_num INT,
    major INT,
    minors VARCHAR(255),
    
    PRIMARY KEY(cwid)
);