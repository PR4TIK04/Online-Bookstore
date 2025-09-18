# 📚 Online Bookstore SQL Project

This project demonstrates the design and implementation of a relational database for an **online bookstore**.  
It includes tables for **Authors, Books, Customers, Orders, and OrderDetails**, along with sample data and advanced SQL queries.  

---

## 📂 Project Structure
- **schema.sql** → Database schema (tables & relationships)  
- **data.sql** → Sample data for testing  
- **queries.sql** → Example queries for insights  

---

## 🚀 Features
- Manage books, authors, customers, and orders  
- Track book sales with order details  
- Generate reports such as:  
  - 📖 Books with their authors  
  - 💰 Total sales per customer  
  - ⭐ Most popular book (by sales)  
  - 📦 Detailed order breakdown  

---

## 🛠️ How to Run
1. Open MySQL / Oracle / any SQL environment  
2. Run `schema.sql` to create tables  
3. Run `data.sql` to insert sample data  
4. Run queries from `queries.sql` to test  

---

## 📊 Example Query
**Find total sales per customer:**
```sql
SELECT c.Name, SUM(b.Price * od.Quantity) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Books b ON od.BookID = b.BookID
GROUP BY c.Name;
```
## 🎯 Skills Demonstrated

Database schema design with relationships

Writing SQL queries with JOIN, GROUP BY, and Aggregation

Data analysis and reporting using SQL

Ensuring normalization & relational integrity
