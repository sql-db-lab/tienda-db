-- ==============================================
-- schema.sql — Archivo maestro tienda-db
-- Uso:
--   SQLite:     sqlite3 tienda.db < schema.sql
--   PostgreSQL: psql -d tienda -f schema.sql
-- ==============================================

-- Migrations (en orden de dependencia)
.read migrations/001_schema_inicial.sql

-- Los equipos agregarán sus migrations aquí:
-- .read migrations/002_ventas.sql
-- .read migrations/003_proveedores.sql
-- .read migrations/004_inventario.sql
-- .read migrations/005_empleados.sql
-- .read migrations/006_categorias.sql
