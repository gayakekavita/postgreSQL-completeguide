SELECT name || ', '|| population  AS name_population FROM cities;

/*  Above query will return the column called as 'name_population' with the records of name and population column separated by comma(,) and single space (" ").

   || is the concatenation operator which concatenate the values of columns as per our requirments 

   Syntax: 
         SELECT column_name1 || 'separator_if_wants'  column_name AS new_column_name FROM table_name ;
*/





SELECT CONCAT(name,'=',country) AS name_population FROM cities; 
/*  Above query will return the column called as 'name_population' with the records of name and population column separated by equal(=) sign.

   CONCAT() is the concatenation function  which concatenate the values of columns as per our requirments 

   Syntax: 
         SELECT CONCAT(column_name1 ,'separator_if_wants',column_name )AS new_column_name FROM table_name ;
*/




SELECT CONCAT(UPPER(name),'=',UPPER(country)) AS name_population FROM cities; 

SELECT UPPER(name),UPPER(country) FROM cities;
/*
UPPER () function returns the given columns records in uppercase letters
*/





SELECT LOWER(name),LOWER(country) FROM cities;
SELECT CONCAT(LOWER(name),'=',LOWER(country)) AS name_population FROM cities; 
/*
LOWER() function returns the given columns records in lowercase letters
*/



