select name,price FROM products where price> (select MAX(price) from products where department='Home');
select  name, price/weight AS ratio from products;

select name,ratio FROM(select  name, price/weight AS ratio from products)AS p where ratio>5;

Return value 
SELECT *FROM(SELECT MAX(price) from products) AS p;--subquery 
or
SELECT MAX(price) from products;--simple query



SELECT AVG(order_count) FROM(SELECT user_id ,COUNT(*) AS order_count FROM orders GROUP BY user_id)AS p;
SELECT AVG(p.order_count) FROM(SELECT user_id ,COUNT(*) AS order_count FROM orders GROUP BY user_id)AS p;
