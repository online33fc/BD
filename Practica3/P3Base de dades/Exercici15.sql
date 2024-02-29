-- 15.1
SELECT	farmaceutica,	descripcio
FROM	vacunes
JOIN	efectessecundaris;

-- 15.2
/*	7	x	7	=	49	resultats	*/
SELECT	V1.farmaceutica,	V2.farmaceutica
FROM	vacunes	V1
JOIN	vacunes	V2;

-- 15.3
/*	7	x	7	x	9	x	9	=	3969	resultats	*/
SELECT	V1.farmaceutica,	V2.farmaceutica,	E1.descripcio,	E2.descripcio
FROM	vacunes	V1
JOIN	vacunes	V2
JOIN	efectessecundaris	E1
JOIN	efectessecundaris	E2;

-- 15.4
SELECT	V1.farmaceutica,	V2.farmaceutica,	E1.descripcio,	E2.descripcio
FROM	vacunes	V1
JOIN	vacunes	V2
JOIN	efectessecundaris	E1
JOIN	efectessecundaris	E2
WHERE	V1.farmaceutica	!=	'Pfizer'	
AND	V2.farmaceutica	!=	'Moderna'	
AND	E1.descripcio	NOT	LIKE	'Trombosi%'
AND	E2.descripcio	!=	'Febre';

-- 15.5
SELECT	COUNT(*) AS num_resultados,V1.farmaceutica,	V2.farmaceutica,	E1.descripcio,	E2.descripcio
FROM	vacunes	V1
JOIN	vacunes	V2	ON	V2.farmaceutica	!=	'Moderna'
JOIN	efectessecundaris	E1	ON	E1.descripcio	NOT	LIKE	'Trombosi%'
JOIN	efectessecundaris	E2	ON	E2.descripcio	!=	'Febre'	AND	E2.descripcio	NOT	LIKE	'Infec%'
WHERE	V1.farmaceutica	!=	'Pfizer';