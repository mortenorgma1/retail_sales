/*
Schema: Retail Sales Database

This schema represents a simplified retail sales system used for analytical purposes.
It models customers placing orders, orders containing multiple products, and revenue
generated from product sales.

Tables included:
- customers: stores customer details
- products: stores product and pricing information
- orders: represents customer purchase events
- order_items: line-level order details used as the main fact table

The schema is designed to support common business analytics such as:
- revenue trends
- product performance
- category analysis
- customer spending behavior
*/


create table customers (
customer_id serial primary key, 
first_name text not null, 
last_name text not null, 
city text not null
)

create table products (
product_id serial primary key,
product_name text not null,
category text not null,
price numeric (10,2)
)

create table orders(
order_id serial primary key,
customer_id integer references customers(customer_id),
order_date date not null 
)

create table order_items(
order_item_id serial primary key,
order_id integer references orders(order_id),
product_id integer references products(product_id),
quantity integer not null

)
