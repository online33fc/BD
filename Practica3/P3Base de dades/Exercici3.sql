-- 3.1
SELECT * FROM staff WHERE salary>10000;

-- 3.2
SELECT street, city FROM branch WHERE city = 'London' OR city = 'Glasgow';

-- 3.3
SELECT fname, lname, position, salary FROM staff WHERE salary>=10000 AND salary<=30000;

-- 3.4
SELECT fname, lname, position, salary FROM staff WHERE salary BETWEEN 10000 AND 30000;

-- 3.5
SELECT fname, lname, position FROM staff WHERE position IN('Manager', 'Supervisor');

-- 3.6
SELECT * FROM privateowner WHERE address LIKE '%Glasgow%';

-- 3.7
SELECT client_id, property_id, viewdate FROM viewing WHERE comment IS NULL;

