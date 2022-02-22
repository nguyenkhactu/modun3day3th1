use quanlysinhvien;
select * from class;
insert into class value (1,'a1','2008-12-20',1);
insert into class value ( 2,'a2','2008-12-22',1);
insert into class value(3,'b3',current_date,0);

CREATE TABLE Student
(
    StudentId   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(30) NOT NULL,
    Address     VARCHAR(50),
    Phone       VARCHAR(20),
    Status      BIT,
    ClassId     INT         NOT NULL,
    FOREIGN KEY (ClassId) REFERENCES Class (ClassID)
);

select * from student;
insert into student (studentname,address,phone,starus,classid)
value ('hung','hanoi','0912113113',1,1);
insert into student (studentname,address,starus,classid)
value ('hoa','haiphong',1,1);
insert into student (studentname,address,phone,starus,classid)
value ('manh','hcm','0912113113',0,2);

select * from subject;
insert into subject value (1,'cf',5,1);
insert into subject value (2,'c',6,1);
insert into subject value (3,'hdj',5,1);
insert into subject value (4,'rdbms',10,1);

select * from mark;
insert into mark(subid,studentid,mark,examtimes) value (1,9,8,1),
(1,10,10,1),
 (2,9,12,1);
 
 select * from student;
  update student
  set studenid =1 where studentname = 'hung';
  
  delete from student;