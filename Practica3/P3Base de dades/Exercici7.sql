-- 7.1
UPDATE property4rent
SET rooms =	5, rent	= 550
WHERE owner_id = 'CO99';
SELECT * FROM property4rent;

-- 7.2
UPDATE privateowner
SET address = '14 Fergus Dr, Aberdeen AB2 7SX', telnumber = 1414444441 
WHERE privateowner_id = 'CO99';
SELECT * FROM privateowner;

-- 7.3
UPDATE property4rent
SET rent = rent * 1.25
WHERE city = 'Glasgow';
SELECT * FROM property4rent;