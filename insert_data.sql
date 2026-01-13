/*
Data Inserts: Retail Sales Sample Data

This file contains sample data used to populate the retail sales database.
The data is intentionally small but realistic, allowing queries to be easily
validated and results to be manually checked.

Notes:
- Primary keys use SERIAL and are auto-generated
- Insert statements do not manually supply IDs
- Foreign key relationships assume inserts are executed in order

This data supports testing and demonstration of analytical SQL queries.
*/


INSERT INTO customers (first_name, last_name, city) VALUES
('Anna', 'Smith', 'Berlin'),
('John', 'Brown', 'London'),
('Maria', 'Garcia', 'Madrid'),
('Luca', 'Rossi', 'Rome'),
('Emma', 'Wilson', 'Paris');

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 900.00),
('Headphones', 'Electronics', 120.00),
('Office Chair', 'Furniture', 250.00),
('Desk Lamp', 'Furniture', 45.00),
('Notebook', 'Stationery', 5.00);

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2023-01-10'),
(2, '2023-01-15'),
(3, '2023-02-02'),
(1, '2023-02-20'),
(4, '2023-03-05'),
(5, '2023-03-18');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),   -- Laptop
(1, 2, 2),   -- Headphones
(2, 3, 1),   -- Office Chair
(3, 5, 10),  -- Notebooks
(4, 1, 1),   -- Laptop
(4, 4, 2),   -- Desk Lamp
(5, 2, 1),   -- Headphones
(6, 3, 1),   -- Office Chair
(6, 5, 20);  -- Notebooks


