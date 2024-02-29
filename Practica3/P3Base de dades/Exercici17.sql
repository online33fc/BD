-- 17.1
SELECT fname, lname FROM (
  SELECT fname, lname FROM privateowner
  UNION
  SELECT fname, lname FROM staff
  UNION
  SELECT fname, lname FROM client
) AS tots_els_usuaris
GROUP BY fname, lname
ORDER BY lname, fname;



-- 17.2
SELECT	COUNT(nomComplet),	ciutat,	provincia
FROM	cens
WHERE	dob	<=	'1941-01-01'
GROUP	BY	provincia,	ciutat
UNION
SELECT	COUNT(nomComplet),	ciutat,	provincia
FROM	sanitaris
GROUP	BY	provincia,	ciutat
ORDER	BY	provincia,	ciutat;