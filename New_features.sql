--  Trigger: Auto update stock when an order is placed
ALTER TABLE Books ADD Stock INT DEFAULT 10;  -- Adding stock column for demo

CREATE OR REPLACE TRIGGER trg_update_stock
AFTER INSERT ON OrderDetails
FOR EACH ROW
BEGIN
    UPDATE Books
    SET Stock = Stock - :NEW.Quantity
    WHERE BookID = :NEW.BookID;
END;
/

-- Procedure: Calculate total bill for an order
CREATE OR REPLACE PROCEDURE GetOrderTotal(p_orderID IN INT, p_total OUT DECIMAL) AS
BEGIN
    SELECT SUM(b.Price * od.Quantity)
    INTO p_total
    FROM OrderDetails od
    JOIN Books b ON od.BookID = b.BookID
    WHERE od.OrderID = p_orderID;
END;
/

-- Function: Calculate loyalty points (1 point per 100 spent)
CREATE OR REPLACE FUNCTION GetCustomerPoints(p_customerID INT) 
RETURN INT IS
    total_spent DECIMAL(12,2);
    points INT;
BEGIN
    SELECT SUM(b.Price * od.Quantity)
    INTO total_spent
    FROM Orders o
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    JOIN Books b ON od.BookID = b.BookID
    WHERE o.CustomerID = p_customerID;

    points := FLOOR(total_spent / 100);
    RETURN points;
END;
/
