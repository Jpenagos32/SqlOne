-- Actualizar datos

UPDATE tb_producto
  SET precio_lista = 5 WHERE codigo = '1000889'
;

UPDATE tb_producto 
  SET
    descripcion = 'Sabor de la Montaña',
    tamano = '1 Litro',
    envase = 'Botella PET'
  WHERE codigo = '1040109'
;

-- Actualizar con union de tablas (actualización dinámica)
UPDATE tb_vendedor A
  INNER JOIN jugos_ventas.tabla_de_vendedores B
    ON A.matricula = SUBSTRING(B.matricula,3,3)
SET A.de_vacaciones = B.vacaciones;

SELECT * FROM tb_vendedor;
