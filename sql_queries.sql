-- Create database
CREATE DATABASE OLA;
USE OLA;

-- 1. Retrieve successful bookings
CREATE VIEW success_bookings AS
SELECT * FROM bookings
WHERE booking_Status = 'success';

SELECT * FROM success_bookings;

-- 2. Average ride distance by vehicle type
CREATE VIEW avg_dist_each_v_type AS
SELECT vehicle_type, AVG(ride_distance) AS avg_dist
FROM bookings
GROUP BY vehicle_type;

-- 3. Total number of cancelled rides by customer
SELECT COUNT(*) FROM bookings
WHERE booking_status = 'Canceled by Customer';

-- 4. Top 5 customers by number of rides
SELECT customer_id, COUNT(booking_id) AS total_rides
FROM bookings
GROUP BY customer_id
ORDER BY total_rides DESC
LIMIT 5;

-- 5. Number of rides cancelled by driver (personal/car-related issue)
SELECT COUNT(*) FROM bookings
WHERE Canceled_rides_by_driver = 'Personal & Car related issue';

-- 6. Max and min driver ratings for Prime Sedan bookings (with delay)
SELECT MAX(Driver_Ratings) AS max_ratings, MIN(Driver_Ratings) AS min_ratings 
FROM bookings
WHERE vehicle_type = 'Prime Sedan' 
AND (v_tat > 1 OR c_tat > 1);

-- 7. Number of rides paid using UPI
SELECT COUNT(*) FROM bookings
WHERE payment_method = 'upi';

-- 8. Average customer rating per vehicle type
SELECT vehicle_type, AVG(customer_rating) AS avg_rating_per_v_type
FROM bookings
GROUP BY vehicle_type;

-- 9. Total booking value of successfully completed rides
SELECT SUM(booking_value) FROM bookings
WHERE booking_status = 'success';

-- 10. List of all incomplete rides with reasons
SELECT booking_id, incomplete_rides_reason FROM bookings
WHERE incomplete_rides = 'Yes';
