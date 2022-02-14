-- SCHEMA POUR LA QUESTION 1

CREATE TABLE professor (
    ssn int,
    PRIMARY KEY (ssn)
);

CREATE TABLE course (
    courseid int,
    PRIMARY KEY (courseid)
);

CREATE TABLE teaches (
    semesterid int,
    ssn int NOT NULL,
    courseid int NOT NULL,
    PRIMARY KEY (ssn, courseid),
    FOREIGN KEY (ssn) REFERENCES professor,
    FOREIGN KEY (courseid) REFERENCES course
);
