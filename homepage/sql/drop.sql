# This script will drop all tables associated with the default database: c332g20

USE `c332g20`;
SET FOREIGN_KEY_CHECKS = 0; 
SET @tables = NULL;
SET GROUP_CONCAT_MAX_LEN=32767;

SELECT GROUP_CONCAT('`', TABLE_SCHEMA, '`.`', TABLE_NAME, '`') INTO @tables
FROM information_schema.TABLES 
WHERE TABLE_SCHEMA = (SELECT DATABASE());
SELECT IFNULL(@tables, '') INTO @tables;

SET @tables = CONCAT('DROP TABLE IF EXISTS ', @tables);
PREPARE stmt FROM @tables;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
SET FOREIGN_KEY_CHECKS = 1;
SET @tables = NULL;