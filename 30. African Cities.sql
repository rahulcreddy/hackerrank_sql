SELECT C.NAME
FROM CITY C
LEFT JOIN COUNTRY CC
ON C.COUNTRYCODE = CC.CODE
WHERE CONTINENT = 'Africa'
