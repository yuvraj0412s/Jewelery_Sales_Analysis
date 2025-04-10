SELECT * FROM jewelry_sales;

-- a. SELECT, WHERE, ORDER BY, GROUP BY
-- Total purchases by category, ordered by count
SELECT category, COUNT(*) AS total_purchases
FROM jewelry_sales
WHERE is_purchase = 1
GROUP BY category
ORDER BY total_purchases DESC;

-- CREATE table users
CREATE TABLE users (
    user_id VARCHAR(50) PRIMARY KEY,
    user_name VARCHAR(100),
    user_email VARCHAR(100)
);
-- insert values in users
INSERT INTO users (user_id, user_name, user_email) VALUES
('U001', 'Alice Smith', 'alice@example.com'),
('U002', 'Bob Johnson', 'bob@example.com'),
('U003', 'Charlie Lee', 'charlie@example.com');

-- CREATE table products
CREATE TABLE products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(100),
    brand VARCHAR(50)
);

-- insert values in products
INSERT INTO products (product_id, product_name, brand) VALUES
('P001', 'Diamond Ring', 'Tiffany'),
('P002', 'Gold Necklace', 'Cartier'),
('P003', 'Silver Bracelet', 'Pandora');

-- b. joins
-- inner join
SELECT js.user_id, u.user_name, js.category, js.price
FROM jewelry_sales js
INNER JOIN users u ON js.user_id = u.user_id
WHERE js.is_purchase = 1;

-- left join
SELECT js.product_id, js.category, js.price, p.product_name, p.brand
FROM jewelry_sales js
LEFT JOIN products p ON js.product_id = p.product_id;

-- right join
SELECT p.product_name, js.price, js.category
FROM products p
RIGHT JOIN jewelry_sales js ON js.product_id = p.product_id;

-- c. Subquery: Find all purchases above the average price
SELECT *
FROM jewelry_sales
WHERE price > (
    SELECT AVG(price)
    FROM jewelry_sales
    WHERE is_purchase = 1
)
AND is_purchase = 1;

-- d. Aggregate Functions (SUM, AVG)
-- Avg price by gem
SELECT gem, AVG(price) AS avg_price
FROM jewelry_sales
WHERE gem IS NOT NULL
GROUP BY gem;

-- Total revenue from purchases
SELECT SUM(price * quantity) AS total_revenue
FROM jewelry_sales
WHERE is_purchase = 1;

-- Count total items sold per material
SELECT material, SUM(quantity) AS total_items_sold
FROM jewelry_sales
GROUP BY material
ORDER BY total_items_sold DESC;

-- e. Create Views for analysis
-- View for category-wise sales summary
CREATE VIEW category_sales_summary AS
SELECT category, COUNT(*) AS total_sales, AVG(price) AS avg_price
FROM jewelry_sales
WHERE is_purchase = 1
GROUP BY category;

-- View for gem popularity
CREATE VIEW gem_popularity AS
SELECT gem, COUNT(*) AS gem_count
FROM jewelry_sales
GROUP BY gem
ORDER BY gem_count DESC;

-- f. Optimize with Indexes
-- Index on user_id
CREATE INDEX idx_user_id ON jewelry_sales(user_id);

-- Index on product_id for JOIN performance
CREATE INDEX idx_product_id ON jewelry_sales(product_id);

-- Index on category for filtering
CREATE INDEX idx_category ON jewelry_sales(category);
