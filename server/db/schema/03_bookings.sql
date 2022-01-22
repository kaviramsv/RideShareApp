
DROP TABLE IF EXISTS bookings CASCADE;
CREATE TABLE bookings (
booking_id SERIAL PRIMARY KEY NOT NULL,
ride_id INTEGER REFERENCES rides(ride_id) ON DELETE CASCADE,
rider_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
seats_booked INTEGER,
booking_status VARCHAR(255) NOT NULL DEFAULT 'pending'
);