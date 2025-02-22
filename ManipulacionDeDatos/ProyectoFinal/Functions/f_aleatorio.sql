DROP FUNCTION IF EXISTS f_aleatorio;

-- Usado para que MySQL permita crear funciones
SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER $$

CREATE FUNCTION IF NOT EXISTS empresa.f_aleatorio(min INT, max INT)
RETURNS INTEGER
BEGIN
    DECLARE vResultado INT;
    SELECT FLOOR((RAND() * (max - min + 1)) + min) INTO vResultado;
    RETURN vResultado;
END $$

DELIMITER;