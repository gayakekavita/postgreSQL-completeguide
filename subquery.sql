select name,price FROM products where price> (select MAX(price) from products where department='Home');
select  name, price/weight AS ratio from products;

select name,ratio FROM(select  name, price/weight AS ratio from products)AS p where ratio>5;

Return value 
SELECT *FROM(SELECT MAX(price) from products) AS p;--subquery 
or
SELECT MAX(price) from products;--simple query



SELECT AVG(order_count) FROM(SELECT user_id ,COUNT(*) AS order_count FROM orders GROUP BY user_id)AS p;
SELECT AVG(p.order_count) FROM(SELECT user_id ,COUNT(*) AS order_count FROM orders GROUP BY user_id)AS p;


select name,department FROM products where department NOT IN(select department FROM products where price<100);
select name,price FROM products where price> ALL(select price FROM products where department='Industrial');
select name,price FROM products where price> ALL(select price FROM products where department='Industrial');
select name,price FROM products where price> SOME(select price FROM products where department='Industrial');
select name,price,department FROM products where price> SOME(select price FROM products where department='Industrial');
select name,price, department FROM products as P1 where price=(select MAX(price) FROM products AS p2 where p2.department=P1.department);
select p1.name ,(select COUNT(*)from orders as o1 where o1.product_id=p1.id)AS num_of_orders   FROM products as p1;
