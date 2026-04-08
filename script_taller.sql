CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL
);


CREATE TABLE proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa VARCHAR(100),
    telefono VARCHAR(20)
);

DROP TABLE IF EXISTS repuestos;

CREATE TABLE repuestos (
    id_repuesto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio INT NOT NULL,
    stock_actual INT DEFAULT 0,
    id_categoria INT,
    id_proveedor INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);


INSERT INTO categorias (nombre_categoria) VALUES ('Frenos'), ('Motor'), ('Llantas');
INSERT INTO proveedores (nombre_empresa, telefono) VALUES ('MotoPartes Bogotá', '3101234567');


INSERT INTO repuestos (nombre, precio, stock_actual, id_categoria, id_proveedor) 
VALUES ('Kit de Arrastre', 120000, 3, 2, 1);


SELECT r.nombre, r.precio, c.nombre_categoria, p.nombre_empresa
FROM repuestos r
JOIN categorias c ON r.id_categoria = c.id_categoria
JOIN proveedores p ON r.id_proveedor = p.id_proveedor;