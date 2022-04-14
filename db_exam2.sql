select * from student;
select * from major;

select * from student 
where grade = 1 and hometown = '“Œ‹ž' order by student_id;

select * from student 
where grade = 1 or student_name like '%–{' order by student_id desc;

select major_id,max(grade) from student group by major_id order by major_id;


select hometown,count(*) from student group by hometown having count(*) >= 2 order by hometown;

select s.student_name,m.major_name from student s join major m 
on s.major_id = m.major_id order by major_name,student_name;

select s.student_id,s.student_name,s.hometown,m.major_name from student s join major m
 on s.major_id = m.major_id and s.hometown <> '“Œ‹ž'order by major_name,student_id;
 
select student_id,student_name,grade 
from student s
where s.major_id = (SELECT m.major_id 
FROM major m WHERE major_name = '‰p•¶Šw') order by student_id;

select student_id,student_name,major_id
from student
where major_id in(SELECT major_id
FROM student group by major_id having count(major_id) >= 3) order by major_id,student_id;




                    
                    
 
 
 
