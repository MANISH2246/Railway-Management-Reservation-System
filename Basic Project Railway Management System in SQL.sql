CREATE SCHEMA IF NOT EXISTS railway_system;
show databases;
use railway_system;


CREATE TABLE IF NOT EXISTS Reservation (
Train_id int,
Train_name Text,
Train_type TEXT,
Coaches TEXT,
PNR_no int,
First_name TEXT,
Last_name TEXT,   
Contact TEXT,
Email_id TEXT,   
Booking_id text,
Booking_date  date,  
Source_station TEXT,    
Destination_station TEXT,
Seat_alloted TEXT,    
State TEXT,    
City TEXT,   
Duration_minutes INT,    
Payment_mode TEXT,
Fair int,   
Booking_status TEXT,
Meal_booked BOOLEAN);
       
insert into Reservation (Train_id, Train_name, Train_type, Coaches,PNR_no, First_name, Last_name, Contact, Email_id, Booking_id, Booking_date,  Source_station, Destination_station, Seat_alloted, State, City, Duration_minutes, Payment_mode, Fair, Booking_status, Meal_booked)
values
    (12490, 'Samparak_Kranti','Express', 25,45327839, 'Sneha', 'Jain', 9876543210, 'sneha@example.com', 6, '2023/09/25', 'Jaipur', 'Delhi', 5, 'Rajasthan', 'Jaipur', 180, 'Online', 640, 'Confirmed', true),
    (11450, 'Varanasi Super', 'Express', 25,47836904, 'Rahul', 'Verma', 8765432109, 'rahul@example.com', 7, '2023/08/21', 'Mumbai', 'Pune', 3, 'Maharashtra', 'Mumbai', 120, 'Online', 750, 'Waiting', false),
    (42999, 'Memu 2', 'Passenger', 10, 45527842, 'Amit', 'Yadav', 9876543211, 'amit@example.com', 8, '2023/07/15', 'Delhi', 'Agra', 6, 'UP', 'Delhi', 240, 'Cash', 350, 'Confirmed', true),
    (80124, 'Vandebharat', 'Superfast', 20,45627843, 'Neha', 'Singh', 8765432108, 'neha@example.com', 9, '2023/10/08', 'Kolkata', 'Chennai', 8, 'West Bengal', 'Kolkata', 300, 'Cash', 270, 'Confirmed', true),
    (71424, 'Shanti Express', 'Express', 22,45727844, 'Rajat', 'Mishra', 9876543212, 'rajat@example.com', 10, '2023/11/28', 'Bhopal', 'Indore', 3, 'MP', 'Bhopal', 90, 'Online', 300, 'Waiting', false),
    (62374, 'Rajdhani ', 'Rajdhani', 25,45927845, 'Sachin', 'Kumar', 9456789123, 'sachin@example.com', 11, '2023/09/10', 'Varanasi', 'Lucknow', 4, 'UP', 'Varanasi', 150, 'Cash', 450,'Confirmed', true),
    (56479, 'Duronto Express', 'Express', 18,46027846, 'Anjali', 'Gupta', 9876543213, 'anjali@example.com', 12, '2023/07/30', 'Chennai', 'Bangalore', 5, 'Tamil Nadu', 'Chennai', 180, 'Online', 800, 'Confirmed', false),
    (47941, 'Shatabdi', 'Super fast', 15, 46127847, 'Vishal', 'Sharma', 8765432107, 'vishal@example.com', 13, '2023/10/15', 'Hyderabad', 'Bangalore', 7, 'Telangana', 'Hyderabad', 210, 'Cash', 740, 'Confirmed', true),
    (25473, 'Local', 'Passenger', 18,46227848, 'Preeti', 'Verma', 9876543214, 'preeti@example.com', 14, '2023/11/05', 'Ahmedabad', 'Surat', 3, 'Gujarat', 'Ahmedabad', 120, 'Online', 1200, 'Confirmed', false),
    (14789, 'Darbhanga Expresss', 'Superfast', 20,46327849, 'Aryan', 'Rajput', 8765432106, 'aryan@example.com', 15, '2023/09/20', 'Delhi', 'Jaipur', 6, 'Rajasthan', 'Delhi', 240, 'Online', 550, 'Confirmed', true),
    (14228, 'Mahamna','Express', 20,45267838, 'Manish', 'Sharma', 9569090882, 'dixit571@gmail.com', 1 , '2023/07/12', 'Harpalpur', 'Delhi', 1, 'MP', 'Harpalpur', '120', 'Online', 640, 'Waiting', False),
	(25486, 'Ambedkar Express', 'Express', 24,45327840, 'Vipul', 'Rabari', 9545789346, 'vr71@gmail.com', 2 , '2022/09/11', 'Ahmedabad', 'Mumbai', 2, 'Gujrat', 'Ahmedabad', '270', 'Cash', 780, 'Confirmed', True),
	(47111, 'Enter_City','Express', 22,45247875, 'Harshit', 'Shahu', 9046987634, 'kp91@gmail.com', 3 , '2023/06/10', 'Ropad', 'Delhi', 2, 'Punjab', 'Ropad', '460', 'Cash', 220,'Confirmed', True),
	(14816, 'Memu ','Passenger', 12,45027849, 'Prince', 'Parihar', 9935677846, 'dg41@gmail.com', 4 , '2023/08/16', 'Chhatarpur', 'Bhopal', 4, 'MP', 'Chhatarpur', '90', 'Online', 100, 'Waiting', False),
	(48231, 'Chambal','Express', 25,45827848, 'Kapil', 'Payak', 8765942461, 'rk51@gmail.com', 5 , '2023/11/03', 'Lucknow', 'Banda', 10, 'UP', 'Lucknow', '620', 'Cash', 1350, 'Confirmed', True);
    
