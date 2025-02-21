DELIMITER $$

DROP FUNCTION IF EXISTS empresa.f_vendedor_aleatorio;

CREATE FUNCTION IF NOT EXISTS empresa.f_vendedor_aleatorio()
RETURNS VARCHAR(5)
BEGIN
    DECLARE vResultado VARCHAR(5);
    DECLARE vMax INT;
    DECLARE vAleatorio INT;

    SELECT COUNT(*) INTO vMax FROM vendedores;

    SET vAleatorio = f_aleatorio(1, vMax);

    SET vAleatorio = vAleatorio - 1;

    SELECT matricula INTO vResultado FROM vendedores LIMIT vAleatorio, 1;

    RETURN vResultado;
END $$

DELIMITER ;