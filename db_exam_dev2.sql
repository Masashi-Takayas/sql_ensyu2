
create table sales_old
(sales_id int primary key,
order_date date NULL,
customer_id int not null references customer(customer_id),
amount decimal NULL);

insert into sales_old values(6,'2018/09/02',2,20000),(7,'2018/09/02',1,5000),(8,'2018/09/02',3,6000),(9,'2018/09/05',1,3000);

INSERT INTO sales
SELECT * FROM sales_old;

drop table sales_old;

SELECT sales_id,order_date,
  (CASE WHEN order_date < '2018/10/01' THEN 'Z'   
        ELSE ' ' END) AS is_old 
FROM sales order by order_date;

SELECT customer_id || customer_name AS customer_id_name 
FROM customer order by customer_id;

SELECT * FROM sales where customer_id = 1
ORDER BY order_date desc LIMIT 2;

select order_date,sum_amount where having min(order_date) 

select order_date,sum(amount) sum_amount
from sales
where order_date = (SELECT min(order_date)from sales)group by order_date;





