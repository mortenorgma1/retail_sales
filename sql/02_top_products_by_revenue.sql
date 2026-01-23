/*
Top products by revenue: ranks products based on total revenue generated and returns the highest earning items (optionally per month/category).
*/

select 
p.product_name,
round(sum(oi.quantity * p.price),2) as total_revenue
from order_items oi
join products p
on oi.product_id = p.product_id
group by p.product_name
order by total_revenue desc

