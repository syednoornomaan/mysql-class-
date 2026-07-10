show databases;
use world;

describe table country; -- table kon konse column hai and uske datatype

-- data access
select * from country;

select name, continent from country;

select continent, name from country;

select name, continent population from country;

select * from country;

select name, continent, population from country;

select name, continent, population, population+1000 from country;

select * from country;

select name as country_name, continent, population, population+1000+1000-1500 as newpopulation from country;

-- select => column ko access karna
-- you acn write a query (logic) in any case format
-- you can give a column name using as keyword

select * from country
where continent='Europe';

select * from country
where name='Bahrain';


-- 156483000
select name,continent, population from country
where name='pakistan';

select * from country where population=156483000;
select name, continent from country where population=156483000;


select * from country where continent='Europe';

select * from country where continent='Europe'
and indepyear>1900;

-- get the country code and country name where the surface area is greater than 1900 
-- get the country code and country name where the region is southern euorope
--                                       where the country belongs to africa and the region is central africa 
-- get the country name continent and population where they belongs to aisa or africa 
-- get the country name population region with the 10% population increase in the popultaion whooose independent year is after 1950
-- get all the values of country where the country name and the local name is same                                            

select code, name
from Country
where SurfaceArea > 1900;

select code, name
from Country
where region = 'Southern Europe';

select code, name
from country
where continent = 'africa'
and region = 'central africa';

select name, continent, population
from country
where continent = 'Asia'
or continent = 'Africa';

select name, population, region, population *1.1 as increased_population
from country
where indepyear > 1950;

select *
from country
where name = localname;