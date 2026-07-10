-- between operator 
-- in operator 
-- like operator 
-- what is dbms what are differnt typs of dbms 


-- between operator
select * from country where indepyear between 1800 and 1950; 

-- in operator 
select * from country where indepyear in ('1975' , '1987');  

-- like operator
SELECT name
FROM country
WHERE name LIKE 'c%';