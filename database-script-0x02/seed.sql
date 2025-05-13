-- Sample Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('uuid-user-1', 'Alice', 'Johnson', 'alice@example.com', 'hashedpass1', '0712345678', 'guest'),
  ('uuid-user-2', 'Bob', 'Smith', 'bob@example.com', 'hashedpass2', '0723456789', 'host'),
  ('uuid-user-3', 'Carol', 'Lee', 'carol@example.com', 'hashedpass3', '0734567890', 'admin');

-- Sample Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('uuid-prop-1', 'uuid-user-2', 'Ocean View Apartment', 'A beautiful apartment overlooking the sea.', 'Mombasa, Kenya', 120.00),
  ('uuid-prop-2', 'uuid-user-2', 'Cozy Cottage', 'A quiet, cozy cottage in the countryside.', 'Naivasha, Kenya', 80.00);

-- Sample Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('uuid-booking-1', 'uuid-prop-1', 'uuid-user-1', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
  ('uuid-booking-2', 'uuid-prop-2', 'uuid-user-1', '2025-07-10', '2025-07-12', 160.00, 'pending');

-- Sample Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('uuid-payment-1', 'uuid-booking-1', 480.00, 'stripe'),
  ('uuid-payment-2', 'uuid-booking-2', 160.00, 'paypal');

-- Sample Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('uuid-review-1', 'uuid-prop-1', 'uuid-user-1', 5, 'Amazing stay! Great views and clean space.'),
  ('uuid-review-2', 'uuid-prop-2', 'uuid-user-1', 4, 'Nice place, but a bit remote.');

-- Sample Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('uuid-message-1', 'uuid-user-1', 'uuid-user-2', 'Hi, is the apartment available in August?'),
  ('uuid-message-2', 'uuid-user-2', 'uuid-user-1', 'Hi Alice, yes, it is available. Feel free to book.');

