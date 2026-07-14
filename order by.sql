use world;

-- scaler functions
-- multiple functions

select  distinct(continent) from country;

select distinct(name) from country;

select count(continent),  count(distinct(continent))from country;             

-- country name 
select count(continent),  count(distinct(name))from country; -- count

select count(population), sum(population), avg(population)
from country;

select * from country;

select count(surfacearea), sum(surfacearea), max(surfacearea) from country;

select count(continent), max(continent), min(continent) from country;

select max(date(now ())), min(date(now()));

-- population => non aggregated column
-- count(population) => aggregated function
select population, count(population) from country;

select avg(population) from country;

select avg(population), avg(replace(population, 1,4)) from country;

select avg(replace(population, 1,4)) from country;

select avg(replace(population, 0,' ')) as new_population from country; 

-- data sort karna => (order by clause) 

select name, continent, region, population from country
order by name;

select name, continent, region, population from country
order by name desc;

select name, continent, region, population from country
order by population,name;

select name, continent, region, population from country
order by population desc;
-- region ascending order ssort 
-- in each region we sort the data based on population in descending order 
select name, continent, region, population from country
order by  region, population desc;

select distinct(continent), length(continent) from country where continent in ('africa', 'north america');