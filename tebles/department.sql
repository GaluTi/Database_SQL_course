CREATE TABLE `department` (
 `dpt_id` smallint unsigned NOT NULL AUTO_INCREMENT,
 `dpt_name` varchar(45) NOT NULL,
 `dpt_headcount` int,
 PRIMARY KEY (`dpt_id`),
 KEY `idx_dpt_name` (`dpt_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1;