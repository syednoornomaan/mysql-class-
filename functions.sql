-- functions 
-- block of code collection of satement => perform certain task
-- code reusable
-- code duplicay is removed 
-- make your code divided into smaller section
-- scaler function => applies on every row return for every row

-- string,number, dates
-- concat
use world;
select name , continent, concat(continent, 'have ' ,name, ' country') from country;  

select name , continent, concat_ws(continent, 'have ' ,name, ' country') from country;  

-- substr
select name,(name), substr( name,2) from country;  -- extract strimg character

select name,(name), substr( name,2),  substr( name,2,4) from country;

select name,substr( name,-4,2) from country
where name='colombia';

-- length
select name, length(name), char_length(name) from country;

-- replace
select name, replace(name,'a','@') from country;

-- trim
select trim('      he llo      ');
 
 -- lpad
 select name , lpad( name ,6,'@') from country;
 -- rpad
 select name , rpad( name ,6,'@') from country;
 
 -- YYYY-MM-DD  <====    DD/MM/YYYY (we can convert)
 select current_date(), current_time(),current_timestamp(),now();
 
 
 select now() , adddate( now() ,2);
 
 select payment_date, adddate(payment_date,3) from sakila.payment;
 
-- select now() , adddate( now()  , 1), adddate()( now() , -1);
 -- adddate( now() , interval 1 year ),  adddate( now() , interval 1 quarter);
 
 select now(), year( now() ) , month( now() ),
 extract( month from now() ), extract( minute from now() ),
weekday( now() );     

select now(), date_format( now(), 'year is %y  onth is %m'); 

-- substr, char_length, trim, replace
-- adddate with interval, year, month, extract,date_format,now()