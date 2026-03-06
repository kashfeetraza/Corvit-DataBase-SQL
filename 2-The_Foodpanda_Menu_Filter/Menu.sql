CREATE TABLE Menu (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(50),
    Category VARCHAR(50),
    Price INT,
    IsAvailable BOOLEAN
);

INSERT INTO Menu (ItemID, ItemName, Category, Price, IsAvailable) VALUES
(1, 'Zinger Burger', 'Burgers', 650, TRUE),
(2, 'Beef Burger', 'Burgers', 750, TRUE),
(3, 'Cheese Burger', 'Burgers', 850, TRUE),
(4, 'Chicken Burger', 'Burgers', 500, FALSE),
(5, 'Pizza Slice', 'Pizza', 400, TRUE),
(6, 'Double Zinger', 'Burgers', 780, TRUE),
(7, 'Mega Burger', 'Burgers', 1200, TRUE);

SELECT ItemName, Price
FROM Menu
WHERE Category = 'Burgers'
AND Price < 800
AND IsAvailable = TRUE
ORDER BY Price ASC;

