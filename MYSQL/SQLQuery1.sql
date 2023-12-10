use EMPLOYEE
ALTER TABLE employee_info
ADD StartingDate date NOT NULL Default getdate(),
	DateofBirth date NULL

ALTER TABLE EMPLOYEE
ADD StartingDate date NOT NULL Default getdate(),
	DateofBirth date NULL

select * from EMPLOYEE
alter table EMPLOYEE
	drop column salary;






