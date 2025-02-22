-- sintaxis
-- CASE selector

--     WHEN selector_value_1 THEN then_staement;
--     WHEN selector_value_2 THEN then_staement;
--     WHEN selector_value_n THEN then_staement;

--     ELSE else_statement

-- END CASE;

CREATE PROCEDURE `define_sabor` (vCodigo VARCHAR(20))
BEGIN
	DECLARE vSabor varchar(20);
    SELECT SABOR INTO vSabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vCodigo;
    
    CASE vSabor
		WHEN 'Maracuyá' THEN SELECT 'Muy Rico';
        WHEN 'Limón' THEN SELECT 'Muy Rico';
        WHEN 'Frutilla' THEN SELECT 'Muy Rico';
        WHEN 'Uva' THEN SELECT 'Muy Rico';
        WHEN 'Sandía' THEN SELECT 'Normal';
        WHEN 'Mango' THEN SELECT 'Normal';
        ELSE SELECT 'Jugos Comunes';
	END CASE;
END
