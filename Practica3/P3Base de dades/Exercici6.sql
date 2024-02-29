-- 6.1
INSERT INTO privateowner (privateowner_id, fname, lname, address, telnumber)
VALUES ('CO99 ', 'Jack', 'Dew', '4 Fergus Dr, Aberdeen AB2 7SX', 1411411411);
SELECT * FROM privateowner;

-- 6.2 
INSERT INTO property4rent 
(property_id, street, city, postcode, type, rooms, rent, owner_id, staff_id, branch_id)
VALUES ('PA15', '12 Holhead', 'Aberdeen', 'AB7 5SU', 'House', 6, 600, 'CO99', 'SA9', 'B007'),
('PA16', '14 Holhead', 'Aberdeen', 'AB7 5SU', 'House', 6, 600, 'CO99', 'SA9', 'B007');
SELECT * FROM property4rent;