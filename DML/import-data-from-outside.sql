-- importar datos desde otra base de datos
INSERT INTO tb_producto
  SELECT 
    codigo_del_producto AS codigo, 
    nombre_del_producto AS descripcion, 
    sabor,
    tamano,
    envase,
    precio_de_lista AS precio_lista
  FROM jugos_ventas.tabla_de_productos
  WHERE codigo_del_producto NOT IN (SELECT codigo FROM tb_producto)
;