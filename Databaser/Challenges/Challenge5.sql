USE cinema_booking_system;

SELECT f.name, COUNT(r.id) as freq from rooms r
JOIN screenings s ON s.room_id = r.id
JOIN films f ON f.id = s.film_id
WHERE r.id = 1
GROUP BY f.name
ORDER BY freq desc
LIMIT 1;