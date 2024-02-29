-- 5.1
SELECT COUNT(*) FROM property4rent WHERE rent > 450;

-- 5.2
SELECT COUNT(DISTINCT property_id) FROM viewing WHERE viewdate BETWEEN '2016-03-01' AND '2016-04-30';

-- 5.3
SELECT COUNT(staff_id), SUM(salary) FROM staff WHERE position = 'Manager';

-- 5.4
SELECT MIN(salary), MAX(salary), AVG(salary) FROM staff;