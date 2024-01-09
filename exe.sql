select *from users ORDER BY id DESC LIMIT 3;
--Above query will return the records with the three highest id rows.

select username, captions from users JOIN posts ON posts.user_id=users.id WHERE users.id=200;
--above query return the row having the user id of 200 and the related captions on the post associated with the 200 id.


select username,COUNT(*) from users JOIN likes ON likes.user_id=users.id GROUP BY username;
--above query will returns the number of likes per user.

SHOW data_directory;
--above query will return the location where the postgre is installed.

select oid,datname from pg_database;
--above query will return all the database id's and names which are created inside pg_database.

