USE Sample_Schema;

SELECT *
FROM student_information
WHERE GPA > 3.5 AND GPA < 4;

SELECT `Student ID`, `First Name`, `Last Name`, Department
FROM student_information
WHERE Department = 'Science' OR Department = 'Law';

SELECT *
FROM student_information
WHERE NOT Department = 'Science';

SELECT *
FROM student_information
WHERE GPA BETWEEN 3.5 AND 4;

SELECT *
FROM student_information
WHERE `First Name` LIKE 'J%';

SELECT *
FROM student_information
WHERE Department IN ('Science', 'Business', 'Arts');

SELECT *
FROM student_information
WHERE GPA > 3.5
LIMIT 10;

