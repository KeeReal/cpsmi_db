-- 7. Написать запрос, возвращающий фамилии преподавателей, которые читают и Алгебру, и Высшую математику.

select t.last_name, c.course_name
  from Teacher_Course_Faculty tcf
  INNER join Courses c on tcf.course_id=c.course_id
  inner join Teachers t on tcf.teacher_id = t.teacher_id
  where c.course_name in ('Алгебра', 'Высшая математика');
