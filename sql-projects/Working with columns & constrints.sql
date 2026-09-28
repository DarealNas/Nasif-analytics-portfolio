USE Sample_Schema;

SELECT * FROM courses_data;

ALTER TABLE courses_data
ADD Course_Code integer;

ALTER TABLE courses_data
MODIFY COLUMN Course_Code varchar(255);

ALTER TABLE courses_data
RENAME COLUMN `Course ID` TO Course_ID,
RENAME COLUMN `Course Name` TO Course_Name,
RENAME COLUMN `Course Level` TO Course_Level;

ALTER TABLE courses_data
DROP COLUMN Course_Code;

SELECT * FROM enrollments_data;

DESC enrollments_data;

ALTER TABLE enrollments_data
ADD CONSTRAINT `Enrollment ID` PRIMARY KEY (`Enrollment ID`);

ALTER TABLE enrollments_data
ADD CONSTRAINT `Course ID` FOREIGN KEY (`Course ID`) REFERENCES courses_data (Course_ID);

ALTER TABLE enrollments_data
DROP PRIMARY KEY;