USE railway_system;
ALTER TABLE Reservation
ADD COLUMN km INT;
select * from Reservation;

-- Update the new column with values for existing rows
UPDATE Reservation
SET km = CASE
    WHEN Train_id = 12490 THEN 840
    WHEN Train_id = 11450 THEN 200
    WHEN Train_id = 42999 THEN 150
    WHEN Train_id = 80124 THEN 250
    WHEN Train_id = 71424 THEN 300
    WHEN Train_id = 62374 THEN 180
    WHEN Train_id = 56479 THEN 220
    WHEN Train_id = 47941 THEN 270
    WHEN Train_id = 25473 THEN 320
    WHEN Train_id = 14789 THEN 180
    WHEN Train_id = 14228 THEN 120
    WHEN Train_id = 25486 THEN 270
    WHEN Train_id = 47111 THEN 460
    WHEN Train_id = 14816 THEN 90
    WHEN Train_id = 48231 THEN 620
    ELSE 0
END;


select * from Reservation;

----Easy Level Queries

SELECT First_name, Last_name 
FROM Reservation;

SELECT DISTINCT Train_type 
FROM Reservation;

SELECT COUNT(*) 
FROM Reservation;

SELECT   Train_name,First_name,Booking_status 
FROM Reservation 
WHERE Booking_status = 'Confirmed' OR Booking_status = 'Waiting';

SELECT First_name,Train_name 
FROM Reservation 
WHERE Meal_booked = false;

SELECT state, count('Reservation') 
FROM Reservation
WHERE state = 'MP' 
GROUP BY State;

SELECT AVG(Fair) 
FROM Reservation;

SELECT PNR_no,Train_id,Booking_date 
FROM Reservation 
WHERE Booking_date between '2023-08-21' AND '2023-10-08' 
order by Booking_date;

**Medium Level Queries:**

SELECT Train_name, Sum(fair) AS Reservation_price
FROM Reservation
GROUP BY Train_name
ORDER BY Reservation_price DESC
LIMIT 4;

SELECT * FROM Reservation 
WHERE Duration_minutes > 120;

SELECT * 
FROM Reservation 
WHERE Source_station = 'Delhi' AND Destination_station = 'Mumbai';

SELECT AVG(Duration_minutes) 
FROM Reservation;

SELECT * FROM Reservation 
WHERE Payment_mode = 'Cash';

SELECT Source_station, SUM(Duration_minutes) AS Total_Duration
FROM Reservation
GROUP BY Source_station;

SELECT Train_name, First_name, Contact,Coaches
FROM Reservation 
WHERE Train_id IN (SELECT Train_id FROM Reservation WHERE Coaches > 20);

SELECT AVG(Fair) 
FROM Reservation 
WHERE Booking_status = 'Confirmed';

**High Level Queries:**

