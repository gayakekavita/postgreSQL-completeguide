SELECT *FROM students;
/* Above query return all the records present in the table 
  it will return table with all its column and its records .they are:
                                         1.name
                                         2.address
                                         3.roll_no
                                         4.marks
   Syntax:  SELECT *FROM table_name;

            Here SELECT and FROM are the keywords .
*/
SELECT name,marks FROM students ;
 /* 
     Above query will return the data table only with the records of name and marks columns.

     Syntax:  SELECT column_1, column_2,....,column_n FROM table_name;
*/
SELECT name,marks FROM students where marks>85;
/*

Above query will return the data table only with the records of name and marks columns having marks greater than 85.

 Syntax: SELECT column_1, column_2,....,column_n FROM table_name where condition1,condition2,..,condition_n;
        -here Where is a clause used to define the condition in the query 
        -other clauses are :
                      1.Order by
                      2.And
                      3.Or
                      4.NOT
                     
*/
