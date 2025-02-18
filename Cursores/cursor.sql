-- Es una estructura que permite la interaccion linea a linea en un orden determinado
-- DECLARE variable VARCHAR(10)
-- DECLARE cursor_1 CURSOR FOR
--     SELECT nombre FROM tabla_1;

-- OPEN cursor_1;
--     FETCH cursor_1 INTO variable;
-- CLOSE cursor_1;
DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `cursor_1`()
BEGIN
	DECLARE vNombre VARCHAR(50);
    DECLARE c CURSOR FOR SELECT nombre FROM tabla_de_clientes LIMIT 4;
    OPEN c;
		FETCH c INTO vNombre;
        SELECT vNombre;
        FETCH c INTO vNombre;
        SELECT vNombre;
        FETCH c INTO vNombre;
        SELECT vNombre;
        FETCH c INTO vNombre;
        SELECT vNombre;
	CLOSE c;
END $$