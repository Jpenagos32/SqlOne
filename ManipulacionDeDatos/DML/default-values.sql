-- Crear valores por defecto en un campo de una tabla
CREATE TABLE tb_default(
  id INT AUTO_INCREMENT,
  descripcion VARCHAR(50) NOT NULL,
  direccion VARCHAR(100),
  ciudad VARCHAR(50) DEFAULT 'Monterrey',
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  
  PRIMARY KEY(id)
);