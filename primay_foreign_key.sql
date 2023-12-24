/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    Creating table users with attrinutes below:
           1.id 
               :: id is the primary key of  users table and it is auto incremented because we specified it as 'SERIAL'.
                  It is also one of the column of users table.
           2.name
               :: It is also one of the column of users table.
*/
  

CREATE TABLE users(
 id SERIAL PRIMARY KEY ,
 name VARCHAR(50)
);



/* Inserting values into users table */
INSERT INTO users(name)values('kavya');
INSERT INTO users(name)values('mukesh'),('jayesh'),('priya');



/*checking the records present in the 'users' table. */
SElECT *FROM users;









/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    Creating table 'photos' with attrinutes below:
           1.id 
               :: id is the primary key of  users table and it is auto incremented because we specified it as 'SERIAL'.
                  It is also one of the column of photos table.
           2.url
               :: It is also one of the column of photos table.
           3.user_id
               ::  It is also one of the column of photos table.
                   It is a foreign key which refers to the 'users' table's id column.
                   This key or column links photos and users table using foreign key concept.
*/
CREATE TABLE photos(
 photo_id SERIAL PRIMARY KEY,
 url VARCHAR(200),
 user_id INTEGER references users(id)
);


/* Inserting values into photos table */
INSERT INTO photos(url,user_id)VALUES ('https::/my.png',3);

/*checking the records present in the 'photos' table. */
SELECT *from photos;
