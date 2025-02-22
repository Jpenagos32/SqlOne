-- Sintaxis
-- CREATE PROCEDURE 
-- nombreProcedimiento(params)
-- BEGIN
-- DECLARE <declaracionVariables>
-- proc_body
-- END;



USE `jugos_ventas`;
DROP procedure IF EXISTS `no_hace_nada`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `no_hace_nada` ()
BEGIN

END$$

DELIMITER ;

-- Llamar un procedimiento
CALL hola_mundo();

-- OTRO
DELIMITER //
CREATE PROCEDURE muestra_numero()
BEGIN
SELECT(9+5)*2 AS resultado;
END//
DELIMITER ;

CALL muestra_numero();

-- ###########################
DROP procedure IF EXISTS `concatenar_con_comentarios`;

DELIMITER //
CREATE PROCEDURE concatenar_con_comentarios()
BEGIN
/*
Ejemplo de comentario al interior de un procedimiento
*/
SELECT CONCAT('Hola a Todos!!', ' ', 'Este procedure concatena strings');
END//
DELIMITER ;

CALL concatenar_con_comentarios();