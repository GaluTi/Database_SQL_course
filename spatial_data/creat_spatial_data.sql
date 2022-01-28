CREATE TABLE `spatialData` (
 `id` smallint unsigned NOT NULL AUTO_INCREMENT,
 `point` POINT NOT NULL,
 `linestring` LINESTRING,
 `polygon` POLYGON NOT NULL,
 `multipoint` MULTIPOINT NOT NULL,
 `multilinestring` MULTILINESTRING ,
 `multipolygon` MULTIPOLYGON NOT NULL,
 `geometrycollection` GEOMETRYCOLLECTION NOT NULL,
 `geometry` GEOMETRY NOT NULL,
 PRIMARY KEY (`id`)
);