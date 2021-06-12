select concat(Name,'(',substring(Occupation,1,1),')') as colA

from OCCUPATIONS

Order by Name

select concat('There are a total of ', count(Occupation),' ',lower(Occupation),'s.') as colB

from OCCUPATIONS

group by Occupation

order by colB;
