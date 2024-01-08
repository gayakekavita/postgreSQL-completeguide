---users_table_check reference 
CREATE TABLE users
(
	 id SERIAL PRIMARY KEY,
	 created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	 updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	 bio VARCHAR(400),
	 username VARCHAR(50) NOT NULL,
	 email VARCHAR(50),
	 phone VARCHAR(50),
	 
	 password VARCHAR(50),
	 avtar VARCHAR(50),
	 status VARCHAR(50),
	 CHECK(COALESCE(phone,email) IS NOT NULL)
);
----------------------------------------------------------
--here we are creating a table 'post' with following fields 
   id
   created_at
   updated_at
   user_id
   lat(latitude)
   lng(longitude)
   caption
   url
  -------------------------
   

CREATE TABLE post
(
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	caption VARCHAR(200),
	url VARCHAR(200),
	lat REAL CHECK( NULL OR lat>=-90 AND lat<=90),
	lng REAL CHECK(NULL OR lng>=-180 AND lng<=180),
	user_id INTEGER NOT NULL REFERENCES users (id) ON DELETE CASCADE
	
);

--here we are applying checks on two fields 
     1. lat
     2.lng 
 --lat REAL CHECK( NULL OR lat>=-90 AND lat<=90):
         This statement state that value of lat field can be null it is ok .
        But if we are providing value for lat(latitude) field then it should be greater than or equal to -90 and less than or equal to 90.
       
	--lng REAL CHECK(NULL OR lng>=-180 AND lng<=180):
        This statement state that value of lng field can be null it is ok .
        But if we are providing value for lng(longitude) field then it should be greater than or equal to -180 and less than or equal to 180.
       
--user_id INTEGER NOT NULL REFERENCES users (id) ON DELETE CASCADE
   here we are applying not null as well as ON DELETE CASCADE constraints.
    not null constraints state that value of user_id cannot be null.
    ON DELETE CASCADE state that if user delete the account  then all the posts related to that user should be deleted .
    user_id is a foreign key which refers to the id column of users table.

  --- here we are creating the table 'comments' with the fields 
        id
        created_at
        updated_at
        comment
        user_id
        post_id
--------------------------------------------------------------
  CREATE TABLE comments 
(
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	comment VARCHAR(400),
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES post(id) ON DELETE CASCADE
);


   --here we are applying NOT NULL and ON DELETE CASCADE constraints on two fields:
     1.user_id
     2.post_id
     --	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE:
                  here we are applying not null as well as ON DELETE CASCADE constraints.
                 not null constraints state that value of user_id cannot be null.
                 ON DELETE CASCADE state that if user delete the account  then all the comments related to that user should be deleted .
                 user_id is a foreign key which refers to the id column of users table.
      --post_id INTEGER NOT NULL REFERENCES post(id) ON DELETE CASCADE:
                 here we are applying not null as well as ON DELETE CASCADE constraints.
                 not null constraints state that value of post_id cannot be null.
                 ON DELETE CASCADE state that if user delete the post  then all the comments related to that post  should be deleted .
                 post_id is a foreign key which refers to the id column of post table.


--------------------------------------------------------------------------------------
 --- here we are creating the table 'likes' with the fields 
        id
        created_at
        updated_at
        user_id
        post_id
        comment_id
  --------------------
CREATE TABLE likes
(
	id SERIAL PRIMARY KEY,
	user_id INTEGER NOT NULL REFERENCES users (id) ON DELETE CASCADE,
	post_id INTEGER REFERENCES post(id) ON DELETE CASCADE,
	comment_id INTEGER REFERENCES comments(id) ON DELETE CASCADE,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	CHECK(
		COALESCE((post_id)::BOOLEAN::INTEGER,0)+
		COALESCE((comment_id)::BOOLEAN::INTEGER,0)=1
	),
	UNIQUE(user_id,post_id,comment_id)
);
       

