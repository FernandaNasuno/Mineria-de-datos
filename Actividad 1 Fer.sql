
CREATE DATABASE datosgenerales;
GO

USE datosgenerales;
GO

CREATE TABLE datospersonales (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(150),
    Ciudad VARCHAR(50),
    Num_Telefono VARCHAR(15),
    Email VARCHAR(100),
    Genero VARCHAR(10) -- 'Masculino', 'Femenino'
);
GO

CREATE TABLE Sucursal (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nombre_sucursal VARCHAR(100) NOT NULL,
    Ciudad VARCHAR(50),
    Direccion VARCHAR(150),
    Cantidad_ventas_anuales DECIMAL(12,2)
);
GO

CREATE TABLE datosempleado (
    Codigo INT PRIMARY KEY IDENTITY(1001,1),
    FK_datospersonales INT FOREIGN KEY REFERENCES datospersonales(ID),
    FK_Sucursal INT FOREIGN KEY REFERENCES Sucursal(ID),
    Cargo VARCHAR(50),
    Horario VARCHAR(50),
    Salario DECIMAL(10,2)
);
GO


USE datosgenerales;
GO

INSERT INTO Sucursal (Nombre_sucursal, Ciudad, Direccion, Cantidad_ventas_anuales) VALUES
('Sucursal Centro', 'Ciudad de México', 'Av. Juárez 45', 1250000.00),
('Sucursal Norte', 'Monterrey', 'Av. Constitución 890', 980000.00),
('Sucursal Poniente', 'Guadalajara', 'Av. Vallarta 1200', 1100000.00),
('Sucursal Sur', 'Puebla', 'Calle 5 de Mayo 302', 750000.00),
('Sucursal Oriente', 'Querétaro', 'Blvd. Bernardo Quintana 400', 890000.00),
('Sucursal Bajío', 'León', 'Av. López Mateos 15', 620000.00),
('Sucursal Costa', 'Veracruz', 'Av. Malecón 50', 540000.00),
('Sucursal Frontera', 'Tijuana', 'Av. Revolución 101', 1350000.00),
('Sucursal Sureste', 'Mérida', 'Calle 60 412', 680000.00),
('Sucursal Hidalgo', 'Pachuca', 'Av. Juárez 80', 490000.00);

INSERT INTO datospersonales (Nombre, Direccion, Ciudad, Num_Telefono, Email, Genero) VALUES
('Carlos Mendoza', 'Calle Olivos 12', 'Ciudad de México', '5551234567', 'carlos.m@mail.com', 'Masculino'),
('Ana Sofía Gómez', 'Av. Hidalgo 43', 'Monterrey', '8187654321', 'ana.gomez@mail.com', 'Femenino'),
('Luis Fernando Torres', 'Calle Roble 8', 'Guadalajara', '3339876543', 'luis.torres@mail.com', 'Masculino'),
('María Elena López', 'Av. Juárez 90', 'Puebla', '2223456789', 'maria.lopez@mail.com', 'Femenino'),
('Jorge Ramírez', 'Calle Pino 34', 'Querétaro', '4421122334', 'jorge.r@mail.com', 'Masculino'),
('Laura Beatriz Castro', 'Av. Central 5', 'León', '4779988776', 'laura.castro@mail.com', 'Femenino'),
('Roberto Hernández', 'Calle Palma 88', 'Veracruz', '2295544332', 'roberto.h@mail.com', 'Masculino'),
('Patricia Morales', 'Av. Sonora 120', 'Tijuana', '6646677889', 'patricia.m@mail.com', 'Femenino'),
('Gabriel Vargas', 'Calle 21 io, Salario) VALUES
(1, 1, 'Gerente General', 'Matutino (08:00 - 17:00)', 38000.00),
(2, 2, 'Administradora', 'Matutino (08:00 - 17:00)', 25000.00),
(3, 3, 'Soporte Técnico', 'Mixto (10:00 - 19:00)', 18000.00),
(4, 4, 'Vendedora', 'Vespertino (12:00 - 20:00)', 12500.00),
(5, 5, 'Contador', 'Matutino (08:00 - 17:00)', 22000.00),
(6, 6, 'Vendedora', 'Matutino (09:00 - 18:00)', 12000.00),
(7, 7, 'Técnico Ensamblador', 'Vespertino (12:00 - 20:00)', 14000.0#45', 'Mérida', '9993322110', 'gabriel.vargas@mail.com', 'Masculino'),
('Diana Marcela Reyes', 'Av. Revolución 3', 'Pachuca', '7714455667', 'diana.reyes@mail.com', 'Femenino');

INSERT INTO datosempleado (FK_datospersonales, FK_Sucursal, Cargo, Horar0),
(8, 8, 'Gerente de Ventas', 'Matutino (08:00 - 17:00)', 31000.00),
(9, 9, 'Ejecutivo de Cuenta', 'Matutino (08:00 - 17:00)', 16500.00),
(10, 10, 'Auxiliar de Tienda', 'Vespertino (12:00 - 20:00)', 9800.00);