-- Un trigger es un procedimiento que se ejecuta cada vez que se ejecuta una modificacion
-- en la base de datos

-- SINTAXIS:
-- CREATE 
-- TRIGGER trigger_name
-- {BEFORE | AFTER } {INSERT | UPDATE | DELETE}
-- ON table_name FOR EACH ROW
-- BEGIN
--   trg_body
-- END;

DELIMITER // 
CREATE TRIGGER tg_facturacion_insert
AFTER INSERT ON tb_items_facturas1
FOR EACH ROW BEGIN
  DELETE FROM tb_facturacion;
  INSERT INTO tb_facturacion
  SELECT a.fecha, SUM(b.cantidad * b.precio) AS venta_total
  FROM tb_factura1 a
  INNER JOIN
  tb_items_facturas1 b
  ON a.numero = b.numero
  GROUP BY a.fecha;
END //

-- Otro ejemplo
DELIMITER //
CREATE TRIGGER tg_edad_clientes_insert
BEFORE INSERT ON tb_clientes
FOR EACH ROW BEGIN
  SET NEW.edad = timestampdiff(YEAR, NEW.fecha_nacimiento, NOW());
END //

-- Trigger para DELETE
DELIMITER // 
CREATE TRIGGER tg_facturacion_delete
AFTER DELETE ON tb_items_facturas1
FOR EACH ROW BEGIN
  DELETE FROM tb_facturacion;
  INSERT INTO tb_facturacion
  SELECT a.fecha, SUM(b.cantidad * b.precio) AS venta_total
  FROM tb_factura1 a
  INNER JOIN
  tb_items_facturas1 b
  ON a.numero = b.numero
  GROUP BY a.fecha;
END //

-- trigger para UPDATE
DELIMITER // 
CREATE TRIGGER tg_facturacion_update
AFTER UPDATE ON tb_items_facturas1
FOR EACH ROW BEGIN
  DELETE FROM tb_facturacion;
  INSERT INTO tb_facturacion
  SELECT a.fecha, SUM(b.cantidad * b.precio) AS venta_total
  FROM tb_factura1 a
  INNER JOIN
  tb_items_facturas1 b
  ON a.numero = b.numero
  GROUP BY a.fecha;
END //
