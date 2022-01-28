airports_propositionCREATE TABLE `position` (
 `dpt_id` smallint unsigned NOT NULL,
 `emp_id` smallint unsigned,
 `position` varchar(45) NOT NULL,
 `salary` int,
 UNIQUE KEY `department_employe` (`dpt_id`,`emp_id`,`position`),
 KEY `idx_position` (`position`),
 CONSTRAINT `fk_position_department` FOREIGN KEY (`dpt_id`)
REFERENCES `department` (`dpt_id`) ON UPDATE CASCADE,
 CONSTRAINT `fk_position_employee` FOREIGN KEY (`emp_id`)
REFERENCES `employee` (`emp_id`) ON DELETE SET NULL ON
UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1;