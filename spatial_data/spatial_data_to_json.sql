SELECT
ST_AsGeoJSON(`point`),
ST_AsGeoJSON(`linestring`),
ST_AsGeoJSON(`polygon`),
ST_AsGeoJSON(`multipoint`),
ST_AsGeoJSON(`multilinestring`),
ST_AsGeoJSON(`multipolygon`),
ST_AsGeoJSON(`geometrycollection`),
ST_AsGeoJSON(`geometry`)
FROM `spatialdata`;
