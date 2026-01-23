-- Monthly revenue summary: aggregates orders by month to calculate total orders, total revenue, average order value, and month-over-month revenue change.


select 
date_trunc('month', o.order_date)::date as month,
round(sum(oi.quantity * p.price),2) as total_revenue
from orders o
join order_items oi
on o.order_id = oi.order_id
join products p
on oi.product_id = p.product_id
group by month
order by month

