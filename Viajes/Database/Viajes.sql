Create Database Viajes;
Use Viajes;
Go

-- Crear la tabla Viajero
CREATE TABLE Viajero (
  id_viajero INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  pasaporte VARCHAR(20) UNIQUE NOT NULL,
  nacionalidad VARCHAR(50) NOT NULL
);

-- Crear la tabla Pais
CREATE TABLE Pais (
  id_pais INT PRIMARY KEY,
  nombre VARCHAR(50) UNIQUE,
  provincia VARCHAR(50) NOT NULL
);

-- Crear la tabla Login
CREATE TABLE Login (
  id_login INT PRIMARY KEY,
  id_viajero INT UNIQUE NOT NULL,
  username VARCHAR(50) UNIQUE NOT NULL,
  password VARCHAR(100) NOT NULL,
  role VARCHAR(20) NOT NULL,
  FOREIGN KEY (id_viajero) REFERENCES Viajero(id_viajero)
);

-- Crear la tabla Viaje
CREATE TABLE Viaje (
  id_viaje INT PRIMARY KEY,
  id_viajero INT NOT NULL,
  fecha_salida DATE NOT NULL,
  fecha_regreso DATE NOT NULL,
  destino VARCHAR(100) NOT NULL,
  FOREIGN KEY (id_viajero) REFERENCES Viajero(id_viajero)
);

-- Crear la tabla Entrada
CREATE TABLE Entrada (
  id_entrada INT PRIMARY KEY,
  id_viajero INT NOT NULL,
  fecha_entrada DATE NOT NULL,
  lugar_entrada VARCHAR(100) NOT NULL,
  FOREIGN KEY (id_viajero) REFERENCES Viajero(id_viajero)
);
-- Crear la tabla Salida
CREATE
 TABLE Salida (
  id_salida INT PRIMARY KEY,
  id_viajero INT NOT NULL,
  fecha_salida DATE NOT NULL,
  lugar_salida VARCHAR(100) NOT NULL,
  FOREIGN KEY (id_viajero) REFERENCES Viajero(id_viajero)
);