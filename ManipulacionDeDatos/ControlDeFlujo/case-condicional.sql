DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `precio_producto`(vCodigo VARCHAR(20))
BEGIN
	DECLARE vResultado varchar(40);
    DECLARE vPrecio FLOAT;
    SELECT PRECIO_DE_LISTA INTO vPrecio FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vCodigo;
    
    CASE 
		WHEN vPrecio >= 12 THEN SET vResultado = 'Producto Costoso';
        WHEN vPrecio >= 7 AND vPrecio < 12 THEN SET vResultado = 'Producto Asequible';
        WHEN vPrecio < 7 THEN SET vResultado = 'Producto Barato';
	END CASE;
    
    SELECT vResultado;    
END $$