-- Creating The School DataBase
CREATE DATABASE IF NOT EXISTS School;
-- Using The School DataBase To Get Some BONUS Ponits
USE School;
-- Creating A Students Table With Id As A Primary Key, Student Name, And Department
CREATE TABLE IF NOT EXISTS students (
    ID INT PRIMARY KEY,
    student_name VARBINARY(255) NOT NULL,
    department VARBINARY(255)
);
-- Adding GPA Column To The Students Table And Control It [Three Numbers Before Dot And Two After It]
ALTER TABLE students
ADD GPA DECIMAL(3,2);
-- Setting The Default Value For The GPA Column As 2.00
ALTER TABLE students
ALTER GPA SET DEFAULT 2.00;
-- Droping (Deleting) The GPA Column From The Students Table
ALTER TABLE students
DROP GPA;
-- Droping (Deleting) The Students Table Form The DataBase
DROP TABLE IF EXISTS students;