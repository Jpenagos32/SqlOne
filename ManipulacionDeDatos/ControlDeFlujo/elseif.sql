-- sintaxis
-- IF CONDICION THEN
--     IF_STATEMENT
-- ELSEIF CONDICION
--     ELSEIF_STATEMENT
-- (...)
-- ELSE
--     ELSE_STATEMENT
-- END IF;

CREATE DEFINER=`root`@`%` PROCEDURE `precio_producto`(vCodigo VARCHAR(20))
BEGIN
	DECLARE vResultado varchar(40);
    DECLARE vPrecio FLOAT;
    SELECT PRECIO_DE_LISTA INTO vPrecio FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vCodigo;
    
    IF vPrecio >= 12 THEN 
		SET vResultado = 'Producto Costoso';
	ELSEIF vPrecio >= 7 AND vPrecio < 12 THEN
		SET vResultado = 'Producto Asequible';
	ELSE 
		SET vResultado = 'Producto Barato';
	END IF;
    
    SELECT vResultado;    
END