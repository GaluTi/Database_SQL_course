CREATE TABLE `airports` (
 `iata` varchar(3),
 `latitude` double,
 `longtitude` double,
 PRIMARY KEY (`iata`),
 KEY `idx` (`latitude`, `longtitude`)
) ENGINE=InnoDB AUTO_INCREMENT=1;