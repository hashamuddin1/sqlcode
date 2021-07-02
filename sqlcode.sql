/*CREATE DATABASE*/
create database hani;

/*USE DATABASE*/
use hani;

/*CREATE TABLE*/
create table student(
f_name varchar(15),
l_name varchar(15),
cnic_no int,
dob date,
study_time time,
primary key(cnic_no)
);

/*INSERT IN TABLE*/
insert into student values ("mohammad","hani",5569,"1999-02-09","20:00:00");
insert into student values ("mohammad","hasham",5570,"2000-09-07","10:00:00");
insert into student values ("ali","moiz",556,"1998-02-09","20:00:00");
insert into student values ("ahmed","noor",557,"2001-09-07","10:00:00");
insert into student values ("azfar","hani",569,"1999-05-09","20:00:00");
insert into student values ("azfar","hasham",570,"2001-09-07","10:00:00");


/*delete table*/
drop table student;

/*VIEW ALL COLUMN*/
select * from student;

/*DELETE ALL RECORD*/
truncate table student;

/*VIEW PARTICULAR COLUMN*/
select f_name from student;
select f_name,l_name,dob from student;

/*UPDATION IN TABLE*/
update student set f_name="syed" where cnic_no=5569;

/*STARTING ROWS*/
select * from student limit 3;

/*ASCENDING ACCORDING TO ANY COLUMN*/
select * from student order by f_name;
select * from student order by dob;

/*DESCENDING ACCORDING TO ANY COLUMN*/
select * from student order by f_name desc;
select * from student order by dob desc;

/*NO REPETATION VALUES IN ANY COLUMN*/
select distinct l_name from student;
select distinct f_name from student;

/*AGGREGIATE FUNCTIONS*/
/*SUM*/
select sum(cnic_no) from student;

/*COUNT*/
select count(*) from student;

/*AVERAGE*/
select avg(cnic_no) from student;

/*MAXIMUM*/
select max(cnic_no) from student;

/*MINIMUM*/
select min(cnic_no) from student;

/*LENGTH*/
select length(cnic_no) from student;
select length(f_name) from student;

/*ALIYAS*/
select count(*) as total_number_of_rows from student;
select sum(cnic_no) as total_salary from student;

/*DELETE*/
delete from student where cnic_no=5570;

/*ENTRY IN PARTICULAR COLUMN*/
insert into student(cnic_no) values(888);

/*WHERE CLAUSE*/
select * from student where dob>"2000:01:01";

select * from student where dob="1999:02:09";

select * from student where f_name is null;

select * from student where f_name is not null;

select * from student where f_name="mohammad" or f_name="ali";

select * from student where f_name="mohammad" and l_name="hasham";

select * from student where cnic_no>1000;

select * from student where cnic_no<1000;

select * from student where cnic_no between 565 and 571;

/*GROUP BY*/
/*SUM*/
select sum(cnic_no),l_name from student group by l_name;

/*COUNT*/
select count(*) from student group by l_name;

/*AVERAGE*/
select avg(cnic_no) from student group by l_name;

/*MAXIMUM*/
select max(cnic_no) from student group by l_name;

/*MINIMUM*/
select min(cnic_no),l_name from student group by l_name;

/*CREATE ANOTHER TABLE*/
create table person(
id int,
f_name varchar(20),
primary key (id)
);

/*INSERTION*/
insert into person values (5569,"o");
insert into person values (5570,"p");
insert into person values (556,"q");
insert into person values (557,"r");
insert into person values (500,"s");
insert into person values (470,"t");

select * from person;

/*JOINS*/
/*INNER JOIN*/
select * from student
inner join person
where student.cnic_no=person.id;

/*LEFT JOIN*/
select * from student
left join person
on student.cnic_no=person.id;

/*RIGHT JOIN*/
select * from student
right join person
on student.cnic_no=person.id;

/*ROLLBACK*/
commit;
insert into person values(6668,"a");
rollback;





