# Modelo entidad-relación — tienda-db

## Tablas base (ya creadas)

```
clientes            productos
-----------         -----------
id (PK)             id (PK)
nombre              nombre
email (UNIQUE)      descripcion
telefono            precio
creado_en           stock
                    creado_en
```

## Tablas que crearán los equipos

| Equipo | Tabla        | Relaciones                        |
|--------|--------------|-----------------------------------|
| 1      | ventas       | FK → clientes, FK → productos     |
| 2      | proveedores  | Tabla independiente               |
| 3      | inventario   | FK → productos, FK → proveedores  |
| 4      | empleados    | Tabla independiente               |
| 5      | categorias   | FK inversa desde productos        |

## Convenciones del proyecto

- Todas las PKs se llaman `id`
- Timestamps: columna `creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP`
- Nombres de tablas: plural, snake_case
- Nombres de columnas: snake_case
- FKs: `[tabla_singular]_id` (ej. `cliente_id`, `producto_id`)
