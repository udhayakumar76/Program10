CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
    Credits INT NOT NULL
);

INSERT INTO Course (CourseID, CourseName, Credits) VALUES
(201, 'Database Systems', 4),
(202, 'Data Structures', 3),
(203, 'Mathematics', 4);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID) VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201);

-- LEFT JOIN
SELECT Course.CourseID,
       Course.CourseName,
       Enrollment.EnrollmentID,
       Enrollment.StudentID
FROM Course
LEFT JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID;

-- RIGHT JOIN
SELECT Course.CourseID,
       Course.CourseName,
       Enrollment.EnrollmentID,
       Enrollment.StudentID
FROM Course
RIGHT JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID;
