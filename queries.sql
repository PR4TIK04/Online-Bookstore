-- Sample queries

-- 1. List all books with their authors
SELECT b.Title, a.Name AS Author, b.Price
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID;

-- 2. Find total sales amount per customer
SELECT c.Name, SUM(b.Price * od.Quantity) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Books b ON od.BookID = b.BookID
GROUP BY c.Name;

-- 3. Get all orders with book details
SELECT o.OrderID, c.Name AS Customer, b.Title, od.Quantity, b.Price
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Books b ON od.BookID = b.BookID;

-- 4. Find the most popular book
SELECT b.Title, SUM(od.Quantity) AS TotalSold
FROM Books b
JOIN OrderDetails od ON b.BookID = od.BookID
GROUP BY b.Title
ORDER BY TotalSold DESC
LIMIT 1;
