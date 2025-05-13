# Database Normalization to Third Normal Form (3NF)

## Objective
Ensure that the given relational database schema adheres to the principles of the Third Normal Form (3NF) by identifying and eliminating redundancies and transitive dependencies.

---

## Step 1: First Normal Form (1NF)

**Rule:** 
- Eliminate repeating groups.
- Ensure atomicity of attributes.

**Compliance:** ✅  
All attributes in the schema are atomic (e.g., strings, numbers, dates). No repeating groups or arrays exist.

---

## Step 2: Second Normal Form (2NF)

**Rule:** 
- Must satisfy 1NF.
- Eliminate partial dependencies (attributes must depend on the whole primary key).

**Compliance:** ✅  
All tables have single-column primary keys (UUIDs), so there are no partial dependencies. All non-key attributes depend fully on the primary key.

---

## Step 3: Third Normal Form (3NF)

**Rule:** 
- Must satisfy 2NF.
- Eliminate transitive dependencies (non-key attributes must depend only on the primary key).

**Table-wise Analysis:**

### User
- `user_id` is the primary key.
- All other attributes (name, email, password_hash, etc.) directly depend on `user_id`.

### Property
- `property_id` is the primary key.
- `host_id` is a foreign key to `User`.
- No transitive dependencies.

### Booking
- `booking_id` is the primary key.
- Fields like `start_date`, `end_date`, `total_price`, and `status` depend on `booking_id`.

### Payment
- `payment_id` is the primary key.
- Depends only on `booking_id`, with no derived or redundant data.

### Review
- `review_id` is the primary key.
- `property_id` and `user_id` are foreign keys.
- `rating`, `comment`, and `created_at` are fully dependent on the primary key.

### Message
- `message_id` is the primary key.
- `sender_id` and `recipient_id` are foreign keys.
- `message_body` and `sent_at` are atomic and dependent on `message_id`.

**Compliance:** ✅  
No transitive dependencies exist.

---

## Optional Improvements (Beyond 3NF)

| Suggestion | Reason |
|-----------|--------|
| Create a `Role` table | Helpful for managing role-based permissions or adding metadata about roles. |
| Normalize `location` | Allows for richer data on geographic areas if scaling across regions. |
| Payment method as a separate table | Useful for internationalization or supporting dynamic methods. |

---

## Conclusion

The database schema adheres to Third Normal Form (3NF) with no violations detected. All entities are properly normalized with atomic attributes, and no partial or transitive dependencies are present. Optional refinements can be made for scalability and maintainability.
