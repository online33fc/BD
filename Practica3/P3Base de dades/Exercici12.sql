-- 12.1
-- 12.1.1
START TRANSACTION;
DELETE FROM branch WHERE branch_id = 'B005';
SELECT * FROM branch;
ROLLBACK;

-- 12.1.2
START TRANSACTION;
DELETE FROM branch;
SELECT * FROM branch;
ROLLBACK;

-- 12.2
SELECT * FROM branch;
SELECT * FROM property4rent;