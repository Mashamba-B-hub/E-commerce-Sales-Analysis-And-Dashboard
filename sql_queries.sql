CREATE TABLE cleaned_orders(
    order_id TEXT,
	customer_name TEXT, 
	email TEXT, 
	product TEXT, 
	category TEXT,
	price NUMERIC,
	quantity INTEGER,
	order_date DATE,
	shipping_status TEXT,
	country TEXT
);



SELECT *
FROM cleaned_orders;



SELECT
   country,
   SUM(price * quantity) AS total_sales
FROM cleaned_orders
GROUP BY country
ORDER BY total_sales DESC;


SELECT
   product,
   SUM(quantity) AS total_units_sold
FROM cleaned_orders
GROUP BY product
ORDER BY total_units_sold DESC;


SELECT
     SUM(price * quantity) AS total_revenue
	 FROM cleaned_orders;


SELECT
   DATE_TRUNC('month', order_date) AS month,
   SUM(price * quantity) AS monthly_sales
FROM cleaned_orders
GROUP BY month
ORDER BY month;	 


SELECT 
   country,
   COUNT(*) AS total_orders
FROM cleaned_orders
GROUP BY country
ORDER BY total_orders DESC;