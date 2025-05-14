# Database Performance Monitoring Report

## Query Monitored:
```sql
SELECT * FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
WHERE bookings.start_date BETWEEN '2024-01-01' AND '2024-01-31';
