use  ola;
select * from bookings;
#SQL Questions:
# 1. Retrieve all successful bookings:
select * from bookings where booking_status="Success";
#2. Find the average ride distance for each vehicle type:
SELECT
    vehicle_type,
    AVG(Ride_distance) AS average_of_ride
FROM bookings
GROUP BY vehicle_type;
#3. Get the total number of cancelled rides by customers:
select count(Booking_status) as total_cancel_by_cus from bookings where booking_status="Canceled by Customer";
#4. List the top 5 customers who booked the highest number of rides:
SELECT Customer_id,
       COUNT(Customer_id) AS booking_count
FROM bookings
GROUP BY Customer_id
ORDER BY booking_count DESC
LIMIT 5;
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(Booking_status) from bookings 
where canceled_Rides_by_Driver="Personal & Car Related issue";
# 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select max(driver_ratings) as max ,min(driver_ratings) as min from bookings
where vehicle_Type="Prime Sedan";
#7. Retrieve all rides where payment was made using UPI:
select count(*) from bookings where payment_Method="UPI";
#8. Find the average customer rating per vehicle type:
select vehicle_type,avg(Customer_rating) as customer_rating from bookings group by vehicle_type;
#9. Calculate the total booking value of rides completed successfully:
select sum(Booking_value) as bk from bookings where booking_status="Success";
#10. List all incomplete rides along with the reason:
select Incomplete_rides,Incomplete_Rides_Reason from bookings where incomplete_rides="Yes";