SELECT DISTINCT CITY 
FROM STATION 
WHERE ID in (
  SELECT ID 
  FROM STATION
  WHERE CITY REGEXP '^[^aeiou]' AND CITY REGEXP '[^aeiou]$'
 );
