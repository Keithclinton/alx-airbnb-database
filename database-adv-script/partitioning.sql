-- Step 1: Drop original table if exists
DROP TABLE IF EXISTS bookings CASCADE;

-- Step 2: Create partitioned bookings table
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    status VARCHAR(50)
) PARTITION BY RANGE (start_date);
-- Step 3: Create monthly partitions for 2024 as an example
CREATE TABLE bookings_2024_01 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');

CREATE TABLE bookings_2024_02 PARTITION OF bookings
    FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');

-- Add more partitions as needed...
-- Step 4: Insert sample data
INSERT INTO bookings (user_id, property_id, start_date, end_date, status)
VALUES (1, 101, '2024-01-05', '2024-01-10', 'confirmed');

-- Step 5: Query on partitioned table
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2024-01-01' AND '2024-01-31';
