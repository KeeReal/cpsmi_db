-- 9. Написать запрос, который возвращает фамилию студента, название курсов, которые читаются на его факультете и оценку студента по курсу, если он его сдавал. Если студент не сдавал курс, то вместо оценки вывести null. Следует учитывать, что студент может сдавать экзамен по курсу, который не читается на его факультете, а также, один курс на факультете может читаться различными преподавателями.

select s.student_id, m.course_id, m.mark, c.course_name
  from Students s
  left OUTER join Students_marks m
    on s.student_id=m.student_id
  LEFT OUTER join Courses c on m.course_id=c.course_id;

select * from Students_marks s;

select * from Groups g INNER join Faculties f on g.faculty_id=f.faculty_id;

select g.faculty_id, gs.student_id, m.course_id, m.mark, c.course_name
  from Groups g
  INNER join Group_Student gs on g.group_id=gs.group_id
  INNER join Students_marks m on gs.student_id=m.student_id
  left OUTER join Courses c on m.course_id=c.course_id;

select * from Teacher_Course_Faculty t;