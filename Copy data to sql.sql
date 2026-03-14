set search_path to project_db;


COPY airplane(flightid, totalseats, typename)
FROM 'C:\Users\neonz\Desktop\CS4347\Project Files\AIRPLANE(1).csv'
DELIMITER ','
CSV HEADER;

COPY airplane_type(typename, company, maxpassengers)
FROM 'C:\Users\neonz\Desktop\CS4347\Project Files\AIRPLANE_TYPE(1).csv'
DELIMITER ','
CSV HEADER;

COPY airport(airportid, name, city, state)
FROM 'C:\Users\neonz\Desktop\CS4347\Project Files\AIRPORT(1).csv'
DELIMITER ','
CSV HEADER;

COPY can_land(airportid, typename)
FROM 'C:\Users\neonz\Desktop\CS4347\Project Files\CAN_LAND(1).csv'
DELIMITER ','
CSV HEADER;

ALTER TABLE fare
ADD restrictions VARCHAR(50);
COPY fare(flightnumber, class, price, restrictions)
FROM 'C:\Users\neonz\Desktop\CS4347\Project Files\FARE(1).csv'
DELIMITER ','
CSV HEADER;

COPY flight(number, airline, weekdays)
FROM 'C:\Users\neonz\Desktop\CS4347\Project Files\FLIGHT(1).csv'
DELIMITER ','
CSV HEADER;

COPY flight_leg(flightnumber, legnumber, departureairportid, arrivalairportid, departuretime, arrivaltime)
FROM 'C:\Users\neonz\Desktop\CS4347\Project Files\FLIGHT_LEG(1).csv'
DELIMITER ','
CSV HEADER;

ALTER TABLE leg_instance
ADD availableseats VARCHAR(50) NOT NULL,
ADD DepartureTime TIME NOT NULL,
ADD ArrivalTime TIME NOT NULL;
COPY leg_instance(flightnumber, legnumber, date, availableseats, airplaneflightid, DepartureTime, ArrivalTime)
FROM 'C:\Users\neonz\Desktop\CS4347\Project Files\LEG_INSTANCE(1).csv'
DELIMITER ','
CSV HEADER;
SELECT * FROM leg_instance;

COPY seat(flightid, seatnumber, class)
FROM 'C:\Users\neonz\Desktop\CS4347\Project Files\SEAT(1).csv'
DELIMITER ','
CSV HEADER;
