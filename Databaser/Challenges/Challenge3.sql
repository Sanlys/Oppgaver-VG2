USE cinema_booking_system;

SELECT b.screening_id, s.film_id, f.name FROM bookings b
JOIN screenings s ON b.screening_id = s.id
JOIN films f ON f.id = s.film_id
WHERE f.name = 'Jigsaw';

SELECT COUNT(*) AS freq FROM bookings
WHERE screening_id IN (
SELECT id FROM screenings
WHERE film_id = 5);