-- Esto es un comentario


CREATE DATABASE pumabus; -- Creamos nuestra base de datos
USE pumabus;

DROP DATABASE IF EXISTS pumabus; -- Eliminamos la base de datos si ya existe

-- tabla camiones 
CREATE TABLE Camiones (
    num_serie INT PRIMARY KEY,
    placa VARCHAR(10),
    modelo VARCHAR(50),
    combustible VARCHAR(20)
);

-- tabla conductores
CREATE TABLE Conductores (
    num_trabajador INT PRIMARY KEY,
    nombre VARCHAR(100),
    status BOOLEAN,
    edad INT
);

-- tabla rutas
CREATE TABLE Rutas (
    id_ruta INT PRIMARY KEY,
    base VARCHAR(50),
    numero INT
);

-- tabla paradas 
CREATE TABLE Paradas (
    id_parada INT PRIMARY KEY,
    facultad VARCHAR(100),
    transbordo VARCHAR(50)
);

-- tabla conductores_camiones (relacion muchos a muchos)
CREATE TABLE Conductor_Camion (
    num_trabajador INT,
    num_serie INT,
    turno VARCHAR(20),
    fecha DATE,
    
    PRIMARY KEY (num_trabajador, num_serie),

    FOREIGN KEY (num_trabajador) 
        REFERENCES Conductores(num_trabajador),

    FOREIGN KEY (num_serie) 
        REFERENCES Camiones(num_serie)
);

-- tabla camion=rutas
CREATE TABLE Camion_Ruta (
    num_serie INT,
    id_ruta INT,
    horario_inicio TIME,
    horario_fin TIME,

    PRIMARY KEY (num_serie, id_ruta),

    FOREIGN KEY (num_serie) 
        REFERENCES Camiones(num_serie),

    FOREIGN KEY (id_ruta) 
        REFERENCES Rutas(id_ruta)
);

-- ruta paradas 
CREATE TABLE Ruta_Parada (
    id_ruta INT,
    id_parada INT,
    orden INT,

    PRIMARY KEY (id_ruta, id_parada),

    FOREIGN KEY (id_ruta) 
        REFERENCES Rutas(id_ruta),

    FOREIGN KEY (id_parada) 
        REFERENCES Paradas(id_parada)
);



SHOW DATABASES; -- nos permite ver nuestras bases de datos

USE pumabus; -- seleccionamos la base de datos que acabamos de crear

SHOW TABLES; -- Nos muestra las tablas que tenemos en nuestra base de datos

DESCRIBE Rutas; -- Nos muestra la estructura de la tabla Rutas


-- INSERTAMOS DATOS DE PRUEBA

-- Camiones 
INSERT INTO Camiones (num_serie, placa, modelo, combustible) VALUES
(1001, 'PUMA-01', 'Mercedes Sprinter', 'Diesel'),
(1002, 'PUMA-02', 'Mercedes Sprinter', 'Diesel'),
(1003, 'PUMA-03', 'Volkswagen Crafter', 'Diesel'),
(1004, 'PUMA-04', 'Volkswagen Crafter', 'Diesel');


-- Conductores
INSERT INTO Conductores (num_trabajador, nombre, status, edad) VALUES
(501, 'Carlos Hernandez', TRUE, 45),
(502, 'Ana Martinez', TRUE, 38),
(503, 'Luis Ramirez', TRUE, 41),
(504, 'Jorge Morales', TRUE, 36);

-- Rutas
INSERT INTO Rutas (id_ruta, base, numero) VALUES
(1, 'Metro Universidad', 1),
(2, 'Metro Universidad', 2),
(3, 'Estadio Olimpico', 6),
(4, 'Zona Cultural', 13);


-- Paradas
INSERT INTO Paradas (id_parada, facultad, transbordo) VALUES
(10, 'Facultad de Ingenieria', 'Metrobus CU'),
(11, 'Rectoria', 'Ninguno'),
(12, 'Facultad de Medicina', 'Metro Universidad'),
(13, 'Facultad de Ciencias', 'Ninguno'),
(14, 'Biblioteca Central', 'Ninguno');

-- Conductor_Camion
INSERT INTO Conductor_Camion (num_trabajador, num_serie, turno, fecha) VALUES
(501, 1001, 'mañana', '2026-03-10'),
(502, 1002, 'mañana', '2026-03-10'),
(503, 1003, 'tarde', '2026-03-10'),
(504, 1004, 'tarde', '2026-03-10');

-- Camion_Ruta
INSERT INTO Camion_Ruta (num_serie, id_ruta, horario_inicio, horario_fin) VALUES
(1001, 1, '06:00:00', '12:00:00'),
(1002, 2, '06:00:00', '12:00:00'),
(1003, 3, '12:00:00', '18:00:00'),
(1004, 4, '12:00:00', '18:00:00');

-- Ruta_Parada
INSERT INTO Ruta_Parada (id_ruta, id_parada, orden) VALUES
(1, 12, 1),
(1, 11, 2),
(1, 14, 3),

(2, 10, 1),
(2, 11, 2),
(2, 13, 3),

(3, 11, 1),
(3, 14, 2),

(4, 14, 1),
(4, 13, 2);


--Probemos si se insertaron los datos 
SELECT * FROM Camiones;
SELECT * FROM Conductores;



-- Consulta de prueba 
SELECT r.numero AS ruta, p.facultad, rp.orden
FROM Rutas r
JOIN Ruta_Parada rp ON r.id_ruta = rp.id_ruta
JOIN Paradas p ON rp.id_parada = p.id_parada
ORDER BY r.numero, rp.orden;
