SELECT CC.CONTINENT, FLOOR(AVG(C.POPULATION))
FROM COUNTRY CC
INNER JOIN CITY C
ON CC.CODE = C.COUNTRYCODE
GROUP BY CC.CONTINENT;