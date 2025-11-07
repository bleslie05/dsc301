-- 1. Calculate the total revenue (price * quantity) for each sale.

SELECT sale_id, product, (price * quantity) AS total_revenue FROM sales;


-- 2. Find the discounted price for each product after applying the discount.

SELECT sale_id, product, (price - discount) AS total_discount FROM sales; 

-- 3. Retrieve all sales where total sales amount is greater than $3000.

SELECT * FROM Sales WHERE total_sales > 3000;

-- 4. Find the most expensive product by price.


SELECT product, price FROM Sales WHERE price = (SELECT MAX(price) FROM Sales);





SELECT sale_id, product, FROM sales WHERE ()