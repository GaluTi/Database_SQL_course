SELECT
ST_AsGeoJSON(`linestring`),
ST_AsGeoJSON(`polygon`)
FROM `geom`;