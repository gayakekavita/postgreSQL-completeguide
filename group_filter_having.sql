select photo_id ,COUNT(comment) FROM comments  WHERE photo_id<3 GROUP BY photo_id  HAVING COUNT(comment)>2  ;
--The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
/* 
  HAVING Syntax:: 

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

*/