SELECT First_name, Last_name, COUNT(*) AS Reservation_Count
FROM Reservation
GROUP BY First_name, Last_name
HAVING COUNT(*) > 1;

SELECT Train_name,Train_id,(km * fair) AS Total_Revenue 
FROM Reservation
ORDER BY Total_Revenue ASC
LIMIT 4
OFFSET 3;

SELECT First_name, Last_name
FROM Reservation
GROUP BY First_name, Last_name
HAVING COUNT(DISTINCT Train_type) > 1;

SELECT Payment_mode
FROM Reservation 
WHERE Payment_mode LIKE '%h';

SELECT Source_station, Destination_station, COUNT(*) AS Reservation_Count
FROM Reservation
GROUP BY Source_station, Destination_station;

SELECT Train_type, AVG(Duration_minutes) AS Average_Duration
FROM Reservation
GROUP BY Train_type;

SELECT Payment_mode, COUNT(*) AS Payment_Mode_Count
FROM Reservation
GROUP BY Payment_mode
ORDER BY Payment_Mode_Count DESC
LIMIT 1;

SELECT MAX(Duration_minutes) AS Max_Duration, km
FROM Reservation
GROUP BY km;

SELECT MAX(Duration_minutes) AS Max_Duration, km
FROM Reservation
GROUP BY km
UNION
SELECT MIN(Duration_minutes) AS Min_Duration, km
FROM Reservation
GROUP BY km;

ALTER TABLE Reservation
ADD COLUMN Age INT;
UPDATE Reservation
SET Age = CASE
    WHEN Train_id = 12490 THEN 15
    WHEN Train_id = 11450 THEN 20
    WHEN Train_id = 42999 THEN 18
    WHEN Train_id = 80124 THEN 25
    WHEN Train_id = 71424 THEN 30
    WHEN Train_id = 62374 THEN 18
    WHEN Train_id = 56479 THEN 22
    WHEN Train_id = 47941 THEN 27
    WHEN Train_id = 25473 THEN 32
    WHEN Train_id = 14789 THEN 60
    WHEN Train_id = 14228 THEN 45
    WHEN Train_id = 25486 THEN 50
    WHEN Train_id = 47111 THEN 32
    WHEN Train_id = 14816 THEN 28
    WHEN Train_id = 48231 THEN 18
    ELSE 0
END;

select * from Reservation;

SELECT First_name,Age,
CASE 
    WHEN Age < 18 THEN '2% discount'
    WHEN Age >= 18 AND Age < 50 THEN 'Both'
    ELSE 'Insurance'
    END AS Age_Difference
    FROM Reservation;
    
    
SELECT First_name,Train_id,Train_name
FROM Reservation
WHERE Train_type IN ('Express', 'Superfast','Memu')
GROUP BY First_name, Train_id, Train_name
HAVING COUNT(DISTINCT Train_type) = 1;

SELECT SUM(Duration_minutes) AS Total_Duration
FROM Reservation;
   
SELECT Source_station 
FROM Reservation
WHERE Source_station LIKE '_u_';

select Train_name,First_name
from Reservation
where Train_name LIKE "V%T" or First_name LIKE "%a";

SELECT Train_type, 
(SUM(CASE WHEN Booking_status = 'Confirmed' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS Confirmed_Booking_Percentage
FROM Reservation
GROUP BY Train_type
ORDER BY Confirmed_Booking_Percentage DESC;

SELECT Train_id AS Main_id, first_name AS name
FROM Reservation;

SELECT Email_id, First_name
FROM Reservation
WHERE Email_id BETWEEN 'f' AND 's';

SELECT age
FROM Reservation
WHERE Age = (SELECT MIN(Age) FROM Reservation);

SELECT Fair, km
FROM Reservation
WHERE Fair BETWEEN 200 AND 600;

SELECT Coaches
FROM Reservation
WHERE EXISTS (SELECT PNR_no FROM Reservation WHERE Train_id = 42999)
LIMIT 5;

SELECT Seat_alloted,Train_name,Train_type
FROM Reservation
WHERE Fair = ANY
(SELECT Fair FROM Reservation WHERE City = 'Delhi');

SELECT  First_name, city,Coaches,Train_name
FROM Reservation
WHERE city in ('Delhi','Mumbai','Delhi');
