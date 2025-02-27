CREATE TABLE IF NOT EXISTS empresa.df_table (id INT, nombre VARCHAR(11));

-- Cambiar el tipo de almacenamiento 
ALTER TABLE empresa.df_table ENGINE = MyISAM;

-- Crear una tabla con un tipo de almacenamiento
CREATE TABLE IF NOT EXISTS empresa.df_table1 (id INT, nombre VARCHAR(100)) ENGINE = MEMORY;