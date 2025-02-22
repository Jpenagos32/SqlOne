-- Crea un punto de estado en la base de datos
-- commit confirma y graba la información entre start transaction y commit
-- rollback rechaza la transacción

START TRANSACTION;
INSERT INTO tb_vendedor
VALUES(
  '257',
  'Fernando Rojas',
  'Oblatos',
  '0.1',
  '2015-06-14',
  0
);
INSERT INTO tb_vendedor
VALUES(
  '258',
  'David Rojas',
  'Oblatos',
  '0.1',
  '2015-06-14',
  0
);

UPDATE tb_vendedor SET comision = comision * 1.05;
-- ROLLBACK;
-- COMMIT;

SELECT * FROM tb_vendedor;