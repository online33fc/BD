-- 9.1
SELECT owner_id,	
	SUM(rent) AS Total_rent
FROM property4rent
GROUP BY owner_id;

-- 9.2
SELECT branch_id, ROUND(SUM(salary), 2) AS Salary_add, COUNT(staff_id) AS Total_employees
FROM staff
GROUP BY branch_id;

-- 9.3
SELECT branch_id,	
	GROUP_CONCAT("	'",	lname,	"'") AS	Employees_last_name, MIN(salary) AS Min_salary
FROM staff
GROUP BY branch_id
HAVING MIN(salary) > 10000;

-- 9.4
SELECT owner_id, SUM(rent) AS Total_rent,
	GROUP_CONCAT("	'",	city,	"'") AS	Cities
FROM property4rent
GROUP BY owner_id
HAVING Total_rent <= 400
ORDER BY owner_id DESC;