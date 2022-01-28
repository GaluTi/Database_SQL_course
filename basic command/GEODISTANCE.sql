SET GLOBAL log_bin_trust_function_creators = 1;
DROP FUNCTION IF EXISTS GEODISTANCE;
DELIMITER $$
CREATE FUNCTION GEODISTANCE( lat1 decimal(14,10) /* latitude of source point */, 
lon1 decimal(14,10) /* longitude of source point */,
lat2 decimal(14,10) /* latitude of destination point */,
lon2 decimal(14,10) /* longitude of destination point */,
unit ENUM( 'MILE', 'KILOMETER', 'MI', 'KM') /*desired
result measure units*/ )
RETURNS DOUBLE

BEGIN
 DECLARE dist DOUBLE;
 DECLARE latDist DOUBLE;
 DECLARE lonDist DOUBLE;
 DECLARE a,c,r DOUBLE;
 # earth's radius
 IF unit = 'MILE' OR unit = 'MI' THEN SET r = 3959;
 ELSE SET r = 6371;
 END IF;
 # Haversine formula <http://en.wikipedia.org/wiki/Haversine_formula>
 SET latDist = RADIANS( lat2 - lat1 );
 SET lonDist = RADIANS( lon2 - lon1 );
 SET a = POW( SIN( latDist/2 ), 2 ) + COS( RADIANS( lat1 ) ) * COS( RADIANS( lat2 ) ) *
POW( SIN( lonDist / 2 ), 2 );
 SET c = 2 * ATAN2( SQRT( a ), SQRT( 1 - a ) );
 SET dist = r * c;
 RETURN dist;
END$$
DELIMITER ;

