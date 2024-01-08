--here we are creating a users table with the fields
        id
        username
        email
        password
        phone
        bio
        status
        avtar
        created_at
        updated-at
--  here we are applying check function on phone and email field.

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

--CHECK(COALESCE(phone,email) IS NOT NULL)   this statement states that we have to provide atleast value of phone or email field . we can provide values of both of the column but we cannot 
-- keep empty both of the column . we should provide value for at least one of the  filed.
