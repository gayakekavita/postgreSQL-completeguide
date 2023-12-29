select user_id, AVG(id) from comments GROUP BY user_id;
-- Above query firstly create group of user_id column of comments and return average  of id associated with every user_id.

/*
"user_id" |	"avg"
--------------------------------
5       	| 8.3333333333333333
4       	| 7.3333333333333333
2	        | 6.6666666666666667
1       	|11.3333333333333333

*/


select user_id, AVG(id) from photos GROUP BY user_id;
-- Above query  firstly  create group of unique user_id and then it returns average of all id's associated to each and every unique id's.
/*

"user_id"|	"avg"
NULL     |   13.0000000000000000
3       	|   5.5000000000000000
5       	|   9.5000000000000000
4        |   7.5000000000000000
2       	|   7.5000000000000000
1       	|   1.5000000000000000

*/


select photo_id, AVG(id) from comments GROUP BY photo_id;
-- Above query  firstly  create group of unique photo_id and then it returns average of all id's associated to each and every unique photo_id's.
/*
"photo_id"	"avg"
3	    12.0000000000000000
5	    16.0000000000000000
4	    15.0000000000000000
2	    2.5000000000000000
1	    7.0000000000000000
*/

-- Below query  firstly  create group of unique user_id and then it returns maximum of all id's associated to each and every unique  user_id's.
select user_id , MAX(id) from comments GROUP BY user_id;
/*
"user_id"	"max"
3	          16
5	          14
4	          13
2	          11
1	          15

*/


-- Below query  firstly  create group of unique user_id and then it returns maximum  of all id's associated to each and every unique user_id's.
select user_id , MAX(id) from photos GROUP BY user_id;

-- Below query  firstly  create group of unique photo_id and then it returns maximum of all id's associated to each and every unique  photo_id's.
select photo_id , MAX(id) from comments GROUP BY photo_id;

-- Below query  firstly  create group of unique user_id and then it returns minimum of all id's associated to each and every unique  user_id's.
select user_id , MIN(id) from photos GROUP BY user_id;

-- Below query  firstly  create group of unique photo_id and then it returns minimum of all id's associated to each photo_id.
select photo_id , MIN(id) from comments GROUP BY photo_id;

-- Below query  firstly  create group of unique user_id  from 'comments' table and then it returns minimum of all id's associated to each user_id.
select user_id , MIN(id) from comments GROUP BY user_id;

--Below query firstly create group of unique photo_id from 'comments' table and then it returns the count of all the recods associated with each photo_id .
select photo_id , COUNT(id) from comments GROUP BY photo_id;

--Below query firstly create group of unique user_id from 'comments' table and then it returns the count of all the recods associated with each user_id .
select user_id , COUNT(id) from comments GROUP BY user_id;

--Below query firstly create group of unique user_id from 'photos' table and then it returns the count of all the recods associated with each user_id .
select user_id , COUNT(id) from photos GROUP BY user_id;

--Below query firstly create group of unique user_id from 'photos' table and then it returns the sum of all the id's associated with each user_id .
select user_id , SUM(id) from photos GROUP BY user_id;

--Below query firstly create group of unique user_id from 'comments' table and then it returns the SUM of all the id's associated with each user_id .
select user_id , SUM(id) from comments GROUP BY user_id;

--Below query firstly create group of unique photo_id from 'comments' table and then it returns the SUM of all the id's associated with each photo_id .
select photo_id , SUM(id) from comments GROUP BY photo_id;

--Below query firstly create group of unique photo_id from 'comments' table and then it returns the count of all the comment associated with each photo_id .
select photo_id , COUNT(comment) from comments GROUP BY photo_id;

--Below query firstly create group of unique user_id from 'comments' table and then it returns the count of all the comment  associated with each user_id .
select user_id , COUNT(comment) from comments GROUP BY user_id;


--Below query firstly create group of unique user_id from 'comments' table and rename this group AS 'no_of_comments', then it returns the count of all the recods associated with each user_id .
select user_id , COUNT(comment) AS no_of_comments from comments GROUP BY user_id;


--count fuction does not count the record which has null value.

select COUNT(*) from photos;
select COUNT(*) from comments;
select COUNT(*) from users;

--COUNT(*) returns the count of rows present in the specified table.

--Below query firsly create group of unique user_id's from 'comments' table and then it returns the count of all the records associated to each user_id.
select user_id, COUNT(*) from comments GROUP BY user_id;

--Below query firstly create group of unique photo_id  from 'comments' table  then it returns the count of all the records associated to each photo_id.
select photo_id, COUNT(*) from comments GROUP BY photo_id;

--Below query will create group of unique user_id's from 'photos' table then it returns count of all records associated to each user_id.
select user_id, COUNT(*) from photos GROUP BY user_id;

--Number of comments for each individual photo 
select photo_id , COUNT(comment) AS number_of_comments_per_photo from comments GROUP BY photo_id;
