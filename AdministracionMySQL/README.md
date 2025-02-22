## Papel del DBA

- Profesional encargado de administrar la base de datos
- Evalúa el ambiente
- Configura los accesos a la base de datos de forma segura
- Mantiene la base de datos con buen desempeño
- Almacena los datos, realiza backup de los mismos
- Apoya el area de desarrollo con el mantenimiento de los datos
- Monitorea la instalación del RDBMS, gestiona los recursos usados por la base de dadtos
- Configura el ambiente y sus diversas propiedades (my.ini)
- Administra los usuarios que tendrán acceso a la base de datos.

## Archivo con todas las conecciones de mysql

`AppData/Roaming/MySQL/Workbench/connections.xml`

## Tunning de hardware (poner a punto)

4 Formas de configurar el ambiente MySQL para hacer el tuning:
- Esquemas, indices, variables internas de Mysql y hardware/sistema operativo

### Hardware:
- Trabajar con sistemas operativos de 64 bits
- Configuración de la ram(Ajustar el parametro interno para el uso maximo de la ram)
- Tipo de lectura de disco (HDD o SSD)
- Uso de controlador de disco RAID (0,1,5,10). Son empleados para la seguridad de los discos
    - `RAID 0`: Divide los datos en dos discos diferentes, aunque observamos tan solo 1 drive y el sistema operativo divide el dato en los discos
    - `RAID 1`: Uno de los HD es copia del otro
    - `RAID 5`: Divide los datos en más de dos HD, aunque observamos tan solo 1 drive y el sistema operativo divide el dato en todos los discos
    - `RAID 10`: Los HD tienen espejo.
- Aunque RAID 1 y RAID 10 consumen más espacio, son mucho más seguros porque hay redundancia de los datos.

## Variables de ambiente

- Son variables que se declaran afuera del programa para que al momento de su inicialización queden predefinidos diversos parámetros del funcionamiento.
- Existen más de 250 variables de ambiente de MySQL.
- `SHOW STATUS`: Muestra los valores actuales de las variables de ambiente
- 2 tipos de variables: `GLOBAL` y `SESSION`
- my.ini (Linux: my.cnf). Dos directivas: [mysqld] [client] https://dev.mysql.com/doc/refman/8.4/en/server-system-variables.html
    - Ubicacion archivo my.ini: `C:/ProgramData/MySQL/MySQL Server8.0/my.ini`

## Mecanismos de almacenamiento
- La forma de almacenar la información en las tablas
- Mysql 8.0 community dispone de 9 mecanismos para almacenar datos en las tablas.
- `ENGINE`: Es el parámetro que indica el mecanismo de almacenamiento empleado en la tabla.
- Los 3 principales engines son: `MyISAM`, `InnoDB`, `MEMORY`

### MyISAM:
- No es transaccional (no está diseñado para que varios usuarios realicen operaciones simultaneamente).
- Solamente permite el bloqueo a nivel tabla (lectura más rápida)
- Recomendable para tablas que no están cambiando continuamente.
- La clave externa no soporta full text
- Almacena datos de manera más compacta
- Implementa indices HAS y BTREE
