USE cinema_booking_system;

SELECT c.first_name, c.last_name, COUNT(b.id) as freq FROM bookings b
JOIN customers c ON c.id = b.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY freq DESC
LIMIT 5;