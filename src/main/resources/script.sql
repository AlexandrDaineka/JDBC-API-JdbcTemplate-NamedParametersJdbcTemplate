select o.product_name
from ORDERS o
         join (select *
               from CUSTOMERS
               where upper(name) = :name) c
              on o.customer_id = c.id;