ALTER TABLE mi_tabla ADD INDEX(campo_existente);
--Eliminar un indice:
ALTER TABLE mi_tabla DROP INDEX(campo_existente);

-- Para poder ver el costo de una consulta
EXPLAIN FORMAT=JSON SELECT * FROM mi_tabla;