-- usado cuando no sabemos el tamaño del cursor
CREATE PROCEDURE `cursor_looping` ()
BEGIN
DECLARE fin_c INT DEFAULT 0;
DECLARE vNombre VARCHAR(50);
DECLARE c CURSOR FOR SELECT nombre FROM tabla_de_clientes;

DECLARE CONTINUE HANDLER FOR NOT FOUND
	SET fin_c = 1
;
    
    OPEN c;
		WHILE fin_c = 0
        DO
			FETCH c INTO vNombre;
			IF fin_c = 0 THEN 
				SELECT vNombre;
			END IF;
        END WHILE;
	CLOSE c;
END
