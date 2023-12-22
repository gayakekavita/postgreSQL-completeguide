select name,country from cities where area>20000;
/* where clause is used to set some conditions while retrieving the records 
    above query will return the records having area greater than 20000 .
     Query includes: 
         1. 'name' and 'country' are the columns of the cities .
         2. 'cities' name of the table.
         3. 'area' is also column of the cities table.
         4. 'where' is a keyword also it is a clause .

    Syntax: SELECT column1,column2,...,column_n FROM table_name WHERE conditions;

*/

/*
     different form of queries with 'where clause'  
*/
/*____________________________________________________________________________________________________________________________________________________________
  In below queries we are using comparision operators with 'where' 
   1. '='  (Equal operator)
   2.'<'   (Less than operator)
   3.'>'   (Greater than )
   4.'<='  (Less than or equal to)
   5.'>='  (Greater than or equal to)
   6.'!='  (Not equal to)
   7. 'IN'  (if the given value is present in records it gives respective data)
   8.'NOT IN'  (if the given value is not present in records it gives respective data. Exactly opposite to 'IN')
   9. 'BETWEEN' (it defines range )

  Also we can add multiple conditions in the query by using below operators:
      1. 'AND' (both conditions should be satisfied)
      2. 'OR' (one of the condition is satisfied it returns data OR if the all conditions satisfied still it returns the data )
    
*/
select name,country from cities where country='india';

select name,country from cities where area<20000;

select name,country from cities where area<=20000;

select name,country from cities where area>=20000;

select name,country from cities where area !=20000;


select name,country from cities where area BETWEEN 20000 AND 40000;

select name,country from cities where country IN('india');


select name,country from cities where country NOT IN('india');

select name,country from cities where country NOT IN('china','us');

select name,country from cities where country NOT IN('china','us') AND name='nashik';

select name,country from cities where country NOT IN('china','us') OR name='nashik';


SELECT name , population/area AS population_density FROM cities where population/area>5000;



/*________________________________________________________________________________________________________________________________________________________________________
update query syntax:
UPDATE table_name SET column_to_be_updated='new_value' WHERE conditions;
Below query includes:
        1.UPDATE is a keyword used for updation of a column
        2.'cities' name of the table
        3.'SET' is a keyword used for setting the value.
        4. 'WHERE' is a keyword or we can say that clause .
        5. 'population' is column name of the cities table.
        6.'name' is the column name of the cities table.
*/

UPDATE  cities set population=89764 where name='kavitri';
/*________________________________________________________________________________________________________________________________________________________________________
delete  query syntax:
DELETE FROM table_name WHERE conditions;
Below query includes:
        1.'cities' name of the table
        2.'FROM' is a keyword
        3.'DELETE' is a keyword
        4. 'WHERE' is a keyword or we can say that clause .
        5.'name' is the column name of the cities table.
*/
DELETE FROM cities where name='pune';
