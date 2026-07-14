-- GROUP BY

use world;

select distinct(continent), name from country;


select count(name) from country where Continent='north america';
select count(name) from country where Continent='asia';
select continent, count(name) from country group by continent;

select name, count(name) from country group by name;

select * from city;
select count(name) from city where district='Zuid-Holland';
select district, count(name) from city group by district;
select district, count(name), sum(population) from city group by district;
select countrycode, count(name) from city group by countrycode;

select count(name), count(code), count(continent), count(indepyear) from country;
-- count() null values count nahi karta 
-- count the num of countries which have the live expectancy of 70.1 83.5
-- get the total population of the country who got the independence after 1990 
-- count the num of countries which are not slaved by any community
-- get the totaln country and the total surface area for each region 
-- get the total countries for each continent 
-- get the total country for each region for each continent 


-- select count(name), lifeexpectancy from country between 70.1 and 83.5 

select count(name), count(code), count(indepyear) from country;

select count(name) from country where lifeexpectancy>70.1 and lifeexpectancy<83.5;
SELECT SUM(Population) 
FROM country
WHERE IndepYear > 1990;

select count(name) from country where indepyear is null;

select region,sum(surfacearea) from country group by region;

select continent, count(name) from country group by continent;

SELECT Continent, Region, count(name) FROM country GROUP BY Continent, Region;




