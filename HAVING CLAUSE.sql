use world;
select * from country;

select continent, count(*) from country group by continent
having count(*)>30;

select count(*)  from country where indepyear=1991;

select indepyear, count(name)  from country group by  indepyear;

select indepyear, count(name)  from country group by  indepyear 
having count(name)>10;


select * from country;

-- case statement
-- if null, coalesce
-- theory(keys, super key,composite key)