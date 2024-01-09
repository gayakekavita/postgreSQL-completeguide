heap or heap file:
 the file that contains all the data(rows) of our table.


Tuple:
  a single row is called as tuple
  also called as item.


Page:
   heap file is divided into many different blocks .
   each page/block stores the number of rows.



--for creating an index on any column syntax
   CREATE INDEX ON table_name(column_name);

   ex:
   CREATE INDEX ON users(username);

--for giving name to  index :
   CREATE INDEX username_index  ON users (username);


--for droping the index:
   DROP INDEX index_name;
  ex:
    DROP INDEX username_index;

-in the database sometimes creating index on the columns of different different table will increase the performace of the query fetching.
-it reduces the query execution time.
-but in real world database scenario it is not always efficient.
-we do not have to create index on primary key column because index for this columns are already exists by defalult.
-we do not have to create index on the columns which has unique  constraints because index for this columns are already exists by defalult.

--to know whether the particular column has index or not
  select relname,relkind FROM pg_class WHERE relkind='i';

 run above query it will return the column names with key postfix which has index.
  
