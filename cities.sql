
/* 
Let's create new table called as cities 
*/
CREATE TABLE cities(
	name VARCHAR(50),
	country VARCHAR(50),
	population INTEGER, 
	area INTEGER
);


/* 
   Here we are inserting values in it.
*/ 
INSERT INTO cities (country,population,area,name)VALUES('india',200000, 90988,'kavitri');



/*
  Here we are seeing the records present in the cities table 
*/
SELECT *FROM cities;



/* 
Inserting multiple values at a time 
*/
INSERT INTO cities (country,population,area,name)VALUES('india',2000000, 70988,'pune'),('india',400000, 44988,'nashik');


/*
  Here we are seeing the records present in the cities table 
*/
SELECT *FROM cities;


/*
    Here  we are generating new column with the name of 'population_density' the ratio of population/area 
*/
SELECT name , population/area AS population_density  FROM cities;
