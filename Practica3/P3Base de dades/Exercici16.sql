-- 16.1
SELECT S.dni, S.nomComplet, S.ciutat, S.provincia AS provincia_residencia, CV.provincia AS provincia_centre FROM pla_covid.centresvacunacio CV
JOIN pla_covid.sanitaris S ON CV.cvid = S.cvid
WHERE CV.provincia = "TARRAGONA";

-- 16.2
SELECT S.dni, S.nomComplet, S.ciutat, S.provincia AS provincia_residencia, CV.provincia AS provincia_centre FROM pla_covid.centresvacunacio CV
JOIN pla_covid.sanitaris S ON CV.cvid = S.cvid
WHERE S.provincia = "TARRAGONA";

-- 16.3
SELECT S.dni, S.nomComplet, S.ciutat, S.provincia AS provincia_residencia, CV.provincia AS provincia_centre FROM pla_covid.centresvacunacio CV
JOIN pla_covid.sanitaris S ON CV.cvid = S.cvid
WHERE S.provincia != "TARRAGONA" AND CV.provincia = "TARRAGONA";

-- 16.4
SELECT C.dni, C.nomComplet, C.ciutat, C.provincia FROM pla_covid.efectessecundaris ES JOIN (pla_covid.cens C
JOIN pla_covid.plavacunacio PV ON C.dni = PV.dni) ON ES.efsecid = PV.efsecid
WHERE ES.nivell = "Greus";
/* per contar quants surten
SELECT COUNT(*) AS num_resultados,
       C.dni, C.nomComplet, C.ciutat, C.provincia 
FROM pla_covid.efectessecundaris ES 
JOIN (pla_covid.cens C JOIN pla_covid.plavacunacio PV ON C.dni = PV.dni) 
     ON ES.efsecid = PV.efsecid
WHERE ES.nivell = "Greus";
*/

-- 16.5
SELECT C.dni, C.nomComplet, C.ciutat, C.provincia, PV1.data AS dataPrimeraVacuna, PV1.vacid AS vacidPrimeraVacuna, PV2.data AS dataSegonaVacuna, PV2.vacid AS vacidSegonaVacuna FROM pla_covid.cens C JOIN (pla_covid.plavacunacio PV1
JOIN pla_covid.plavacunacio PV2 ON PV1.dni = PV2.dni and PV1.data < PV2.data)
ON C.dni = PV1.dni;


