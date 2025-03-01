-- Verificar que privilegios tiene un usuario
SELECT * FROM mysql.user;

SHOW GRANTS FOR 'usuario'@'localhost';

-- Revocar los privilegios a un usuario
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'usuario'@'localhost';