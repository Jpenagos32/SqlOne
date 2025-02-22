DELIMITER %%
DROP PROCEDURE IF EXISTS `jugos_ventas`.`ejercicio`%%
CREATE PROCEDURE `jugos_ventas`.`ejercicio`()
SQL SECURITY DEFINER
NOT DETERMINISTIC
BEGIN
    DECLARE cliente VARCHAR(10) DEFAULT 'Juan';
    DECLARE edad INTEGER DEFAULT 10;
    DECLARE fecha_nacimiento DATE DEFAULT '2007-01-10';
    DECLARE costo DECIMAL(4,2) DEFAULT 10.23;
    SELECT cliente;
    SELECT edad;
    SELECT fecha_nacimiento;
    SELECT costo;
END%%
DELIMITER ;

CALL `jugos_ventas`.`ejercicio`();