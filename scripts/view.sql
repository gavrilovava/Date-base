--Данные о сотрудниках со скрытым id
CREATE VIEW employees_private AS 
SELECT SUBSTR(employee_id, 2, 2) || '***' as id, name AS name, surname AS surname
FROM personal_information;

--Данные о сотрудниках со скрытым номером телефона

CREATE VIEW if NOT EXists employees_masked3 AS
SELECT name || ' ' || surname as name, SUBSTR(phone_number, 1, 2) ||  '*********' as phone
FROM personal_information;


--Данные о зоопарках с сокрытием города и страны

CREATE VIEW zoo_mask AS
SELECT name, SUBSTR(city, 1, 2) || '***'  AS city, 
 SUBSTR(country, 1, 2) || '***'  AS country
FROM zoo;


--Сотрудники лаборатории и их задачи

CREATE VIEW employee_tasks AS 
SELECT p.name || ' ' || p.surname AS name, t.text_of_task AS task
FROM personal_information p 
INNER JOIN employee e 
ON p.employee_id = e.employee_id 
INNER JOIN task t 
ON t.task_id = e.task_id;

--Информация о количестве животных по каждому зоопарку

CREATE VIEW zoo_animals AS
SELECT z.name AS "Zoo Name", COUNT(a.animal_id) AS "Number of Animals"
FROM zoo z
LEFT JOIN animal a ON z.zoo_id = a.zoo_id
GROUP BY z.zoo_id;


--Результаты исследований определенного вируса

CREATE VIEW virus_research AS
SELECT v.name AS "Virus Name", l.laboratory_name AS "Lab Name", COUNT(r.animal_id) AS "Number of Animals Tested"
FROM virus v
LEFT JOIN research r ON v.virus_id = r.virus_id
LEFT JOIN laboratory l ON r.lab_id = l.lab_id
GROUP BY v.virus_id, l.laboratory_name;


--Лаборатории и их номер телефона

CREATE VIEW laboratory_phone_numbers AS
SELECT laboratory_name AS "Lab Name", phone_number AS "Phone Number"
FROM laboratory;
