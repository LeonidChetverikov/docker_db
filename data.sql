CREATE TABLE IF NOT EXISTS car (
	car_id 			integer NOT NULL,
	car_manufactor 		VARCHAR(1000) NOT NULL,
	car_model 		VARCHAR(1000),
	date_of_production 	DATE
);

INSERT INTO car (car_id, car_manufactor,
		car_model, date_of_production)
	values ( 1, 'Tesla',
		'ModelS', '2018-01-01');

INSERT INTO car values (1, 'Jeep', 'GranCherokee', '2001-02-03');
