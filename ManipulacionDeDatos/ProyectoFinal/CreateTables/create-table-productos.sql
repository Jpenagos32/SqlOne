CREATE TABLE empresa.productos(
    codigo VARCHAR(10) NOT NULL,
    descripcion VARCHAR(100),
    sabor VARCHAR(50),
    tamano VARCHAR(50),
    envase VARCHAR(50),
    precio FLOAT,

    PRIMARY KEY(codigo)
);

SELECT * FROM empresa.productos;