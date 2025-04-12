## 📊 SQL Analysis Highlights

Here are some of the key SQL queries used in the analysis:

### 1. Retrieve Successful Bookings
```sql
CREATE VIEW success_bookings AS
SELECT * FROM bookings
WHERE booking_Status = 'success';

### 2. Average Ride Distance by Vehicle Type
```sql
CREATE VIEW avg_dist_each_v_type AS
SELECT vehicle_type, AVG(ride_distance) AS avg_dist
FROM bookings
GROUP BY vehicle_type;

### 3. Total Number of Cancelled Rides
```sql
SELECT COUNT(*) FROM bookings WHERE booking_status = 'Canceled by Customer';

### 4. Top 5 Customers by Total Rides
``sql
SELECT customer_id, COUNT(booking_id) AS total_rides
FROM bookings
GROUP BY customer_id
ORDER BY total_rides DESC
LIMIT 5;

### 5. Rides Cancelled by Driver (Personal & Car Issue)
```sql
SELECT COUNT(*) FROM bookings 
WHERE Canceled_rides_by_driver = 'Personal & Car related issue';

### 6. Max & Min Driver Ratings for Prime Sedan Rides
```sql
SELECT MAX(Driver_Ratings) AS max_ratings, MIN(Driver_Ratings) AS min_ratings 
FROM bookings
WHERE vehicle_type = 'Prime Sedan' 
AND (v_tat > 1 OR c_tat > 1);

### 7. Rides Paid via UPI
```sql
SELECT COUNT(*) FROM bookings WHERE payment_method = 'upi';

### 8. Average Customer Rating per Vehicle Type
```sql
SELECT vehicle_type, AVG(customer_rating) AS avg_rating_per_v_type
FROM bookings
GROUP BY vehicle_type;

### 9. Total Booking Value of Successful Rides
```sql
SELECT SUM(booking_value) FROM bookings
WHERE booking_status = 'success';

### 10. Incomplete Rides with Reason
```sql
SELECT booking_id, incomplete_rides_reason FROM bookings
WHERE incomplete_rides = 'Yes';
