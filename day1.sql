--SQL Statements:-

1.DDL(Data definition language)
2.DML(Data manipulation language)
3.DCL(Data control language)
4.TCL(Transaction control language)
5.DQL(Data query language)

--SQL Commands:
--1)create(DDL):
--query:
create table students(name varchar(20),regd_no varchar(9),year_of_study int);
output:
--students table is created

--2)insert(DML):
--query:
insert into students(name,regd_no,year_of_study)values("Bhargavi","y22cds021",2);
insert into students(name,regd_no,year_of_study)values("Samatha","y22cds012",2);
insert into students(name,regd_no,year_of_study)values("pavani","y22cds008",2);
insert into students(name,regd_no,year_of_study)values("Sravanthi","y22cds033",2);
--ouput:
--The corresponding values are inserted into tables

--3)update(DML):
--query:
update students set year_of_study=3
where name="Samatha";
--output:
--The year_of_study of samatha named person will be updated as 3

--4)alter(DDL):
--query:
alter table students rename to student_details;
--output:
--the table is renamed to student_details

--5)delete(DML):
--query:
delete from Student_details 
where regd_no="y22cds021";
--output:
--the record of the student whose regd_no is "y22cds021" will be deleted

--6)select(DQL):
--query:
select * from Student_details
where year_of_study=2;
--output:
--all the records of students whose year_od_study =2 will be filtered 

--7)drop(DDL):
--query:
drop table Student_details;
--output:
--deletes the data and table structure



