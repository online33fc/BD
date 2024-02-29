-- 11.1
SELECT * 
FROM staff
WHERE salary >= ANY(
SELECT salary FROM staff
WHERE branch_id = ANY(SELECT branch_id FROM branch WHERE city = 'Glasgow'));

-- 11.2
SELECT * 
FROM staff
WHERE salary > ALL(
SELECT salary FROM staff
WHERE branch_id = ANY(SELECT branch_id FROM branch WHERE city = 'Glasgow'));