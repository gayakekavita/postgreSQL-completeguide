Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.
  Syntax
SELECT DISTINCT column1, column2, ...
FROM table_name;


The distinct keyword is used in conjunction with the select keyword.
  It is helpful when there is a need to avoid duplicate values present in any specific columns/table. 
  When we use distinct keywords only the unique values are fetched. 
  If a distinct keyword is used with multiple columns, the distinct combination is displayed in the result set.

select DISTINCT name FROM products;
select COUNT(DISTINCT name) FROM products;
select COUNT(DISTINCT department) FROM products;
select DISTINCT department FROM products;
select DISTINCT department,name FROM products;
here above query will return unique combination of department and name column.

select COUNT(DISTINCT department,name) FROM products;

ERROR:  function count(character varying, character varying) does not exist
LINE 3: select COUNT(DISTINCT department,name) FROM products;
               ^
HINT:  No function matches the given name and argument types. You might need to add explicit type casts. 

SQL state: 42883
Character: 91
