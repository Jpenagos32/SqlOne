CREATE DEFINER=`root`@`%` PROCEDURE `incluir_producto_parametros`(vCodigo VARCHAR(20), vNombre VARCHAR(20), vSabor VARCHAR(20), vTamano VARCHAR(20), vEnvase VARCHAR(20), vPrecio DECIMAL(4,2))
BEGIN
	DECLARE mensaje VARCHAR(40);

    -- Mensaje para tratar los errores:
    DECLARE EXIT HANDLER FOR 1062
    BEGIN
		SET mensaje = 'Producto Duplicado';
        SELECT mensaje;
    END;
    
	INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
		VALUES (vCodigo, vNombre, vSabor, vTamano, vEnvase, vPrecio);
	SET mensaje = 'Producto incluido con exito';
    SELECT mensaje;
END