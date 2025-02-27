CREATE DATABASE base;
DROP DATABASE base;
-- Mostrar el directorio en el que están almacenadas nuestras bases de datos
SHOW VARIABLES WHERE Variable_Name LIKE '%dir';

-- Cambiar el directorio donde se almacenan las bases de datos
-- En el archivo My.ini buscamos la variable datadir y cambiamos la ruta donde se debe almacenar la base de datos