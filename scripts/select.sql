--поиск всех типов животных поставляемых из России

SELECT a.name as type,
	z.country as place
from cd.animal a
join cd.zoo z on z.zoo_id = a.zoo_id
where z.country == 'Russia'
GROUP by type

--выборка всех вирусов имеющихся в базе института отсортированных по уровню смертности на текущий момент

SELECT name,
	case
    	when death_rate >= 50 THEN 'especially dangerous'
        when death_rate < 50 and death_rate > 25 then 'dangerous'
        else 'normal'
    end as 'degree_of_danger'
FROM cd.virus
ORDER by death_rate DESC;

--удалить из базы все вирусы привезенные раньше 2010 года

DELETE from cd.virus
where when_bring < 2010;

--удалить из базы всех животных старше 4 лет

DELETE
	FROM cd.animal
   where age >= 4;


--добавить коментарий ко всем проектам с дедлайном в выбранной дате

update cd.task
	set text_of_task = 'прислать план работы'
WHERE deadline = '2024-06-13';

--Увеличить процент смертности на 1 у всех вирусов открытых посже 1980 года

update virus
	set death_rate = death_rate + 1
WHERE when_discovered > '1980-01-01';

--Выбрать все записи из таблицы task, где дедлайн наступает в ближайшие 3 дня.

SELECT * FROM cd.task 
WHERE deadline BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '3 DAY';

--Выбрать всех сотрудников с пустой графой задание

SELECT surname, name, second_name
FROM cd.personal_information
WHERE employee_id NOT IN (SELECT employee_id FROM cd.employee);

--Обновление истории какого-то задания

UPDATE cd.history_of_task
SET message = 'Завершен', time_of_change = CURRENT_DATE
WHERE task_id = 66713;

--удалить все задания с прошедшим дедлайном

DELETE
	FROM cd.task
   where deadline < CURRENT_DATE;
