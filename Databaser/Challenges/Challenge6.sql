USE cinema_booking_system;

select c.first_name, c.last_name, b.customer_id, c.id from customers c
JOIN bookings b ON b.customer_id = c.id
group by c.id;
#navn, antall er antall rows

select FOUND_ROWS() as Antall;
#Antall, ingen annen info, kjør etter querien over

select customer_id from bookings
group by customer_id;
select FOUND_ROWS() as Antall;
#Fungerer også, mye enklere