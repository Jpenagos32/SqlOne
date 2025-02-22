DELIMITER $$

DROP FUNCTION IF EXISTS f_cliente_aleatorio;

CREATE FUNCTION IF NOT EXISTS empresa.f_cliente_aleatorio()
RETURNS VARCHAR(11)
BEGIN
    DECLARE vResultado VARCHAR(11);
    DECLARE vMax INT;
    DECLARE vAleatorio INT;

    SELECT COUNT(*) INTO vMax FROM clientes;

    SET vAleatorio = f_aleatorio(1, vMax);

    SET vAleatorio = vAleatorio - 1;

    SELECT dni INTO vResultado FROM clientes LIMIT vAleatorio,1;

    RETURN vResultado;
END $$

DELIMITER ;