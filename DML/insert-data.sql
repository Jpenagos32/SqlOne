USE ventas_jugos;

-- Insertar datos
INSERT INTO tb_producto (codigo, descripcion, sabor, tamano, envase, precio_lista)
  VALUES (
    '1040107',
    'Light',
    'Sandia',
    '350 ml',
    'Lata',
    4.56
  )  
;

INSERT INTO tb_producto (codigo, sabor, descripcion, tamano, envase, precio_lista)
  VALUES (
    '1040108',
    'Guanábana',
    'Light',
    '350 ml',
    'Lata',
    4.00
  )
;
INSERT INTO tb_producto
  VALUES (
    '1040109',
    'Asaí',
    'Light',
    '350 ml',
    'Lata',
    5.60
  )
;

INSERT INTO tb_producto
  VALUES 
  ('1040110', 'Banana', 'Light', '350 ml', 'Lata', 5.60),
  ('1040111', 'Manzana', 'Light', '350 ml', 'Lata', 5.60),
  ('1040112', 'Mango', 'Light', '350 ml', 'Lata', 5.60)
;

SELECT * FROM tb_producto;