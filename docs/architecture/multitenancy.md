# Multi-tenant y aislamiento

## Modelo

Un `tenant` es la unidad contractual y de configuración. Tiene uno o varios `locations`, `registers`, `users`, `catalogs`, `tax_profiles`, series fiscales y entitlements. El `fiscal_obligated_party` es explícito: puede ser uno por tenant o varios perfiles gobernados; la cadena nunca cruza obligados.

## Aislamiento por capas

1. JWT contiene `tenant_id` y scopes, pero nunca se confía solo en él.
2. El gateway comprueba membresía; la API deriva contexto del token y del recurso.
3. Todas las tablas tenant-scoped tienen `tenant_id NOT NULL` y claves compuestas donde sea útil.
4. PostgreSQL RLS fuerza `app.tenant_id` en cada transacción; el rol de aplicación no puede desactivar RLS.
5. Object storage usa prefijo tenant y políticas IAM; URLs firmadas de corta duración.
6. Logs, métricas y exportaciones no mezclan PII/fiscal payload entre tenants.
7. Enterprise puede optar por base/schema dedicado; el contrato de dominio es el mismo.

## Anti-patrones bloqueados

- consultas sin tenant context;
- `tenant_id` tomado del body sin comparar con identidad;
- cache keys sin tenant;
- cadena fiscal compartida entre tenants;
- exportación cross-tenant por soporte sin doble autorización y auditoría.
