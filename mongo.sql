COPY (
	SELECT
		car_id AS "carId.auto()",
		car_model AS "carModel.auto()"
	FROM
	car
) TO STDOUT WITH (FORMAT CSV, HEADER TRUE, DELIMITER E'\t');
