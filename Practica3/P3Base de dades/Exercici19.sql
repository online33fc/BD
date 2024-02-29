-- 19.1
SELECT PO.fname, PO.lname, PO.address, P.city, V.viewdate, V.comment
FROM privateowner PO
LEFT JOIN property4rent P ON PO.privateowner_id = P.owner_id
LEFT JOIN viewing V ON P.property_id = V.property_id
ORDER BY PO.lname, PO.fname;

-- 19.2
SELECT PO.fname, PO.lname, PO.address, P.city, V.viewdate, V.comment
FROM dreamhouse.viewing V
RIGHT JOIN dreamhouse.property4rent P ON P.property_id = V.property_id
RIGHT JOIN privateowner PO ON PO.privateowner_id = P.owner_id
ORDER BY PO.lname, PO.fname;

-- 19.3