INSERT INTO `geom` (`linestring`, `polygon`)
VALUES (
ST_LineStringFromText('LINESTRING(1 2, 1 6)'),
ST_PolyFromText('POLYGON((1 1, 8 1 , 8 7, 1 7, 1 1))')
);