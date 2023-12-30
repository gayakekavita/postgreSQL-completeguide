(select *from products ORDER BY price DESC LIMIT 4)
UNION 
(select *from products ORDER BY price/weight DESC LIMIT 4);

"id"	"name"	"department"	"price"	"weight"
38	"Awesome Fresh Keyboard"	"Home"	982	30
86	"Refined Concrete Pants"	"Sports"	724	2
46	"Incredible Granite Bacon"	"Music"	982	9
80	"Small Fresh Gloves"	"Garden"	991	8
24	"Small Plastic Soap"	"Beauty"	345	1
7	"Incredible Granite Mouse"	"Home"	989	2
1	"Practical Fresh Shirt"	"Toys"	876	3


(select *from products ORDER BY price DESC LIMIT 4)
UNION ALL
(select *from products ORDER BY price/weight DESC LIMIT 4);
"id"	"name"	"department"	"price"	"weight"
80	"Small Fresh Gloves"	"Garden"	991	8
7	"Incredible Granite Mouse"	"Home"	989	2
38	"Awesome Fresh Keyboard"	"Home"	982	30
46	"Incredible Granite Bacon"	"Music"	982	9
7	"Incredible Granite Mouse"	"Home"	989	2
86	"Refined Concrete Pants"	"Sports"	724	2
24	"Small Plastic Soap"	"Beauty"	345	1
1	"Practical Fresh Shirt"	"Toys"	876	3



the UNION operator is used to combine the result-set of two or more SELECT statements.

Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order
UNION Syntax
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;



(select *from products ORDER BY price DESC LIMIT 4)
INTERSECT
(select *from products ORDER BY price/weight DESC LIMIT 4);
"id"	"name"	"department"	"price"	"weight"
7	"Incredible Granite Mouse"	"Home"	989	2



(select *from products ORDER BY price DESC LIMIT 4)
INTERSECT ALL
(select *from products ORDER BY price/weight DESC LIMIT 4);
"id"	"name"	"department"	"price"	"weight"
7	"Incredible Granite Mouse"	"Home"	989	2





  The SQL EXCEPT Operator
The EXCEPT operator in SQL is used to retrieve all the unique records from the left operand (query), except the records that are present in the result set of the right operand (query).

In other words, this operator compares the distinct values of the left query with the result set of the right query. If a value from the left query is found in the result set of the right query, it is excluded from the final result.
  In SQL, EXCEPT returns those tuples that are returned by the first SELECT operation, and not returned by the second SELECT operation.

This is the same as using a subtract operator in relational algebra.

(select *from products ORDER BY price DESC LIMIT 4)
EXCEPT 
(select *from products ORDER BY price/weight DESC LIMIT 4);

"id"	"name"	"department"	"price"	"weight"
38	"Awesome Fresh Keyboard"	"Home"	982	30
46	"Incredible Granite Bacon"	"Music"	982	9
80	"Small Fresh Gloves"	"Garden"	991	8



The SQL EXCEPT operator takes the distinct rows of one query and returns the rows that do not appear in a second result set. The EXCEPT ALL operator does not remove duplicates. For purposes of row elimination and duplicate removal, the EXCEPT operator does not distinguish between NULLs.

EXCEPT ALL which returns all records from the first table which are not present in the second table, leaving the duplicates as is.

(select *from products ORDER BY price DESC LIMIT 4)
EXCEPT ALL
(select *from products ORDER BY price/weight DESC LIMIT 4);
"id"	"name"	"department"	"price"	"weight"
38	"Awesome Fresh Keyboard"	"Home"	982	30
46	"Incredible Granite Bacon"	"Music"	982	9
80	"Small Fresh Gloves"	"Garden"	991	8
