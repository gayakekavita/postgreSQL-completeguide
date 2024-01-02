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
