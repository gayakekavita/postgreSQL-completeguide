--GREATEST() function
--The GREATEST is a SQL numeric function which shows the greatest value from the specified inputs in Structured Query Language.
/*Syntax of GREATEST Function

SELECT GREATEST(Number1, Number2, Number3, Number4, ......, NumberN) AS Alias_Name;  

--In the GREATEST syntax, we have to pass those numbers from which we want to find greatest value.
--In the Structured Query Language, we can also use the GREATEST function with the column of the table as shown in the following block:

SELECT GREATEST(Integer_column_Name1, Integer_column_Name1, Integer_column_Name1, Integer_column_Name1, ......., Integer_column_NameN,) AS Alias_Name FROM Table_Name;  
--In this syntax, we have to define the name and columns of that table on which we want to perform the GREATEST function.*/

  
select GREATEST (10,39,45,21);
select name,weight,GREATEST(30,2*weight) AS cost_to_ship FROM products;

--least() function

/*The LEAST is a SQL numeric function which shows the least value from the specified inputs in Structured Query Language.

Syntax of LEAST Function
SELECT LEAST(Number1, Number2, Number3, Number4, ……, NumberN) AS Alias_Name;  
--In the LEAST syntax, we have to pass those numbers from which we want to find least value.

--In the Structured Query Language, we can also use the LEAST function with the column of the table as shown in the following block:

SELECT LEAST(Integer_column_Name1, Integer_column_Name1, Integer_column_Name1, Integer_column_Name1, ……., Integer_column_NameN,) AS Alias_Name FROM Table_Name;  
--In this syntax, we have to define the name and columns of that table on which we want to perform the LEAST function.*/
  
select name,weight,LEAST(30,2*weight) AS cost_to_ship FROM products;
select LEAST(34,56,22,12);
select name,price,LEAST(price*0.5,400) AS sale_price FROM products;


--case keyword

--Control statements form the heart of most languages since they control the execution of other sets of statements. These are also found in SQL and should be exploited for uses such as query filtering and query optimization by carefully selecting tuples that match our requirements.

--In this article, we explore the Case-Switch statement in SQL. The CASE statement is SQL’s way of handling if/then logic. 

--There can be two valid ways of going about the case-switch statements.

--The first takes a variable called case_value and matches it with some statement_list.

/*CASE case_value

WHEN when_value THEN statement_list

[WHEN when_value THEN statement_list] …

[ELSE statement_list]

END CASE*/
--The second considers a search_condition instead of variable equality and executes the statement_list accordingly.

/*Syntax:

CASE

WHEN search_condition THEN statement_list

[WHEN search_condition THEN statement_list] …

[ELSE statement_list]

END CASE*/
select name,price, CASE 
WHEN price>600 THEN 'high'
WHEN price>300 THEN 'medium'
ELSE 'cheap'
END AS range_of_price 
FROM products;
