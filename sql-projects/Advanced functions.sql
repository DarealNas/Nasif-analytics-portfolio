SELECT * FROM student_information;

SELECT AVG(GPA), Department
FROM student_information
WHERE Gender = "Female"
GROUP BY Department
HAVING AVG(GPA) > 2;

SELECT *
FROM student_information
WHERE EXISTS (SELECT * FROM enrollments_data WHERE student_information.`Student ID` = enrollments_data.`Student ID` AND Grade = "A");

SELECT *
FROM student_information
WHERE `Student ID` = ANY(SELECT `Student ID` FROM enrollments_data WHERE Grade = "A");


SELECT *,
CASE
 WHEN GPA > 3 THEN 'PASSED'
 WHEN GPA BETWEEN 2.5 AND 3 THEN 'HOLD'
 ELSE 'FAILED'
END AS Outcome
FROM student_information;














