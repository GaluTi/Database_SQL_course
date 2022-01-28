CREATE TABLE `airports_pro` (
 `iata` VARCHAR(3),
 `latitude` DOUBLE,
 `longitude` DOUBLE,
 `flight_number` INT,
 PRIMARY KEY (`iata`),
 KEY `idx` (`latitude`, `longitude`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `airports_pro` (`iata`, `latitude`, `longitude`, `flight_number`)
VALUES ('VKO', 55.59611, 37.2675, 1);
INSERT INTO `airports_pro` (`iata`, `latitude`, `longitude`, `flight_number`)
VALUES ('LED', 59.8002777778, 30.2625, 2);
INSERT INTO `airports_pro` (`iata`, `latitude`, `longitude`, `flight_number`)
VALUES ('NCE', 43.6597222222, 7.2133333333, 3);
INSERT INTO `airports_pro` (`iata`, `latitude`, `longitude`, `flight_number`)
VALUES ('PCC', 1.9, -75.15, 4);
INSERT INTO `airports_pro` (`iata`, `latitude`, `longitude`, `flight_number`)
VALUES ('JFK', 40.6441666667, -73.7822222222, 5);
INSERT INTO `airports_pro` (`iata`, `latitude`, `longitude`, `flight_number`)
VALUES ('SDY', 47.70694, -104.1925, 6);
INSERT INTO `airports_pro` (`iata`, `latitude`, `longitude`, `flight_number`)
VALUES ('KIX', 34.4341666667, 135.232777778, 7);
INSERT INTO `airports_pro` (`iata`, `latitude`, `longitude`, `flight_number`)
VALUES ('VVO', 43.39917, 132.15139, 8);
INSERT INTO `airports_pro` (`iata`, `latitude`, `longitude`, `flight_number`)
VALUES ('OVB', 55.0125, 82.65056, 9);
INSERT INTO `airports_pro` (`iata`, `latitude`, `longitude`, `flight_number`)
VALUES ('DME', 55.4086111111, 37.9061111111, 10);
COMMIT;