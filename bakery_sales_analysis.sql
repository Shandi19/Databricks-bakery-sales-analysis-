-- Create a reproducible, session-scoped dataset.
CREATE OR REPLACE TEMP VIEW bakery_sales
  (sale_id, product_name, store_location, quantity, unit_price) AS
VALUES
  (1,  'Chocolate Chip Cookie', 'Downtown',  4, 3.50),
  (2,  'Croissant',             'Downtown',  6, 4.00),
  (3,  'Blueberry Muffin',      'Downtown',  3, 4.50),
  (4,  'Sourdough Loaf',        'Downtown',  1, 8.00),
  (5,  'Chocolate Chip Cookie', 'Riverside', 3, 3.50),
  (6,  'Croissant',             'Riverside', 2, 4.00),
  (7,  'Blueberry Muffin',      'Riverside', 5, 4.50),
  (8,  'Sourdough Loaf',        'Riverside', 4, 8.00),
  (9,  'Chocolate Chip Cookie', 'Uptown',    5, 3.50),
  (10, 'Croissant',             'Uptown',    4, 4.00),
  (11, 'Blueberry Muffin',      'Uptown',    2, 4.50),
  (12, 'Sourdough Loaf',        'Uptown',    2, 8.00);

-- Verify the setup.
SELECT COUNT(*) AS row_count
FROM bakery_sales;

-- Preview sales rows.
SELECT
  sale_id,
  product_name,
  store_location,
  quantity,
  unit_price
FROM bakery_sales
ORDER BY sale_id
LIMIT 10;

-- Rank individual Downtown transaction lines.
SELECT
  sale_id,
  product_name,
  quantity,
  unit_price,
  quantity * unit_price AS line_revenue
FROM bakery_sales
WHERE store_location = 'Downtown'
ORDER BY quantity * unit_price DESC;

-- Summarize performance by product.
SELECT
  product_name,
  SUM(quantity) AS units_sold,
  SUM(quantity * unit_price) AS revenue,
  COUNT(*) AS transaction_lines
FROM bakery_sales
GROUP BY product_name
ORDER BY SUM(quantity * unit_price) DESC;

-- Summarize revenue by store location for the bar visualization.
SELECT
  store_location,
  SUM(quantity * unit_price) AS revenue
FROM bakery_sales
GROUP BY store_location
ORDER BY SUM(quantity * unit_price) DESC;


