select name,price FROM products where price> (select MAX(price) from products where department='Home');
