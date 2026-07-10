-- dql 
use world; -- access kar raha hu 

show tables; -- how many table in the database

select * from city;

select district, population, district, population+1999 as population_new from city;

-- where(clause) filter karne ke liye use hota hai
select district, Population from city where name='kabul';

select name,
district, population, countrycode from city where CountryCode='ind' and population>2000000;

select name,
district, population, countrycode from city where CountryCode='ind' or population>2000000;

select * from city where countrycode='afg' and countrycode='ind'; -- ek row ke andar kisi coloumn ki value do nahi ho sakti

select * from city where countrycode='afg' and district='kabul';

-- between operator

select * from city where population>100000 and Population<150000;

select * from city where population between 100000 and 150000;

-- in operator 
select * from city where Population=129170 or population=117196;

select * from city where Population in (129170 ,117196);

-- like operator
select * from city where name='b';

select * from city where name like 'A%';  -- a se start hone waale saaare character

select * from city where name like '%A';  -- a se khatam hone waale saare charecter 

select * from city where name like 'b%A'; -- b se shuru or a pe khatam hone wala 

select * from city where name like '%A%';  -- a kahi bhi aa sakta hai

-- _
select * from city where name like 'T__'; -- t ke baad do character hone hi chahiye ya usse zyada 
select * from city where name like 'T___%'; -- t ke baad teen charactyer hone hi chaihye ya usse zayada 
select * from city where name like 's%__';  --  s toh hina hi chahiye or teen charac hone chahiye 
 

