# tienda-db

Repositorio del laboratorio de Git + SQL.
Curso de Bases de Datos · sql-db-lab

## Descripción

Base de datos relacional de una tienda en línea.
Practicamos flujos de trabajo colaborativos con Git y GitHub
mientras construimos un esquema SQL real en equipo.

## Cómo empezar

```bash
git clone https://github.com/sql-db-lab/tienda-db.git
cd tienda-db
```

## Ejecutar el schema completo

```bash
# SQLite
sqlite3 tienda.db < schema.sql
sqlite3 tienda.db ".tables"

# PostgreSQL
createdb tienda
psql -d tienda -f schema.sql
psql -d tienda -c "\dt"
```

## Cargar datos de prueba

```bash
# SQLite
sqlite3 tienda.db < data/seed.sql

# PostgreSQL
psql -d tienda -f data/seed.sql
```

## Estructura del proyecto

```
tienda-db/
├── migrations/     Scripts SQL ordenados por número
├── data/           Datos de prueba (seed)
├── docs/           Documentación del modelo ER
├── schema.sql      Punto de entrada principal
└── README.md       Este archivo
```

## Flujo de trabajo

1. Crea una branch: `git checkout -b feature/[equipo]-[descripcion]`
2. Escribe tu migration en `migrations/00X_nombre.sql`
3. Agrégala a `schema.sql`
4. Commit + push
5. Abre un Pull Request hacia `main`
6. Espera la revisión de un compañero
7. Una vez aprobado, el reviewer hace merge

## Convenciones

| Qué          | Convención                               |
|--------------|------------------------------------------|
| Branches     | `feature/equipo-descripcion`             |
| Commits      | `feat: agregar tabla ventas con FK`      |
| Tablas       | Plural, snake_case (`ventas`, `clientes`)|
| Columnas     | snake_case (`cliente_id`, `creado_en`)   |
| PKs          | Siempre llamadas `id`                    |

## Equipos y tablas asignadas

| Equipo | Tabla        |
|--------|--------------|
| 1      | ventas       |
| 2      | proveedores  |
| 3      | inventario   |
| 4      | empleados    |
| 5      | categorias   |
