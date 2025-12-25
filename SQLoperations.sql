DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Marks;

CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name TEXT,
    Age INTEGER,
    Marks INTEGER,
    City TEXT
);

INSERT INTO Students (StudentID, Name, Age, Marks, City) VALUES
(1, 'Aman', 12, 85, 'Delhi'),
(2, 'Riya', 11, 92, 'Mumbai'),
(3, 'Karan', 12, 76, 'Delhi'),
(4, 'Sneha', 11, 88, 'Pune'),
(5, 'Arjun', 12, 95, 'Mumbai');

CREATE TABLE Marks (
    StudentID INTEGER,
    Subject TEXT,
    Score INTEGER
);

INSERT INTO Marks (StudentID, Subject, Score) VALUES
(1, 'Maths', 85),
(2, 'Maths', 92),
(3, 'Maths', 76),
(4, 'Maths', 88),
(5, 'Maths', 95);

SELECT Students.Name, Marks.Subject, Marks.Score
FROM Students
JOIN Marks ON Students.StudentID = Marks.StudentID;
