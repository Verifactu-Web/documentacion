# Matriz de trazabilidad normativa

| ID | Requisito | Fuente | Control de diseño | Evidencia/prueba |
|---|---|---|---|---|
| C-01 | Integridad e inalterabilidad de RF | S1, S3 art. 8, S4 | RF append-only, hash SHA-256, cadena, permisos sin UPDATE/DELETE | `T-FISCAL-001..006`, logs de migración, golden vectors |
| C-02 | Conservación, accesibilidad y legibilidad | S1, S3, S12 | PostgreSQL + objeto inmutable, export JSON/XML, retención y restore probado | `T-DR-001..004`, simulacro de restauración |
| C-03 | Trazabilidad sin saltos | S3, S4 art. 13, S11 | Secuencia por instalación/SIF y enlace al RF anterior; reloj y orden de generación | `T-FISCAL-003`, detector de huecos |
| C-04 | Remisión VERI*FACTU | S3 arts. 15-16, S8, S10 | Worker durable, idempotencia, reintentos, DLQ, acuse y conciliación AEAT | `T-AEAT-001..005`, evidencias de portal de pruebas |
| C-05 | Hash | S4 art. 13, S9 | SHA-256 sobre campos y serialización oficial, vector de referencia | `T-FISCAL-004`, fixture versionada |
| C-06 | Firma cuando corresponda | S3/S4 art. 14, S8 | MVP solo VERI*FACTU; módulo de firma cualificada aislado si se ofrece dual | `T-NONVERI-*` bloqueado hasta habilitar evidencia |
| C-07 | QR y leyenda | S4 arts. 20-21, S8 | QR M, 30–40 mm, URL/NIF/serie-número/fecha/total; leyenda VERI*FACTU | `T-PRINT-001..004`, golden PDF/ESC-POS |
| C-08 | Anulación/rectificación sin borrar | S3/S14 | Eventos fiscales de anulación y factura rectificativa; numeración preservada | `T-FISCAL-007..010` |
| C-09 | Declaración responsable del productor | S3 art. 13, S4/S8 ejemplos | Artefacto firmado por release, producto/versión/componentes y compromiso | checklist `DR-01..12` |
| C-10 | Registro de eventos | S4 art. 9, S13 | No se presenta como obligatorio en MVP VERI*FACTU; auditoría operacional separada | `T-AUDIT-001..005` |
| C-11 | Aplicabilidad/exclusiones | S3 art. 3, S7 | Perfil fiscal por tenant, SII/exclusiones como configuración gobernada | `T-SCOPE-001..004`, revisión fiscal |
| C-12 | Calendario vigente | S5, S6, S7 | Gate de release y aviso de fecha por perfil | test de reglas de onboarding |
| C-13 | Factura electrónica B2B | S16 | Adaptador de entrega separable del núcleo fiscal; modelo de invoice común | contract tests futuros |
| C-14 | Seguridad y control de acceso | S1, S3 art. 8 | IAM, MFA, RBAC, RLS, separación de funciones, claves en KMS | threat model, pentest, revisión de permisos |

## Regla de evidencia

Cada requisito obligatorio tiene: (1) una fuente con versión/fecha; (2) una decisión o control implementable; (3) al menos una prueba automatizada o un documento de revisión; y (4) un artefacto de release conservado. Si falta alguno, el estado es **no listo para producción fiscal**.
