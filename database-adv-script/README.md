# Advanced SQL Queries: Mastering Joins

This project focuses on mastering SQL joins by writing and executing complex queries using different types of joins. The queries are designed to retrieve meaningful data from a relational database by combining information from multiple tables.

## Objectives

- Understand and implement different types of SQL joins.
- Write efficient and complex SQL queries to retrieve data.
- Explore the use of `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN`.

## Queries Included

### 1. INNER JOIN
Retrieve all bookings and the respective users who made those bookings.

```sql
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.booking_date
FROM 
    users
INNER JOIN 
    bookings
ON 
    users.id = bookings.user_id;
```

### 2. LEFT JOIN
Retrieve all properties and their respective reviews, if any.

```sql
SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.review_text
FROM 
    properties
LEFT JOIN 
    reviews
ON 
    properties.id = reviews.property_id;
```

### 3. FULL OUTER JOIN
Retrieve all users and their respective bookings, if any.

```sql
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.booking_date
FROM 
    users
FULL OUTER JOIN 
    bookings
ON 
    users.id = bookings.user_id;
```