--here we are applying constraints on some fields :
     1. user_id:
             IT is a foreign key which referes to the 'users' table of column 'id'.
             NOT NULL constraints state that user_id cannot be null.
             ON DELETE CASCADE constraints state that when user delete the account then likes associated with that user should be deleted.
    2.post_id :
            IT is a foreign key which referes to 'id' column of the 'post' table.
             ON DELETE CASCADE constraints state that when user delete the post then likes associated with that post should be deleted.
    3.comment_id:
             IT is a foreign key which referes to 'id' column of the 'comments' table.
             ON DELETE CASCADE constraints state that when user delete the comment then likes associated with that comment should be deleted.
  --CHECK(
		COALESCE((post_id)::BOOLEAN::INTEGER,0)+
		COALESCE((comment_id)::BOOLEAN::INTEGER,0)=1
	),
       
       This check states that user can either like the post or comment at a time.

   -- UNIQUE(user_id,post_id,comment_id)::
          This constraints state that  a user can add likes on a post only once . they cannot like the post multiple times.
                                        a user can add likes on a comment only once . they cannot like the comment multiple times.



---------------------------------------------------------------------------------------------------------------------------------------
 --- here we are creating the table 'photo_tag' with the fields 
        id
        created_at
        updated_at
        user_id
        post_id
        x
        y
  --------------------
       CREATE TABLE photo_tag(
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES post(id) ON DELETE CASCADE,
	x INTEGER NOT NULL,
	y INTEGER NOT NULL,
	UNIQUE(user_id,post_id)
);


--here we are applying constraints on some fields :
     1. user_id:
             IT is a foreign key which referes to the 'users' table of column 'id'.
             NOT NULL constraints state that user_id cannot be null.
             ON DELETE CASCADE constraints state that when user delete the account then photo tags associated with that user should be deleted.
    2.post_id :
            IT is a foreign key which referes to 'id' column of the 'post' table.
            NOT NULL constraints state that post_id cannot be null.
             ON DELETE CASCADE constraints state that when user delete the post then tags associated with that post should be deleted.

      --UNIQUE(user_id,post_id):
          This statement state that we can tag a user for single  post only once.
         we cannot tag a user multiple times for the same post.


---------------------------------------------------------------------------------------------------------
--- here we are creating the table 'captions' with the fields 
        id
        created_at
        updated_at
        user_id
        post_id
       
  --------------------
CREATE TABLE captions(
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES post(id) ON DELETE CASCADE,
	UNIQUE(user_id,post_id)
);

   --here we are applying constraints on some fields :
     1. user_id:
             IT is a foreign key which referes to the 'users' table of column 'id'.
             NOT NULL constraints state that user_id cannot be null.
             ON DELETE CASCADE constraints state that when user delete the account captions associated with that user should be deleted.
    2.post_id :
            IT is a foreign key which referes to 'id' column of the 'post' table.
            NOT NULL constraints state that post_id cannot be null.
             ON DELETE CASCADE constraints state that when user delete the post then captions associated with that post should be deleted.
    --UNIQUE(user_id,post_id)::
         This statement state if any user mentioned a user multiple times even if in the database it is stored for the only once time .
         that means if we  added or mentioned any user in the post multiple times still user will get notify for only once .





-------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE hashtag
(
	 id SERIAL PRIMARY KEY,
	 created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	 title VARCHAR(50) NOT NULL UNIQUE
);

--HERE  title VARCHAR(50) NOT NULL UNIQUE state that the value for title(hashtag) should be provided .it cannot be null.
  -- UNIQUE constraints state that hashtag should be unique.




-------------------------------------------------------------------------------
CREATE TABLE hashtag_post(
	id SERIAL PRIMARY KEY,
	hashtag_id INTEGER NOT NULL REFERENCES hashtag(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES post(id) ON DELETE CASCADE,
	UNIQUE (hashtag_id,post_id)
);

  --here we are creating a table called as 'hashtag_post' which have to foreign keys
       hashtag_id 
       post_id 
      1.hashtag_id :
            it a a foregin key.
            it refers to the id column of hashtag table.
            NOT NULL constraints state that it cannot be null
            ON DELETE CASCADE state that when user delete the hashtag then post associated with that hashtag aslo deleted.
      2.post_id:
           it a a foregin key.
            it refers to the id column of post table.
            NOT NULL constraints state that it cannot be null
            ON DELETE CASCADE state that when user delete the post  then hashtag associated with that post  aslo deleted.




  -------------------------------------------------------------------------------
  CREATE TABLE followers(
	id SERIAL PRIMARY KEY,
	leader_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	follower_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	UNIQUE (leader_id,follower_id)
);

  -- leader_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE:
        state that if the user delete the account then followers associated with it listed in unfollow list.

  --	follower_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
           state that if the follower delete the account then status of following or followers changed to unfollowed.
          
        
          

            
