-- Excluyendo datos de la tabla
DELETE FROM tb_producto WHERE codigo = '1001000';

DELETE FROM tb_producto WHERE tamano = '1 Litro';

-- Eliminar datos usando select (elimina todo lo que no esté en la otra tabla)
DELETE FROM tb_producto
WHERE codigo NOT IN (
  SELECT codigo_del_producto FROM jugos_ventas.tabla_de_productos
);

-- Borrar toda la tabla
DELETE FROM tb_producto;