-- ==============================================
-- Migración 001: Schema inicial — tienda-db
-- Organización: sql-db-lab
-- Autor: Oscar Alejandro Hernandez Lopez
-- Fecha: 2025-04-15
-- ==============================================

-- Tabla: clientes
CREATE TABLE IF NOT EXISTS clientes (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre      VARCHAR(100) NOT NULL,
    email       VARCHAR(150) UNIQUE NOT NULL,
    telefono    VARCHAR(20),
    creado_en   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla: productos
CREATE TABLE IF NOT EXISTS productos (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre      VARCHAR(200) NOT NULL,
    descripcion TEXT,
    precio      DECIMAL(10,2) NOT NULL CHECK (precio >= 0),
    stock       INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
    creado_en   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Índices base
CREATE INDEX IF NOT EXISTS idx_clientes_email
    ON clientes(email);

CREATE INDEX IF NOT EXISTS idx_productos_nombre
    ON productos(nombre);
