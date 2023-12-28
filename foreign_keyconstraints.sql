INSERT INTO photos(url,user_id) VALUES('https://myphoto3.png',988);
ERROR:  Key (user_id)=(988) is not present in table "users".insert or update on table "photos" violates foreign key constraint "photos_user_id_fkey" 

ERROR:  insert or update on table "photos" violates foreign key constraint "photos_user_id_fkey"
SQL state: 23503
Detail: Key (user_id)=(988) is not present in table "users".


INSERT INTO photos(url,user_id) VALUES('https://myphoto5',NULL);


ON DELETE RESTRICT (DEFAULT)
DELETE from users where id=2;

ERROR:  Key (id)=(2) is still referenced from table "photos".update or delete on table "users" violates foreign key constraint "photos_user_id_fkey" on table "photos" 

ERROR:  update or delete on table "users" violates foreign key constraint "photos_user_id_fkey" on table "photos"
SQL state: 23503
Detail: Key (id)=(2) is still referenced from table "photos".



DROP TABLE photos;

CREATE TABLE photos (
id SERIAL PRIMARY KEY,
url VARCHAR(200),
user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);
 
INSERT INTO photos (url, user_id)
VALUES
('http:/one.jpg', 4),
('http:/two.jpg', 1),
('http:/25.jpg', 1),
('http:/36.jpg', 1),
('http:/754.jpg', 2),
('http:/35.jpg', 3),
('http:/256.jpg', 4);


delete from users where id=1;

SELECT *FROM photos;



DROP TABLE photos;
CREATE TABLE photos (
id SERIAL PRIMARY KEY,
url VARCHAR(200),
user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);
 
INSERT INTO photos (url, user_id)
VALUES
('http:/one.jpg', 4),

('http:/754.jpg', 2),
('http:/35.jpg', 3),
('http:/256.jpg', 4);
delete from users where id=4;
SELECT *FROM photos;
