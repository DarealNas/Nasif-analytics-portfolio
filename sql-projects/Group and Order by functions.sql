USE Sample_Schema

SELECT * FROM student_information;

SELECT * 
FROM student_information 
ORDER BY GPA DESC;

SELECT COUNT(`Student ID`), AVG(GPA), Gender 
FROM student_information 
GROUP BY Gender;

SELECT COUNT(`Student ID`) AS TotalStudents, ROUND(AVG(GPA), 2) AS AverageGPA, Gender 
FROM student_information 
GROUP BY Gender 
ORDER BY AVG(GPA) DESC;