-- Crear el usuario
CREATE USER 'admin01' @'localhost' IDENTIFIED BY 'contraseña'; -- el localhost hace referencia desde donde se puede conectar el usuario
-- localhost se debe reemplazar por la ip desde donde se conectará el usuario o un % para indicar que se puede conectar desde cualquier lugar

-- Darle todos los permisos en todas las tablas de todas las bases de datos
GRANT ALL PRIVILEGES ON *.* TO 'admin' @'localhost' WITH GRANT OPTION;

-----------------------------------------------------------------------------------

-- Crear un usuario con privilegios limitados
CREATE USER 'usuario' @'localhost' IDENTIFIED BY 'contraseña';

-- Darle los privilegios necesarios
GRANT
    SELECT,
    INSERT,
    UPDATE,
    DELETE,
    CREATE TEMPORARY TABLES,
    LOCK TABLES,
    EXECUTE 
ON *.* TO 'usuario' @'localhost';

-----------------------------------------------------------------------------------

-- Crear usuarios de solo lectura
CREATE USER 'lectura' @'localhost' IDENTIFIED BY 'contraseña';

-- Darle los privilegios necesarios
GRANT
    SELECT,
    EXECUTE 
ON *.* TO 'lectura' @'localhost';

-----------------------------------------------------------------------------------

-- Crear usuarios para backup
CREATE USER 'backup' @'localhost' IDENTIFIED BY 'contraseña';

-- Darle los privilegios necesarios
GRANT
    SELECT,
    RELOAD,
    LOCK TABLES,
    REPLICATION CLIENT 
ON *.* TO 'backup' @'localhost';

-----------------------------------------------------------------------------------

-- Dar permisos a un usuario a ciertos esquemas y ciertas tablas
CREATE USER 'userLimitado' @'%' IDENTIFIED BY 'contraseña';

-- Darle los privilegios necesarios
GRANT
    SELECT,
    INSERT,
    UPDATE,
    DELETE,
    CREATE TEMPORARY TABLES,
    LOCK TABLES,
    EXECUTE
ON mi_esquema.* TO 'userLimitado' @'%';

CREATE USER 'userLimitado02' @'%' IDENTIFIED BY 'contraseña';

-- Darle los privilegios necesarios
GRANT
    SELECT,
    INSERT,
    UPDATE,
    DELETE
ON mi_esquema.mi_tabla TO 'userLimitado02' @'%';