CREATE TABLE empresa.facturas(
    numero VARCHAR(5) NOT NULL,
    fecha DATE,
    dni VARCHAR(11) NOT NULL,
    matricula VARCHAR(5) NOT NULL,
    impuesto FLOAT,

    PRIMARY KEY (numero),
    FOREIGN KEY (dni) REFERENCES empresa.clientes(dni),
    Foreign Key (matricula) REFERENCES empresa.vendedores(matricula)
);