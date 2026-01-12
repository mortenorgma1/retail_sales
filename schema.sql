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