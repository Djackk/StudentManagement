
-- Table Script goes here.

 create database student_db;
 use student_db;
 
 create table IF NOT EXISTS Student_data(
ID int(10) AUTO_INCREMENT,
NAME varchar(20),
Age int(10),
Gender varchar(20),
PRIMARY KEY(ID)
 );
 
 insert into Student_data values
  (1,'Jack',20,'Male')


 commit;