-- USE pizza_db;

-- SELECT * FROM 	pizza_sales;

-- SELECT 
-- ROUND(SUM(total_price),2) AS Total_Revenue
-- FROM pizza_sales;

-- SELECT 
-- ROUND (
-- SUM(total_price) / COUNT( DISTINCT order_id), 2) AS AVERAGE_ORDER_VALUE
-- FROM pizza_sales;

-- SELECT 
-- SUM(quantity) AS TOTAL_PIZZA_SOLD
-- FROM pizza_sales;

-- SELECT 
-- COUNT( DISTINCT ORDER_ID ) AS TOTAL_ORDERS
-- FROM pizza_sales;

-- SELECT 
-- ROUND(SUM(quantity) / COUNT(DISTINCT order_id),2) AS AVERAGE_PIZZA_PRE_ORDER
-- FROM pizza_sales;

-- SELECT 
--     DAYNAME(order_date) AS day_name,
--     COUNT(DISTINCT order_id) AS total_orders
-- FROM pizza_sales
-- GROUP BY day_name
-- ORDER BY FIELD(day_name,
--     'Monday',
--     'Tuesday',
--     'Wednesday',
--     'Thursday',
--     'Friday',
--     'Saturday',
--     'Sunday');	

-- SELECT 
--     HOUR(order_time) AS order_hour,
--     COUNT(DISTINCT order_id) AS total_orders
-- FROM pizza_sales
-- GROUP BY order_hour
-- ORDER BY order_hour;

-- SELECT
--     pizza_category,
--     ROUND(SUM(total_price), 2) AS total_sales,
--     ROUND(
--         SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales),
--         2
--     ) AS percentage_of_sales
-- FROM pizza_sales
-- GROUP BY pizza_category
-- ORDER BY percentage_of_sales DESC;

-- SELECT
--     pizza_size,
--     ROUND(SUM(total_price), 2) AS total_sales,
--     ROUND(
--         SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales),
--         2
--     ) AS percentage_of_sales
-- FROM pizza_sales
-- GROUP BY pizza_size
-- ORDER BY percentage_of_sales DESC;

-- SELECT
--     pizza_category,
--     SUM(quantity) AS total_pizzas_sold
-- FROM pizza_sales
-- GROUP BY pizza_category
-- ORDER BY total_pizzas_sold DESC;

-- SELECT
--     pizza_name,
--     ROUND(SUM(total_price), 2) AS total_revenue
-- FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY total_revenue DESC
-- LIMIT 5;

-- SELECT
--     pizza_name,
--     ROUND(SUM(total_price), 2) AS total_revenue
-- FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY total_revenue ASC
-- LIMIT 5;