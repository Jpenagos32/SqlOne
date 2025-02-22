CREATE TABLE empresa.vendedores(
    matricula VARCHAR(5) NOT NULL,
    nombre VARCHAR(100),
    barrio VARCHAR(50),
    comision FLOAT,
    fecha_admision DATE,
    vacaciones BIT(1),

    PRIMARY KEY(matricula)
);

SELECT * FROM empresa.vendedores;