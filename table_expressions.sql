SELECT username,tags.created_at FROM users JOIN (
  SELECT user_id,created_id FROM captions_tag 
  UNION ALL
  SELECT  user_id,created_at FROM photo_tag
  ) AS tags ON tags.user_id=users.id
WHERE tags.created_at< '2022-01-07';


--In the above query firstly it will union two tables captions_tag and photo_tag based on user_id of resultant table should be equal to users id .
-- then it will store the rows  into subquery result having the date of tagging < 2022-01-07 of the resultant table 'tags'.
--then it will select username, created_at columns for display from users table and JOIN them with the subquery result.
--That's how result will select username from users table and created_at from the tags table which is resulted after the UNION operation and some conditions will satisfied.



--we can make above query simple by doing some table operations.
WITH tags AS(
   SELECT user_id,created_id FROM captions_tag 
  UNION ALL
  SELECT  user_id,created_at FROM photo_tag
);

SELECT username,tags.created_at FROM users JOIN tags ON tags.user_id=users.id WHERE tags.created_at<'2022-01-07';


--query tunning:
EXPLAIN WITH tags AS(
   SELECT user_id,created_id FROM captions_tag 
  UNION ALL
  SELECT  user_id,created_at FROM photo_tag
);


EXPLAIN ANALYSIS WITH tags AS(
   SELECT user_id,created_id FROM captions_tag 
  UNION ALL
  SELECT  user_id,created_at FROM photo_tag
);
