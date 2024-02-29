-- 18.1
SELECT V.vacid, group_concat( ES.efsecid separator ', ') FROM
(vacunes V LEFT JOIN (efectessecundaris ES JOIN
plavacunacio PV ON ES.efsecid = PV.efsecid)
 ON V.vacid = PV.vacid) GROUP BY V.vacid;
 
-- 18.2
SELECT H.nombreCentro, S.dni, S.nomComplet FROM (hospitales.hospital H JOIN
hospitales.municipio M ON M.idMunicipio = H.idMunicipio ) LEFT JOIN
pla_covid.sanitaris S ON H.CCN = S.cvid WHERE M.nombreMunicipio = "Girona" ORDER BY H.nombreCentro, S.nomComplet;

-- 18.3
SELECT * FROM dreamhouse.staff S LEFT JOIN
dreamhouse.registration R ON S.staff_id = R.staff_id
WHERE R.staff_id IS NULL;


