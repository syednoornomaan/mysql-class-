-- get the city and the p[opulation where you have the letter e in the city name
--                               where the secondlast letter should be b
--                               where the city name charcter letter a and last letter 'r'
--                               where you have aa in city name 
-- get the city name and the pop where the country name have the two letter e seprated with a character and it should be in the middle


select name, population from city where name like'%e%';

select name, population  from city where name like'%b_';

select name, population  from city where name like '_a%r_';

select name, population  from city where name like '%aa%';

select name, population  from city where name like '_%e_e%_';

