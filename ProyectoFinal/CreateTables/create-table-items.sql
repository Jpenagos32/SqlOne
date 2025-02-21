CREATE TABLE empresa.items (
    numero INT NOT NULL,
    codigo VARCHAR(10) NOT NULL,
    cantidad INT,
    precio FLOAT,

    PRIMARY KEY (numero, codigo),
    Foreign Key (numero) REFERENCES empresa.facturas(numero),
    Foreign Key (codigo) REFERENCES empresa.productos(codigo)
);
