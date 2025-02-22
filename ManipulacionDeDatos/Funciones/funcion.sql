-- CREATE FUNCTION nombre_funcion(params)
-- RETURNS tipo_de_dato
-- BEGIN
--     DECLARE <declaration_statement>

--     <executable_statement>

--     RETURN <statement>
-- END;

-- Despues de instalar MySQL es necesario correr lo siguiente
-- SET GLOBAL log_bin_trust_function_creators = 1;
-- esto debido a que MySQL no permite la creación de funciones por defecto

DELIMITER $$
USE `jugos_ventas`$$
CREATE FUNCTION `f_define_sabor` (vSabor VARCHAR(40))
RETURNS VARCHAR(40)
BEGIN
	DECLARE vRetorno VARCHAR(40) DEFAULT "";

	CASE vSabor
		WHEN 'Maracuyá' THEN SET vRetorno =  'Muy Rico';
        WHEN 'Limón' THEN SET vRetorno =  'Muy Rico';
        WHEN 'Frutilla' THEN SET vRetorno =  'Muy Rico';
        WHEN 'Uva' THEN SET vRetorno =  'Muy Rico';
        WHEN 'Sandía' THEN SET vRetorno =  'Normal';
        WHEN 'Mango' THEN SET vRetorno =  'Normal';
        ELSE SET vRetorno = 'Jugos Comunes';
	END CASE;
RETURN vRetorno;
END$$

DELIMITER ;

-- Llamar la función

SELECT f_define_sabor('Maracuyá');

SELECT 
    nombre_del_producto, 
    sabor, 
    f_define_sabor(sabor) AS tipo 
FROM tabla_de_productos;

SELECT 
	nombre_del_producto, sabor 
FROM tabla_de_productos
WHERE f_define_sabor(sabor) = 'Muy Rico';