create database RainbowSchoolDb
on primary (name='RainbowSchool_Db', Filename='D:\mphasis Simplilearn\Phase2\Projects\RainbowSchool_Db.mdf')
log on (name='RainbowSchool_Db_log',filename='D:\mphasis Simplilearn\Phase2\Projects\RainbowSchool_Db_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS

use RainbowSchoolDb

--Create Subjects table
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(50) NOT NULL
);

-- Create Classes table
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(50) NOT NULL
);

-- Create Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    ClassID INT FOREIGN KEY REFERENCES Classes(ClassID),
    SubjectID INT FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID),
);

select * from Student
select * from Classes
select * from Subjects