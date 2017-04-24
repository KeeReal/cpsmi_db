-- 5. Написать запрос, который возвращает фамилии всех преподавателей, если у преподавателя есть куратор, то вывести и фамилию куратора.

select t1.last_name as teacher, t2.last_name as curator from Teachers t1
  left OUTER join Teachers t2 on t1.curator_id = t2.teacher_id;
