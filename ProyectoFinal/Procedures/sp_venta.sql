DELIMITER $$

DROP PROCEDURE IF EXISTS empresa.sp_venta;

CREATE PROCEDURE IF NOT EXISTS empresa.sp_venta(fecha DATE, maxItems INT, maxCantidad INT)
BEGIN
    DECLARE vCliente VARCHAR(11);
    DECLARE vProducto VARCHAR(10);
    DECLARE vVendedor VARCHAR(5);
    DECLARE vCantidad INT;
    DECLARE vPrecio FLOAT;
    DECLARE vItems INT;
    DECLARE vNFactura INT;
    DECLARE vContador INT DEFAULT 1;

    SELECT MAX(numero) + 1 INTO vNFactura FROM facturas;

    SET vCliente = f_cliente_aleatorio();

    SET vVendedor = f_vendedor_aleatorio();

    INSERT INTO facturas (
        numero,
        fecha,
        dni,
        matricula,
        impuesto
    ) VALUES (
        vNFactura,
        fecha,
        vCliente,
        vVendedor,
        0.16
    );

    SET vItems = f_aleatorio(1, maxItems);

    WHILE vContador <= vItems DO

        SET vProducto = f_producto_aleatorio();

        SET vCantidad = f_aleatorio(1, maxCantidad);

        SELECT precio INTO vPrecio FROM productos WHERE codigo = vProducto;

        INSERT INTO items (
            numero, 
            codigo, 
            cantidad, 
            precio
        ) 
        VALUES (
            vNFactura, 
            vProducto, 
            vCantidad, 
            vPrecio
        );

        SET vContador = vContador +1;

    END WHILE;

END $$

DELIMITER;