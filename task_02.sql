-- 2. Написать запрос, возвращающий преподавателей у которых есть кураторы. Результат должен содержать одно поле teacher_name, в котором содержится Фамилия и Имя преподавателя через пробел.

select CONCAT_WS(' ', t.last_name, t.first_name)
  from Teachers t
  where curator_id IS NOT NULL;