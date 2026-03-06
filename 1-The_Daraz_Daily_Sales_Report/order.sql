CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    OrderDate TEXT,
    City TEXT,
    TotalAmount REAL
);

INSERT INTO Orders (OrderID, OrderDate, City, TotalAmount) VALUES
(1, '2026-01-01', 'Lahore', 5000),
(2, '2026-01-02', 'Karachi', 7000),
(3, '2026-01-03', 'Lahore', 3000),
(4, '2026-01-04', 'Islamabad', 8000),
(5, '2026-01-05', 'Karachi', 4500),
(6, '2026-01-06', 'Lahore', 6200),
(7, '2026-01-07', 'Islamabad', 7100),
(8, '2026-01-08', 'Karachi', 5200),
(9, '2026-01-09', 'Lahore', 4000),
(10, '2026-01-10', 'Islamabad', 9000);

-- SELECT * FROM Orders;

SELECT City, SUM(TotalAmount) AS TotalRevenue
FROM Orders
GROUP BY City;