-- Insert sample data
INSERT INTO Authors VALUES (1, 'J.K. Rowling', 'UK');
INSERT INTO Authors VALUES (2, 'George R.R. Martin', 'USA');
INSERT INTO Authors VALUES (3, 'Haruki Murakami', 'Japan');

INSERT INTO Books VALUES (1, 'Harry Potter', 'Fantasy', 500.00, 1);
INSERT INTO Books VALUES (2, 'Game of Thrones', 'Fantasy', 750.00, 2);
INSERT INTO Books VALUES (3, 'Kafka on the Shore', 'Fiction', 600.00, 3);

INSERT INTO Customers VALUES (1, 'Alice', 'alice@mail.com', 'Mumbai');
INSERT INTO Customers VALUES (2, 'Bob', 'bob@mail.com', 'Delhi');

INSERT INTO Orders VALUES (1, 1, '2025-09-01');
INSERT INTO Orders VALUES (2, 2, '2025-09-02');

INSERT INTO OrderDetails VALUES (1, 1, 1, 2);
INSERT INTO OrderDetails VALUES (2, 1, 3, 1);
INSERT INTO OrderDetails VALUES (3, 2, 2, 1);
