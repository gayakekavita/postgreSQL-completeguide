--There can be many columns in a database table, so sometimes it can become difficult and time taking to find the same type of data in these columns. 
The GROUP BY statement groups the identical rows present in the columns of a table. GROUP BY statement in conjunction with SQL aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG() etc.) help us to analyze the data efficiently.
select user_id from comments;
returns user_id with duplication.
select user_id from comments GROUP BY user_id;
returns user_id with unique values.

select comment from comments GROUP BY user_id;
ERROR:  column "comments.comment" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: select comment from comments GROUP BY user_id;

--Aggregate Functions
Count()
Sum()
Avg()
Min()
Max()

1. COUNT():
This function returns the number of records(rows) in a table. The Syntax of the count() function is mentioned below.

Syntax:

SELECT COUNT(column_name) FROM table_name WHERE condition;  
select count(id) from comments;
select count(id) from photos;
select count(id) from users;
select count(user_id) from photos;
select count(user_id) from comments;
select count(photo_id) from comments;
select count(comment) from comments;
select count(url) from photos;

2. SUM():
This function returns the sum of all values of a column in a table. Here is the syntax for the sum() function.
Syntax:

SELECT SUM(column_name) FROM table_name WHERE condition; 

select SUM(id) from comments;
select SUM(id) from photos;
select SUM(id) from users;
select SUM(user_id) from photos;
select SUM(user_id) from comments;
select SUM(photo_id) from comments;

3.AVG()
This function will return the average of all values present in a column. The syntax of the AVG() function is given below.

Syntax:

SELECT AVG(column_name) FROM table_name WHERE condition;  
select AVG(id) from comments;
select AVG(id) from photos;
select AVG(id) from users;
select AVG(user_id) from photos;
select AVG(user_id) from comments;
select AVG(photo_id) from comments;


4. MIN():
This function produces the lowest value in a column for a group of rows that satisfy a given criterion. The Syntax of the MIN() function is as follows

Syntax:

SELECT MIN(column_name) FROM table_name WHERE condition; 
select min(id) from comments;
select min(photo_id) from comments;
select min(user_id) from comments;
select min(user_id) from photos;
select min(id) from photos;
select min(id) from users;
select min(id) from comments;

5. MAX()
The MAX function in SQL is used to return the highest value in a column for a group of rows that satisfy a given condition in a table. The MAX syntax is as follows:

Syntax:

SELECT MAX(column_name) FROM table_name WHERE condition;  

select max(id) from comments;

it returns maximum id of comments table.
select max(id) from users;
select max(id) from photos;
select max(user_id) from photos;
select max(user_id) from comments;
select max(photo_id) from comments;
