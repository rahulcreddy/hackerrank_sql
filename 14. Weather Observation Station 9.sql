select DISTINCT CITY
from STATION
where CITY regexp "^[^AEIOU]";
