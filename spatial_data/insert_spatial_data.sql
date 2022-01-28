INSERT INTO `spatialdata` (`point`, `linestring`, `polygon`, `multipoint`, `multilinestring`, `multipolygon`, `geometry`, `geometrycollection`)
VALUES (
POINT(1, 1), 
ST_LineStringFromText('LINESTRING(0 0, 5 10, -7 8, 1 0)'),
ST_PolyFromText('POLYGON((0 0, 4 4, 4 10, -4 10, -4 -4, 0 0))',  4326),
ST_MPointFromText('MULTIPOINT(1 1, -1 1, -1 -1, 1 -1)'),
ST_MultiLineStringFromText('MULTILINESTRING((-10 -10, 10 10), (10 -10, -10 10))'),
ST_GeomFromText('MULTIPOLYGON(((0 0, 5 5,  0 10, -5 5, 0 0)),((5 0, 5 10, -5 10, -5 0, 5 0)))', 4326),
ST_GeomCollFromText('GEOMETRYCOLLECTION(POINT(7 10), LINESTRING(1 5, 13 15))'),
ST_GeometryFromText('MULTIPOINT(1 0, 2 0, 3 0)')
);

INSERT INTO `spatialdata` (`point`, `linestring`, `polygon`, `multipoint`, `multilinestring`, `multipolygon`, `geometry`, `geometrycollection`)
VALUES (
POINT(2, 2), 
ST_LineStringFromText('LINESTRING(1 1, 1 5,-2 5, -2 -2, 3 -2)'),
ST_PolyFromText('POLYGON((0 10, 4 6, 4 0, -4 0, -4 6, 0 10))', 4326),
ST_MPointFromText('MULTIPOINT(1 0, 0 1, -1 0, 0 -1)'),
ST_MultiLineStringFromText('MULTILINESTRING((-10 5, 10 5), (-10 -5, 10 -5))'),
ST_GeomFromText('MULTIPOLYGON(((0 0, -6 0,  -3 4, 0 0)),((0 0, 6 0, 3 4, 0 0)))', 4326),
ST_GeomCollFromText('GEOMETRYCOLLECTION(POINT(2 3), LINESTRING(8 -2, -4 8))'),
ST_GeometryFromText('MULTIPOINT(0 1, 0 2, 0 3)')
);

INSERT INTO `spatialdata` (`point`, `linestring`, `polygon`, `multipoint`, `multilinestring`, `multipolygon`, `geometry`, `geometrycollection`)
VALUES (
POINT(3, 3), 
ST_LineStringFromText('LINESTRING(0 0, -2 2, 0 2, -2 4)'),
ST_PolyFromText('POLYGON((-4 0, -2 2, 2 2, 4 0, -4 0))', 4326),
ST_MPointFromText('MULTIPOINT(1 2, 3 4, 5 6, 7 8)'),
ST_MultiLineStringFromText('MULTILINESTRING((5 -5, 5 5), (0 0, 0 10))'),
ST_GeomFromText('MULTIPOLYGON(((0 0, -3 3,  -3 -3, 0 0)),((0 0, 3 3, 3 -3, 0 0)))', 4326),
ST_GeomCollFromText('GEOMETRYCOLLECTION(POINT(10 -3), LINESTRING(6 2, 14 -4))'),
ST_GeometryFromText('MULTIPOINT(1 2, 2 3, 3 4)')
);
