-- 3. Написать запрос, возвращающий преподавателей, которым больше 50 лет или фамилия которых начинается на букву «С».

select * from (
  select *, year(now()) - year(t.birthday) age
    from Teachers t
) t2 where t2.age > 50 or t2.last_name like 'С%';