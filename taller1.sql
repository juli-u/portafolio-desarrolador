CREATE DATABASE taller_portafolio;
USE taller_portafolio;

CREATE TABLE repuestos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    precio INT,
    cantidad INT
);

INSERT INTO repuestos (nombre, precio, cantidad) 
VALUES ('Pastillas de freno', 45000, 10);

SELECT * FROM repuestos;