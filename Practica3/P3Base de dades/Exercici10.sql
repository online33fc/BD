-- 10.1
SELECT * 
FROM property4rent
GROUP BY city
HAVING city != 'Glasgow';

-- 10.2
SELECT *
FROM property4rent
WHERE branch_id	IN (SELECT branch_id FROM staff WHERE city = 'Glasgow');		

-- 10.3		
SELECT fname, lname, position, Round(salary - (SELECT AVG(salary) FROM staff), 2) AS Diff_AVG_Salary 
FROM staff
WHERE salary > (SELECT AVG(salary) FROM staff);