SET GLOBAL log_bin_trust_function_creators = 1;
DROP FUNCTION IF EXISTS GEODISTANCE_FULL;
DELIMITER $$
CREATE FUNCTION GEODISTANCE_FULL(unit ENUM( 'MILE', 'KILOMETER', 'MI','KM'))
RETURNS DOUBLE

BEGIN
 DECLARE dist DOUBLE;
 DECLARE strt VARCHAR(3);
 DECLARE fin VARCHAR(3);
 DECLARE fnum INT;
 DECLARE next_fnum INT;
 DECLARE cur CURSOR FOR SELECT `iata`, `flight_number` FROM `airports` ORDER BY `flight_number`;
 OPEN cur;
 SET dist = 0;
 REPEAT
 FETCH cur INTO strt, fnum;
 IF fnum < 10 THEN 
 SET next_fnum = fnum + 1;
 SELECT `iata` INTO fin FROM `airports` WHERE (`flight_number` = next_fnum);
 SET dist = dist + GEODISTANCE1(strt, fin, unit);
 END IF;
 UNTIL fnum = 10 END REPEAT;
 RETURN dist;
END$$
DELIMITER ;