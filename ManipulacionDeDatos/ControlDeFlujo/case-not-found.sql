CREATE DEFINER=`root`@`%` PROCEDURE `define_sabor_con_error`(vCodigo VARCHAR(20))
BEGIN
	DECLARE vSabor varchar(20);
    DECLARE mensajeError VARCHAR(50);

    -- aquí está el caso que no se encuentra
    DECLARE CONTINUE HANDLER FOR 1339
    SET mensajeError = 'Sabor no Definido en ningun caso';
    
    SELECT SABOR INTO vSabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vCodigo;
   
    CASE vSabor
		WHEN 'Maracuyá' THEN SELECT 'Muy Rico';
        WHEN 'Limón' THEN SELECT 'Muy Rico';
        WHEN 'Frutilla' THEN SELECT 'Muy Rico';
        WHEN 'Uva' THEN SELECT 'Muy Rico';
        WHEN 'Sandía' THEN SELECT 'Normal';
        WHEN 'Mango' THEN SELECT 'Normal';
	END CASE;
    SELECT mensajeError;
END