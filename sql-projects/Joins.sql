SELECT * FROM enrollments_data;

SELECT * FROM student_information;

SELECT *
FROM student_information
INNER JOIN enrollments_data ON student_information.`Student ID` = enrollments_data.`Student ID`;

SELECT *
FROM student_information
LEFT JOIN enrollments_data ON student_information.`Student ID` = enrollments_data.`Student ID`;

SELECT *
FROM student_information
RIGHT JOIN enrollments_data ON student_information.`Student ID` = enrollments_data.`Student ID`;

SELECT *
FROM student_information
CROSS JOIN enrollments_data ON student_information.`Student ID` = enrollments_data.`Student ID`;

