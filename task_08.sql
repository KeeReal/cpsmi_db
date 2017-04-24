-- 8. Выбрать преподавателей, которые читают лекции больше чем на одном факультете.

select t.last_name from (
  select tcf.teacher_id, count(DISTINCT tcf.faculty_id) as cnt
    from Teacher_Course_Faculty tcf
    GROUP by tcf.teacher_id) fc
  INNER join Teachers t on fc.teacher_id = t.teacher_id
  where cnt > 1;