-- ==============================================
-- Datos de prueba — tienda-db
-- Correr DESPUÉS de schema.sql
-- ==============================================

INSERT INTO clientes (nombre, email, telefono) VALUES
    ('Ana García',      'ana.garcia@correo.com',   '555-0101'),
    ('Luis Martínez',   'luis.mtz@correo.com',     '555-0102'),
    ('Rosa Pérez',      'rosa.perez@correo.com',   '555-0103'),
    ('Carlos López',    'carlos.l@correo.com',     '555-0104'),
    ('María Sánchez',   'maria.s@correo.com',      '555-0105');

INSERT INTO productos (nombre, descripcion, precio, stock) VALUES
    ('Laptop 14"',
     'Procesador i5, 8GB RAM, 256GB SSD',
     12500.00, 15),
    ('Mouse inalámbrico',
     'Bluetooth 5.0, 3 botones',
       450.00, 80),
    ('Teclado mecánico',
     'Switch azul, retroiluminado',
       890.00, 30),
    ('Monitor 24"',
     'Full HD, panel IPS, 75Hz',
      5200.00, 10),
    ('Mochila laptop',
     'Resistente al agua, compartimento 15.6"',
       680.00, 50);
