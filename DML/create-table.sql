-- USE ventas_jugos;
-- Crear tabla

CREATE TABLE IF NOT EXISTS tb_vendedor(
	matricula VARCHAR(5) NOT NULL,
    nombre VARCHAR(100) NULL,
    barrio VARCHAR(50) NULL,
    comision FLOAT NULL,
    fecha_admision DATE NULL,
    -- Campo booleano
    de_vacaciones BIT(1) NULL,
    PRIMARY KEY (matricula)
);

-- tabla de productos

CREATE TABLE IF NOT EXISTS tb_producto(
    codigo VARCHAR(10) NOT NULL,
    descripcion VARCHAR(100) NULL,
    sabor VARCHAR(50) NULL,
    tamano VARCHAR(50) NULL,
    envase VARCHAR(50) NULL,
    precio_lista FLOAT NULL,

    PRIMARY KEY (codigo)
);

-- tabla clientes

CREATE TABLE IF NOT EXISTS tb_cliente(
    dni VARCHAR(11) NOT NULL,
    nombre VARCHAR(50) DEFAULT NULL,
    direccion VARCHAR(100) DEFAULT NULL,
    barrio VARCHAR(100) DEFAULT NULL,
    ciudad VARCHAR(100) DEFAULT NULL,
    estado VARCHAR(100) DEFAULT NULL,
    cp VARCHAR(8) DEFAULT NULL,
    fecha_nacimiento DATE DEFAULT NULL,
    edad INT(2) DEFAULT NULL,
    sexo VARCHAR(1) DEFAULT NULL,
    limite_credito FLOAT DEFAULT NULL,
    volumen_compra FLOAT DEFAULT NULL,
    primera_compra BIT(1) DEFAULT NULL,
    
    PRIMARY KEY (dni)
);

-- tabla de ventas

CREATE TABLE IF NOT EXISTS tb_venta(
    numero VARCHAR(5) NOT NULL,
    fecha DATE NULL,
    dni VARCHAR(11) NOT NULL,
    matricula VARCHAR(5) NOT NULL,
    impuesto FLOAT,

    PRIMARY KEY (numero)
);

-- Claves foraneas de la tabla tb_venta
ALTER TABLE tb_venta 
    ADD CONSTRAINT FK_CLIENTE_VENTA
        FOREIGN KEY (dni) 
        REFERENCES tb_cliente(dni)
;

ALTER TABLE tb_venta 
    ADD CONSTRAINT FK_VENDEDOR_VENTA
        FOREIGN KEY (matricula) 
        REFERENCES tb_vendedor(matricula)
;

-- Alterar nombre de tablas
ALTER TABLE tb_venta RENAME tb_factura;

CREATE TABLE IF NOT EXISTS tb_items_facturas (
    numero VARCHAR(5) NOT NULL, -- PK 
    codigo VARCHAR(10) NOT NULL, -- para PK compuesta
    cantidad INT,
    precio FLOAT,

    PRIMARY KEY(numero, codigo)
);

-- Agregar FK para la tabla
ALTER TABLE tb_items_facturas 
    ADD CONSTRAINT FK_FACTURA
    FOREIGN KEY (numero)
    REFERENCES tb_factura (numero)
;

ALTER TABLE tb_items_facturas 
    ADD CONSTRAINT FK_PRODUCTO
    FOREIGN KEY (codigo)
    REFERENCES tb_producto (codigo)
;