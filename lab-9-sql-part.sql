#Create a table rentals_may to store the data from rental table with information for the month of May.
SELECT * FROM RENTAL
WHERE RENTAL_DATE
LIKE "%-05-%"; 
CREATE TABLE rentals_may AS
(SELECT *
FROM RENTAL
WHERE RENTAL_DATE 
LIKE "%-05-%");
SELECT * FROM RENTALS_MAY;
#Create a table rentals_june to store the data from rental table with information for the month of June.
SELECT * FROM RENTAL
WHERE RENTAL_DATE
LIKE "%-06-%"; 
CREATE TABLE rentals_june AS
(SELECT *
FROM RENTAL
WHERE RENTAL_DATE 
LIKE "%-06-%");
SELECT * FROM RENTALS_june;
#Check the number of rentals for each customer for May.
select customer_id, count(rental_id)
FROM rentals_may
group by customer_id;

#Check the number of rentals for each customer for June.
select customer_id, count(rental_id)
FROM rentals_june
group by customer_id;

