# Property Rental Platform – Database Schema

This project defines the database schema for a Property Rental Platform. It supports user registration, property listings, bookings, payments, reviews, and messaging features.

## 📐 Database Design Overview

The database schema includes the following entities:

- **Users** – Stores registered users (guests, hosts, admins)
- **Properties** – Details of properties listed by hosts
- **Bookings** – Reservations made by users on properties
- **Payments** – Payment records linked to bookings
- **Reviews** – Ratings and feedback submitted by users
- **Messages** – Internal messaging between users

## 🧱 Schema Structure

Each table uses appropriate data types, constraints, and indexing to ensure data integrity and performance.

### Key Features:

- **UUIDs** as primary keys for global uniqueness
- **Foreign key constraints** for referential integrity
- **ENUM**/CHECK constraints to control status and role values
- **Timestamps** for tracking creation and updates
- **Indexes** on frequently queried fields like `email`, `property_id`, and `booking_id`

## ✅ Normalization

The schema has been normalized to **Third Normal Form (3NF)**:
- Each table has a single purpose (no partial or transitive dependencies)
- Repeated data is factored out into related tables
- All non-key attributes depend only on the primary key

## 🛠️ SQL Schema

The schema is written in SQL and includes `CREATE TABLE` statements with:
- `PRIMARY KEY`
- `FOREIGN KEY`
- `UNIQUE`
- `CHECK`
- `DEFAULT`
- `INDEX`

Refer to the [`schema.sql`](#) file to see the full implementation.

## 💾 Supported Database Engines

The SQL syntax is compatible with:
- PostgreSQL
- MySQL (8+)
- SQLite (minor adjustments required)

> ⚠️ For PostgreSQL: You may optionally define `ENUM` types separately  
> ⚠️ For older versions of MySQL or SQLite, replace `UUID` with `CHAR(36)` or equivalent

## 🚀 Future Extensions

This schema is designed to be extensible. Possible additions:
- Property images table
- Admin moderation logs
- User profile enhancements
- Booking cancellation policy

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
