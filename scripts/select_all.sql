SELECT 'virus' AS table_name, count(*) AS cnt
FROM virus

UNION ALL

SELECT 'zoo' AS table_name, count(*) AS cnt
FROM zoo

UNION ALL

SELECT 'personal_information' AS table_name, count(*) AS cnt
FROM personal_information

UNION ALL

SELECT 'employee' AS table_name, count(*) AS cnt
FROM employee

UNION ALL

SELECT 'task' AS table_name, count(*) AS cnt
FROM task

UNION ALL

SELECT 'animal' AS table_name, count(*) AS cnt
FROM animal

UNION ALL

SELECT 'research' AS table_name, count(*) AS cnt
FROM research

UNION ALL

SELECT 'laboratory' AS table_name, count(*) AS cnt
FROM laboratory
