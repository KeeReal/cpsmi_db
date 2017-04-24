-- 6. Выбрать номер группы и фамилию старосты данной группы.

select g.group_id, s.last_name from Group_Student g
 INNER join Students s on g.student_id=s.student_id
where g.is_head=true;