select *from products ORDER BY price;

select *from products ORDER BY price DESC;
select *from products ORDER BY price ASC;
select *from products ORDER BY name ASC;
select *from products ORDER BY name DESC;
select *from products ORDER BY price,weight;
select *from products ORDER BY price,weight DESC;
select *from products ORDER BY price DESC,weight ASC;
select *from products OFFSET 40;
select *from users OFFSET 40;
select *from orders OFFSET 40;

select *from orders  LIMIT 30;
select *from products order by price   LIMIT 5; 
least expensive products
select *from products order by price DESC   LIMIT 5;
most expensive products

select *from products order by price DESC   LIMIT 5 OFFSET 5;
