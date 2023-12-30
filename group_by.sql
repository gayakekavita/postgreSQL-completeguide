select paid, COUNT(paid) from orders GROUP BY paid;
OR 

select paid, COUNT(*) from orders GROUP BY paid;
