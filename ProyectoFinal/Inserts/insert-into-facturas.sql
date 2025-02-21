INSERT INTO
    empresa.facturas
SELECT
    NUMERO,
    FECHA_VENTA AS FECHA,
    DNI,
    MATRICULA,
    IMPUESTO
FROM jugos_ventas.facturas;

SELECT *
FROM empresa.facturas F
    INNER JOIN empresa.items I ON (F.numero = I.numero);