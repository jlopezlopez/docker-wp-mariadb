-- Tabla socios
CREATE TABLE Socios (
    numsocio INT PRIMARY KEY,
    dni VARCHAR(10),
    nombre VARCHAR(30),
    apellido1 VARCHAR(30),
    apellido2 VARCHAR(30),
    direccion VARCHAR(40),
    cp INT,
    localidad VARCHAR(30),
    telefono1 VARCHAR(12),
    telenono2 VARCHAR(12),
    observaciones VARCHAR(100),
    email VARCHAR(50),
    fecha_alta DATE,
    poblacion_origen VARCHAR(30),
    num_id INT,
    activo BOOLEAN,
    numero_ccc VARCHAR(24)  
);

-- Tabla bajas
CREATE TABLE bajas (
    numsocio INT,
    fecha_baja DATE,
    motivo_baja VARCHAR(100),
    PRIMARY KEY (numsocio, fecha_baja),
    FOREIGN KEY (numsocio) REFERENCES Socios(numsocio)
);

-- Tabla cuotas
CREATE TABLE cuotas (
    numsocio INT,
    anno INT,
    fecha_pago DATE,
    cuantia DOUBLE,
    PRIMARY KEY (numsocio, anno),
    FOREIGN KEY (numsocio) REFERENCES Socios(numsocio)
);

-- Tabla cargos_directivos
CREATE TABLE cargos_directivos (
    numsocio INT,
    cargo VARCHAR(50),
    fecha_alta DATE,
    fecha_baja DATE,
    PRIMARY KEY (numsocio, cargo, fecha_alta),
    FOREIGN KEY (numsocio) REFERENCES Socios(numsocio)
);

-- Tabla usuarios
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    login VARCHAR(30) UNIQUE,
    nombre VARCHAR(30),
    apellido1 VARCHAR(30),
    apellido2 VARCHAR(30),
    password VARCHAR(1024),
    perfil VARCHAR(3),
    activo BOOLEAN,
    intentos_login INT,
    fecha_creacion TIMESTAMP,
    ultimo_login TIMESTAMP
);

