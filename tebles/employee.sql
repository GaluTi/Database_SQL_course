CREATE TABLE `employee` (
 `emp_id` smallint unsigned NOT NULL AUTO_INCREMENT,
 `emp_name` varchar(45) NOT NULL,
 PRIMARY KEY (`emp_id`),
 KEY `idx_emp_name` (`emp_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1;