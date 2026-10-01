# IAM/RBAC

## Roles iniciales

| Rol | Alcance | Capacidades destacadas |
|---|---|---|
| Owner | tenant | billing, usuarios, fiscal settings, exportación total |
| Admin | tenant | configuración operativa y catálogo; no cambia declaración sin aprobación |
| Fiscal admin | tenant/obligado | series, perfil fiscal, conciliación AEAT, export fiscal |
| Store manager | ubicación | cierres, devoluciones dentro de límite, caja y personal |
| Cashier | caja | venta, cobro, apertura/cierre; no cambia impuestos |
| Waiter | ubicación/mesa | comandas, división de cuenta, propina configurada |
| Kitchen | ubicación | KDS, estados de preparación, no acceso a PII fiscal |
| Auditor/support | lectura acotada | soporte con justificación, time-bound y auditoría |

Los permisos son acciones (`invoice.issue`, `invoice.void`, `fiscal.export`, `user.manage`) y no solo nombres de rol. Se comprueba tenant, ubicación, caja y límites monetarios. Dos personas pueden ser necesarias para cambiar parámetros fiscales de producción.

## Usuarios propios por tenant

Cada tenant tiene memberships independientes, invitaciones con caducidad, estado activo/suspendido, grupos opcionales y asignación a ubicaciones/cajas. Un usuario puede pertenecer a varios tenants sin compartir permisos ni contexto.

## Auditoría IAM

Registrar invitación, login, MFA, cambio de rol, exportación, cambio fiscal, apertura/cierre, reembolso, anulación y uso de soporte; conservar actor, motivo, recurso, antes/después permitido, IP aproximada y correlación conforme a privacidad.
