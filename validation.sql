--Row level validation three ways.
1.Is a given value defined?
2.Is a value unique in its column.
3.Is a value >,<,>=,<= ,= some other value 

--create table
CREATE TABLE products(
id SERIAL PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
price INTEGER,
weight INTEGER);

--insert values 
INSERT INTO products(name,department,price,weight)
VALUES('shirt','clothes',20,1),
      ('spoon','pots',45,2);


--see all rows
select *from products;



--here we inserting values without price value in the database
INSERT INTO products (name,department,weight)
VALUES ('oil','kitchen',7);

mandatory fields are 
1.name
2.department
3.price
4.weight
 but query executed suceessfully.
at the place of price above query will store null value.

So avoid this
  1.we apply null constraints on each field.
  2.Default field 

ALTER TABLE products ALTER COLUMN price SET NOT NULL

--returns error
column "price" of relation "products" contains null values 

to solve above error we write below query
UPDATE products set price=878 WHERE price IS NULL;
or
UPDATE products set price=878 WHERE price =NULL;

-- Applying null constraints on all the column of products table 
ALTER TABLE products ALTER COLUMN price SET NOT NULL,ALTER COLUMN weight SET NOT NULL
,ALTER COLUMN name SET NOT NULL,ALTER COLUMN department SET NOT NULL;

by applying null constraints we cannot insert empty values into column.
we cannot leave the column value field empty.
if we try to insert null values in it it will return error of null constraints.


--Default Field
ALTER TABLE products ALTER column price SET DEFAULT 888;

here if we do not provide value of price it does not return any error .
  instead of that it assign value of 888 to the price field.

--unique constraints

  ALTER TABLE products ADD UNIQUE(name);
by applying unique constraints we cannot insert duplicate values into name column.

  --droping constraits
  ALTER TABLE products DROP CONSTRAINT products_name_key;
--multiple column unique constraints
ALTER TABLE products ADD UNIQUE(name,department);

--validation check 
ALTER TABLE products ADD CHECK(price>0);

INSERT INTO products(name,department,price,weight)
VALUES('shirt','clothes',-20,1),
      ('spoon','pots',-45,2);
this query will return error because we have set validation check such that price should be >0 where -20,-45 are less than 0.

ALTER TABLE products ADD CHECK(weight>0);
here value of weight column should be greater than 0.


--adding check for timestamp
  here we are creating a table called as 'orders'.
CREATE TABLE orders (
id SERIAL PRIMARY KEY,
name VARCHAR(50),
created_at TIMESTAMP ,
est_delivery TIMESTAMP,
CHECK(created_at<est_delivery));

CHECK states that created_at value should be always less than est_delivery.
here we insert values of est_delivery after the created_at values.

  --We add validation here
    1. At database level
    2.At web server using different languages.
