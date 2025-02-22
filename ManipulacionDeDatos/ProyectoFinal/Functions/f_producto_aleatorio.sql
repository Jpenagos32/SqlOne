DELIMITER $$

DROP FUNCTION IF EXISTS empresa.f_producto_aleatorio;

CREATE FUNCTION IF NOT EXISTS empresa.f_producto_aleatorio()
RETURNS VARCHAR(10)
BEGIN
    DECLARE vResultado VARCHAR(10);
    DECLARE vMax INT;
    DECLARE vAleatorio INT;

    SELECT COUNT(*) INTO vMax FROM productos;

    SET vAleatorio = f_aleatorio(1, vMax);

    SET vAleatorio = vAleatorio-1;

    SELECT codigo INTO vResultado FROM productos LIMIT vAleatorio,1;

    RETURN vResultado;
END $$

DELIMITER ;