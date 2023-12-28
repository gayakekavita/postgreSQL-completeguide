CREATE TABLE users(
id SERIAL PRIMARY KEY,
username  VARCHAR(100));

CREATE TABLE photos(
id SERIAL PRIMARY KEY,
url  VARCHAR(100),
user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);


CREATE TABLE comments(
id SERIAL PRIMARY KEY,
comment  VARCHAR(100),
user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
photo_id INTEGER REFERENCES photos(id) ON DELETE CASCADE
);



INSERT INTO users(username)
VALUES('kavya'),
('sonal'),
('dipali'),
('deepti'),
('priya'),
('prita');

SELECT *FROM users;

INSERT INTO photos(url,user_id)
VALUES ('photo1.png',1),
		('photo2.png',1),
		('photo3.png',2),
		('photo4.png',2),
		('photo5.png',3),
		('photo6.png',3),
		('photo7.png',4),
		('photo8.png',4),
		('photo9.png',5),
		('photo10.png',5),
		('photo11.png',2),
		('photo12.png',2);

SELECT *FROM photos;



INSERT INTO comments(comment,user_id,photo_id)
VALUES ('it is nice',3,2)
        ,('rfrfffd fdvf f ddf',4,2)
		,('hdbvf fhjvbfv ',5,2)
		,('bchdv nfdjvb ',3,1)
		,('fnv  vfvn vmfnvm ',4,1)
		,('bvf jvb vjvn ',5,1)
		
		,('kkg vbh bcbc  gdvc',2,1)
		,('vbf jfv vfhvj ',1,1)
		,('fvb vvjv  jvbhvf ',1,3)
		,('bvj vbj jkv f',2,3)
		,('vjn kvmfn  shv sc b ',3,3)
		,('hfv bhvf bbibdv ',4,3)
		,('hvf jvjh jfj',5,3)
		
		,('hfbv v f vhb vjbhf',1,4)
		,('jbfv jvjf bj vj',3,5);

SELECT *FROM comments;

select comment, username from comments JOIN users ON users.id=comments.user_id;

select comment, url from comments JOIN photos ON photos.id=comments.photo_id;

Alternate forms of syntax:
   select comment, username from users JOIN comments ON users.id=comments.user_id;
   select comment, url from photos JOIN comments ON photos.id=comments.photo_id;

AS keyword::
   select comments.id AS comments_id , photos.id AS photos_id from photos JOIN comments ON photos.id=comments.photo_id;
   select comments.id AS comments_id , p.id AS photos_id from photos AS p JOIN comments ON p.id=comments.photo_id;

select comments.id AS comments_id , p.id AS photos_id from photos AS p JOIN comments ON p.id=comments.photo_id;


INSERT INTO  photos (url,user_id)
VALUES ('it is very nice',NULL);

select url,username FROM photos JOIN users ON users.id=photos.user_id;

does not include the comment which user_id is null.

four types of join:
1.inner join
2.left join
3.right join
4.full join

1.inner join(default join)
  select comment, username from comments JOIN users ON users.id=comments.user_id;

select comment, url from comments JOIN photos ON photos.id=comments.photo_id;
2.left join
select url,username FROM photos LEFT JOIN users ON users.id=photos.user_id;

3.Right join:
select url,username FROM photos RIGHT JOIN users ON users.id=photos.user_id;

4.full join:
select url,username FROM photos FULL JOIN users ON users.id=photos.user_id;



DOES ORDER MATTER??
select url,username FROM photos LEFT JOIN users ON users.id=photos.user_id;

select url,username FROM users LEFT JOIN photos ON users.id=photos.user_id;

these two queries give different results.




