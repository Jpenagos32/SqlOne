INSERT INTO
    empresa.items
SELECT
    NUMERO,
    CODIGO_DEL_PRODUCTO AS CODIGO,
    CANTIDAD,
    PRECIO
FROM jugos_ventas.items_facturas;

SELECT *
FROM empresa.facturas F
    INNER JOIN empresa.items I ON (F.numero = I.numero);