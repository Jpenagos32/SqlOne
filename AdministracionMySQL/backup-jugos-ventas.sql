-- Para poder hacer un backup puede que sea necesario (intentar antes ejecutar el comando sin ir a la ruta) ir a la carpeta bin que se encuentra dentro 
-- de la carpeta donde se instaló mysql server y ejecutar el siguiente comando en una terminal
mysqldump -uroot -p --databases jugos_ventas > <ruta y nombre para el archivo de salida>

-- Evitar una tabla a la hora de crear el backup
mysqldump -uroot -p --databases jugos_ventas --ignore-table jugos_ventas.facturas > <ruta y nombre para el archivo de salida>

-- recuperar copias de seguridad

-- Primero crear la base de datos:
CREATE DATABASE jugos_ventas;

-- Ingresar a la CLI de mysql

mysql -uroot -p < <ruta al archivo con el backup>
