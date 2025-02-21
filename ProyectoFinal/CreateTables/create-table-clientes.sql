CREATE TABLE empresa.clientes(
    dni VARCHAR(11) NOT NULL,
    nombre VARCHAR(100) NULL,
    direccion VARCHAR(150),
    barrio VARCHAR(50),
    ciudad VARCHAR(50),
    estado VARCHAR(10),
    cp VARCHAR(10),
    fecha_nacimiento DATE,
    edad SMALLINT,
    sexo VARCHAR(1),
    limite_credito FLOAT,
    volumen_compra FLOAT,
    primera_compra BIT,

    PRIMARY KEY(dni)
);

SELECT * FROM empresa.clientes;