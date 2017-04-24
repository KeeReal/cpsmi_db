-- 4. Написать запрос, который выбирает фамилию, имя и номер группы студента, в которой он учится.

select s.first_name, s.last_name, g.group_id
  from Students s
  INNER join Group_Student g
  on s.student_id=g.student_id;