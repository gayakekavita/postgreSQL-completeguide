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
