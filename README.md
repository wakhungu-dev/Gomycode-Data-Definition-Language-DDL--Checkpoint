# Gomycode-Data-Definition-Language-DDL--Checkpoint
# Database Setup with SQL

This repository contains SQL commands to create tables and add columns to implement the given relational model.

## Tables

1. **Product**: Table to store product information.
   - Columns:
     - Product_id: Primary key of the product.
     - Product_name: Name of the product.
     - Price: Price of the product.
     - Category: Category of the product.

2. **Orders**: Table to store order information.
   - Columns:
     - order_id: Primary key of the order.
     - customer_id: Foreign key referencing the Customer table.
     - product_id: Foreign key referencing the Product table.
     - quantity: Quantity of the product in the order.
     - total_amount: Total amount for the order.
     - OrderDate: Date of the order.

3. **Customers**: Table to store customer information.
   - Columns:
     - Customer_id: Primary key of the customer.
     - Customer_name: Name of the customer.
     - Customer_tel: Telephone number of the customer.

## SQL Commands

- SQL commands to create tables: [create_tables.sql](create_tables.sql)
- SQL commands to add columns: [add_columns.sql](add_columns.sql)



