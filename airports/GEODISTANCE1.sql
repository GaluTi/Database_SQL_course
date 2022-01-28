DROP FUNCTION IF EXISTS GEODISTANCE1;
DELIMITER $$
CREATE FUNCTION GEODISTANCE1( geo_key1 varchar(3), geo_key2 varchar(3), unit ENUM( 'MILE', 'KILOMETER', 'MI','KM') /*desired result measure units*/ )
RETURNS DOUBLE

BEGIN
 DECLARE lat1 decimal(14,10) /* latitude of source point */;
 DECLARE lon1 decimal(14,10) /* longitude of source point */;
 DECLARE lat2 decimal(14,10) /* latitude of destination point */;
 DECLARE lon2 decimal(14,10) /* longitude of destination point */;
 DECLARE dist DOUBLE;
 DECLARE latDist DOUBLE;
 DECLARE lonDist DOUBLE;
 DECLARE a,c,r DOUBLE;
 # lat/lon
 SELECT latitude, longitude INTO lat1, lon1 FROM `airports` WHERE (`iata` = geo_key1);
 SELECT latitude, longitude INTO lat2, lon2 FROM `airports` WHERE (`iata` = geo_key2);
 SET dist = GEODISTANCE(lat1, lon1, lat2, lon2, unit);
 RETURN dist;
END$$
DELIMITER ;