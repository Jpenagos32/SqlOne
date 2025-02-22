DELIMITER $$
USE `jugos_ventas`$$
CREATE DEFINER=`root`@`%` PROCEDURE `cursor_looping_varios_campos`()
BEGIN
DECLARE fin_c INT DEFAULT 0;
DECLARE vNombre, vDireccion VARCHAR(150);
DECLARE vBarrio, vCiudad, vCp, vEstado VARCHAR (50);
DECLARE c CURSOR FOR SELECT nombre, direccion_1, barrio, ciudad, estado, cp FROM tabla_de_clientes;

DECLARE CONTINUE HANDLER FOR NOT FOUND
	SET fin_c = 1
;
    
    OPEN c;
		WHILE fin_c = 0
        DO
			FETCH c INTO vNombre, vDireccion, vBarrio, vCiudad, vEstado, vCp;
			IF fin_c = 0 THEN 
				SELECT CONCAT(vNombre, ' - Direccion: ', vDireccion, ' - ', vBarrio, ' - ', vCiudad, ' - ',vEstado,' - ', vCp) AS resultado;
			END IF;
        END WHILE;
	CLOSE c;
END$$

DELIMITER ;