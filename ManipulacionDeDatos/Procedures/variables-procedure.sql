DELIMITER %%
CREATE PROCEDURE `jugos_ventas`.`exhibir_variable`()
BEGIN 
  -- Declarar variable
    DECLARE texto CHAR(12) DEFAULT 'Hola Mundo!!';
    SELECT texto;
END%%
DELIMITER ;

-- ############################################################3
DELIMITER %%
CREATE PROCEDURE `jugos_ventas`.`new_procedure`()
BEGIN
    DECLARE v VARCHAR(30) DEFAULT 'Caracteres variables';
    DECLARE i INTEGER DEFAULT 564;
    DECLARE d DECIMAL(5,3) DEFAULT 897.65;
    DECLARE f DATE DEFAULT '2021-01-01';
    DECLARE ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP();
    SELECT v;
    SELECT i;
    SELECT d;
    SELECT f;
    SELECT ts;
END%%
DELIMITER ;


-- ############################################################3

DELIMITER %%
DROP PROCEDURE IF EXISTS `jugos_ventas`.`atribuir_valores`%%
CREATE PROCEDURE `jugos_ventas`.`sin_declaración`()
SQL SECURITY DEFINER
NOT DETERMINISTIC
BEGIN
    DECLARE numero INTEGER DEFAULT 987;
    SELECT numero;
    SET numero = 324;
    SELECT numero;
END%%
DELIMITER ;

CALL `jugos_ventas`.`sin_declaración`();
SELECT @arg2;