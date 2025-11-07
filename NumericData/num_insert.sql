CREATE TABLE "sales"(
    "sale_id" INTEGER UNIQUE,
    "product" TEXT NOT NULL,
    "category" TEXT NOT NULL, 
    "price" FLOAT, 
    "quantity" INTEGER, 
    "discount" INTEGER, 
    "total_sales" FLOAT, 
    "sale_date" DATETIME
);


INSERT OR IGNORE INTO sales(sale_id, product, category, price, quantity, discount, total_sales, sale_date)
VALUES
    (1, 'Laptop', 'Electronics', 800.50, 5, 50, 3952.50, 2024-01-10),
    (2, 'Smartphone', 'Electronics', 500.00, 8, 40, 3960.00, 2024-01-12),
    (3, 'Headphones', 'Accessories', 150.75, 12, 20, 1769.00, 2024-01-15), 
    (4, 'TV', 'Electronics', 1200.00, 3, 100, 3500.00, 2024-01-18),
    (5, 'Chair', 'Furniture', 120.00, 10, 10, 1190.00, 2024-01-22),
    (6, 'Table', 'Furniture', 200.00, 7, 15, 1375.00, 2024-01-25);



CREATE TABLE "orders"(
'order_id' PRIMARY KEY, 
'customer_name' VARCHAR(50), 
'order_date' DATE, 
'delivery_date' DATE NULL, 
'total_amount' DECIMAL(10, 2), 
'status' VARCHAR(20)
);



INSERT OR IGNORE INTO "onrders" (order_id, customer_name, order_date,
delivery_date, total_amount, status) VALUES
(1, 'Alice', '2024-01-05', '2024-01-10', 500.00, 'Delivered'),
(2, 'Bob', '2024-02-12', '2024-02-17', 1200.00, 'Delivered'),
(3, 'Charlie', '2024-03-20', '2024-03-25', 750.50, 'Pending'),
(4, 'David', '2024-04-05', NULL, 300.00, 'Processing'),
(5, 'Emma', '2024-05-15', '2024-05-20', 950.00, 'Delivered'),
(6, 'Frank', '2024-06-01', NULL, 450.00, 'Pending');