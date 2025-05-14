-- Query 1: INNER JOIN to retrieve all bookings and the respective users who made those bookings
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

-- Query 2: LEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews
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

-- Query 3: FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
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

-- Query 4: Non-correlated subquery to find all properties where the average rating is greater than 4.0
SELECT 
    properties.id AS property_id,
    properties.name AS property_name
FROM 
    properties
WHERE 
    properties.id IN (
        SELECT 
            reviews.property_id
        FROM 
            reviews
        GROUP BY 
            reviews.property_id
        HAVING 
            AVG(reviews.rating) > 4.0
    );

-- Query 5: Correlated subquery to find users who have made more than 3 bookings
SELECT 
    users.id AS user_id,
    users.name AS user_name
FROM 
    users
WHERE 
    (SELECT 
         COUNT(*)
     FROM 
         bookings
     WHERE 
         bookings.user_id = users.id) > 3;