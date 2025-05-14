-- Index for fast user login
CREATE INDEX idx_users_email ON users(email);

-- Indexes for joins on users and bookings
CREATE INDEX idx_users_id ON users(id);
CREATE INDEX idx_properties_host_id ON properties(host_id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Indexes for filtering
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_price ON properties(price);

-- Indexes for availability date checks
CREATE INDEX idx_bookings_check_in ON bookings(check_in);
CREATE INDEX idx_bookings_check_out ON bookings(check_out);
