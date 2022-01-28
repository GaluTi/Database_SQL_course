DECLARE cur CURSOR FOR SELECT id,name,age from cursor_table where age>30;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = true;
SET total = 0;
OPEN cur
FETCH cur INTO sid, sname, sage;
WHILE(NOT done)
DO
SET total = total + 1;
FETCH cur INTO sid, sname, sage;
END WHILE;
CLOSE cur;