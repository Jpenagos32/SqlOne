-- Sintaxis
-- IF condicion THEN
--     if_body
-- ELSE
--     else_body
-- END IF;

CREATE PROCEDURE `edad_clientes` (vDNI VARCHAR(20))
BEGIN
	DECLARE vResultado varchar(50);
    DECLARE vFecha DATE;
    SELECT FECHA_DE_NACIMIENTO INTO vFecha FROM tabla_de_clientes WHERE DNI = vDNI;
    
    IF vFecha < '19950101' THEN
		SET vResultado = 'Cliente Viejo';
	ELSE
		SET vResultado = 'Cliente Viejo';
	END IF;
    
    SELECT vResultado;
END

CALL edad_clientes('31231222')