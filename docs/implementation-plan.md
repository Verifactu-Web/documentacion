# Plan de implementación paso a paso

Plan de referencia para convertir esta especificación en un producto SaaS comercial. El orden está elegido para reducir el riesgo de construir primero interfaces que después no puedan sostener el núcleo fiscal.

> **Naturaleza del plan.** Es una secuencia técnica y de producto, no una autorización de cumplimiento. Antes de vender el SIF hay que completar la revisión jurídica/fiscal, las pruebas externas de AEAT y la declaración responsable del productor.

## Resultado objetivo

Al finalizar la primera puesta en producción debe existir:

- un tenant real con usuarios, ubicaciones, cajas y catálogo aislados;
- venta retail y/o hostelería con cobro, cierres y documentos fiscales;
- Fiscal Core en modalidad solo VERI*FACTU, con RF de alta/anulación, hash, encadenamiento, QR, remisión, acuses y contingencia;
- API REST versionada documentada con OpenAPI;
- POS PWA, administración, pedido QR, meseros, KDS e impresión al menos en el alcance contratado;
- backups, observabilidad, soporte, metering, billing y procedimiento de incidentes;
- evidencia de pruebas, release manifest y declaración responsable asociada a la versión.

## Principios de ejecución

1. **El Fiscal Core es una frontera de cumplimiento**, no una funcionalidad repartida entre pantallas.
2. **Cada fase produce un incremento demostrable** y deja documentación actualizada.
3. **No se habilita la siguiente fase si falla un gate obligatorio.** Los riesgos pendientes quedan visibles y con propietario.
4. **La modalidad inicial es solo VERI*FACTU.** La modalidad no verificable queda fuera hasta completar su matriz adicional de firma, eventos, exportación y comprobaciones.
5. **El offline no crea una autoridad fiscal alternativa.** El buffer de continuidad es limitado, auditable y gobernado.

## Fase 0 — Gobierno, alcance y equipo

**Objetivo:** convertir la especificación en un proyecto ejecutable.

### Pasos

1. Nombrar responsables de producto, arquitectura, fiscalidad, seguridad, operaciones y soporte.
2. Contratar o asignar asesoría fiscal española con experiencia en facturación y hostelería/retail.
3. Congelar el perímetro MVP: España, EUR, IVA español, solo VERI*FACTU, un proveedor de pagos y una familia de impresoras.
4. Crear el registro de decisiones, riesgos, fuentes normativas y cambios de esquema AEAT.
5. Convertir cada fila de la [matriz de trazabilidad](compliance/traceability.md) en una épica con evidencia esperada.
6. Definir datos personales, contratos, DPA, soporte y política de conservación.

### Entregables

- backlog priorizado y mapa de dependencias;
- RACI y calendario de revisiones fiscales;
- criterios de éxito, SLO iniciales y presupuesto de infraestructura;
- decisión firmada sobre qué significa “listo para piloto”.

### Gate G0

No se empieza a emitir facturas de prueba si no están aprobados el alcance fiscal, el asesor responsable y la fuente técnica AEAT que se usará como baseline.

## Fase 1 — Baseline normativa y contrato fiscal

**Objetivo:** hacer implementable la normativa sin inventar formatos.

### Pasos

1. Descargar y versionar internamente, con checksum, XSD/WSDL, diseños de registro, validaciones, algoritmo de hash, QR y ejemplos de declaración responsable publicados por AEAT.
2. Crear un `spec-baseline` con fecha, URLs oficiales, versión de cada artefacto y diferencias respecto a la baseline anterior.
3. Modelar tipos de factura, series, anulación, rectificación, cuotas, totales y reglas de redondeo según RD 1619/2012 y RRSIF.
4. Definir la serialización canónica que alimentará el hash; no implementar una concatenación provisional sin vector oficial.
5. Obtener del portal de pruebas de AEAT los primeros casos de éxito y error.
6. Documentar casos fuera de alcance: SII, territorios forales si requieren adaptación específica, factura electrónica B2B, pagos anticipados, propinas y casos fiscales no confirmados.

### Entregables

- catálogo de campos y reglas fiscales;
- golden vectors de alta, anulación, rectificativa, IVA múltiple, descuentos y redondeos;
- contrato de QR y fixtures de impresión;
- checklist de declaración responsable.

### Gate G1

Un segundo revisor puede reproducir los hashes y payloads esperados de los golden vectors a partir de la documentación oficial.

## Fase 2 — Fundación del repositorio y entrega continua

**Objetivo:** disponer de una base técnica segura antes de implementar negocio.

### Pasos

1. Crear monorepo de backend, workers, frontends, contratos y migraciones.
2. Configurar ramas protegidas, revisión obligatoria, CODEOWNERS, Dependabot, secret scanning y SBOM.
3. Crear entornos separados de desarrollo, staging, pruebas AEAT y producción.
4. Configurar CI para tests, OpenAPI, PlantUML, lint, migraciones y análisis de dependencias.
5. Configurar CD con imágenes firmadas, registry, despliegue canary y rollback.
6. Crear gestión de secretos, KMS, workload identity y rotación sin secretos en Git.
7. Instrumentar logs, métricas, trazas y correlation IDs desde el primer endpoint.

### Entregables

- pipeline reproducible;
- imagen mínima de API y worker;
- plantilla de servicio con health/readiness probes;
- tablero de observabilidad y alertas iniciales.

### Gate G2

Un cambio de prueba puede pasar por CI, desplegarse en staging, generar telemetría y revertirse sin intervención manual destructiva.

## Fase 3 — Identidad, tenants y autorización

**Objetivo:** garantizar aislamiento antes de almacenar datos de negocio.

### Pasos

1. Implementar OIDC, MFA para administradores, recuperación y revocación de sesiones.
2. Crear `Tenant`, `User`, `Membership`, roles, permisos, ubicaciones y cajas.
3. Aplicar `tenant_id NOT NULL`, claves compuestas donde corresponda y RLS PostgreSQL.
4. Añadir autorización por tenant, ubicación, caja, rol y límite monetario.
5. Crear auditoría de login, invitaciones, cambios de permisos, soporte y exportación.
6. Añadir tests negativos cross-tenant para API, SQL, cache y object storage.

### Entregables

- onboarding de tenant;
- administración de usuarios y roles;
- matriz de permisos ejecutable;
- informe de pruebas de aislamiento.

### Gate G3

Ningún test puede leer, modificar, exportar o cachear datos de otro tenant, incluso manipulando IDs, tokens o parámetros.

## Fase 4 — Catálogo, impuestos e inventario

**Objetivo:** crear el maestro operativo que alimenta las ventas sin contaminar las facturas históricas.

### Pasos

1. Implementar productos, SKU, códigos de barras, variantes, modificadores y alérgenos.
2. Crear reglas de precio, listas, promociones y disponibilidad por ubicación.
3. Crear perfiles de impuestos gobernados por tenant y sujetos a revisión fiscal.
4. Implementar stock por ubicación, ajustes, movimientos y reservas.
5. Congelar en cada línea de pedido el nombre, precio, impuesto y unidad usados en la venta.
6. Añadir importación/exportación CSV controlada, validación y rollback de catálogo no fiscal.

### Entregables

- API y UI de catálogo;
- maestro de artículos por tenant;
- inventario multiubicación;
- fixtures de precios/impuestos.

### Gate G4

Cambiar un producto o su impuesto no modifica ninguna orden, factura o RF ya creado.

## Fase 5 — Fiscal Core y documentación fiscal

**Objetivo:** implementar la parte que determina si el producto puede ser un SIF.

### Pasos

1. Crear el agregado `Invoice` y la snapshot fiscal inmutable.
2. Implementar numeración por obligado/serie/instalación con concurrencia segura.
3. Implementar RF de alta y anulación alineados con los XSD y diseños AEAT.
4. Implementar hash SHA-256 y encadenamiento por SIF/obligado, con detección de inconsistencia.
5. Implementar QR, URL, leyenda VERI*FACTU y representación PDF/JSON/XML.
6. Persistir RF, documento, checksum, outbox y auditoría en una transacción.
7. Implementar idempotencia de emisión, anulación y reintentos.
8. Crear el adaptador de remisión AEAT con respuestas sanitizadas, timeouts, backoff y DLQ.
9. Implementar conciliación de envíos y estados `pending`, `submitted`, `accepted`, `rejected`, `contingency` y `reconciled`.
10. Ejecutar golden vectors y pruebas del portal de AEAT.

### Entregables

- librería/módulo Fiscal Core versionado;
- servicio `fiscal-submitter`;
- documentos con QR y evidencias de envío;
- informe de conformidad por vector;
- primera declaración responsable candidata.

### Gate G5 — no negociable

No se habilita facturación de piloto hasta que los golden vectors, XML/JSON, QR, numeración, anulación, idempotencia y pruebas AEAT estén aprobados por ingeniería y asesoría fiscal.

## Fase 6 — POS, pagos y cierres

**Objetivo:** llevar el Fiscal Core a una venta real sin duplicar reglas en el cliente.

### Pasos

1. Implementar POS PWA con búsqueda, escáner, cesta y selección de cliente.
2. Integrar pagos mediante adapter; ningún proveedor escribe directamente en tablas fiscales.
3. Implementar confirmación de pedido, captura, emisión y entrega de documento.
4. Implementar apertura, movimientos, arqueo y cierre de caja.
5. Implementar devoluciones, anulaciones y rectificativas según autorización y motivo.
6. Añadir impresión WebSerial y reimpresión marcada como copia.
7. Probar desconexiones de terminal, doble clic, timeout y recuperación de sesión.

### Entregables

- POS retail usable en staging;
- caja y cierres conciliables;
- integración de pago de prueba;
- flujo de emisión fiscal de extremo a extremo.

### Gate G6

Una venta repetida por reintento de red produce una sola orden, un solo cobro y un resultado fiscal coherente.

## Fase 7 — Hostelería y operaciones de cocina

**Objetivo:** añadir la experiencia de mesas sin hacer que la comanda sea una factura.

### Pasos

1. Crear salas, mesas, posiciones, estados y plano responsive.
2. Crear carta por ubicación con disponibilidad, alérgenos, horarios y modificadores.
3. Crear QR por mesa con tokens revocables/rotables y protección antiabuso.
4. Implementar Customer PWA, Waiter PWA y aprobación de comandas.
5. Implementar KDS por estación, prioridades, pausas y tiempos.
6. Implementar división de cuenta, pagos parciales y reglas de propina aprobadas legalmente.
7. Implementar agente SBC outbound-only para cocina, actualización firmada y colas limitadas.
8. Probar tabletas, impresoras 58/80 mm, duplicados y caída de red local.

### Entregables

- piloto hostelería con una ubicación;
- carta QR y comanda de meseros;
- KDS y cocina;
- manual de operación y recuperación de impresoras.

### Gate G7

Un pedido QR nunca puede acceder a datos de otro tenant, inventario reservado indebidamente o funciones administrativas; la expedición fiscal solo sucede por checkout autorizado.

## Fase 8 — Contingencia, conservación y recuperación

**Objetivo:** demostrar que el sistema conserva evidencia y se recupera sin romper la cadena.

### Pasos

1. Activar object storage versionado/WORM y manifest de evidencias.
2. Configurar PostgreSQL HA, PITR, backup cifrado y copia regional según DPA.
3. Implementar buffer offline acotado en POS y política de riesgo por ubicación.
4. Simular caída de internet, AEAT, API, cola, Redis y base de datos.
5. Restaurar en entorno aislado, verificar checksums, última huella, outbox y acuses.
6. Ejecutar conciliación de operaciones emitidas durante la contingencia.
7. Documentar comunicación al cliente, soporte y asesoría fiscal.

### Gate G8

El simulacro cumple los objetivos RPO/RTO definidos y no requiere editar o borrar RF para recuperar el servicio.

## Fase 9 — Billing, soporte y seguridad de producción

**Objetivo:** convertir el piloto en un SaaS operable y cobrable.

### Pasos

1. Implementar planes, entitlements, límites y periodo de gracia.
2. Medir `invoice.issued`, usuarios activos, ubicaciones, cajas, almacenamiento e impresión.
3. Integrar PSP de suscripciones mediante adapter y ledger interno.
4. Mantener lectura/exportación fiscal aunque el tenant esté en impago.
5. Crear soporte con acceso temporal, justificación y auditoría.
6. Ejecutar threat model, SAST, DAST, dependency scan, revisión de secretos y pentest previo al lanzamiento.
7. Preparar política de incidentes, vulnerabilidades, privacidad y solicitudes de exportación.

### Entregables

- checkout y portal de suscripción;
- ledger de uso conciliable;
- runbooks de soporte;
- informe de seguridad y plan de remediación.

### Gate G9

El equipo puede detectar, contener y explicar una incidencia de seguridad o fiscal sin exponer secretos ni perder evidencia.

## Fase 10 — Piloto controlado

**Objetivo:** probar el producto con clientes reales bajo límites seguros.

### Pasos

1. Seleccionar 3–5 clientes: autónomo retail, pequeño comercio, restaurante y caso híbrido.
2. Firmar condiciones de piloto, responsabilidades fiscales, soporte y tratamiento de datos.
3. Crear tenants separados y configurar series, ubicaciones, cajas, impresoras y usuarios.
4. Ejecutar checklist de formación: venta, devolución, cierre, contingencia, QR y soporte.
5. Revisar diariamente remisiones, rechazados, latencia, tickets, impresión y uso.
6. Recoger feedback sin cambiar reglas fiscales en caliente.
7. Celebrar revisión de salida con producto, ingeniería, operaciones y asesoría.

### Gate G10

Cada cliente piloto tiene cero defectos críticos abiertos, evidencia exportable, plan de soporte y decisión explícita de pasar o no a producción general.

## Fase 11 — Lanzamiento y evolución

### Lanzamiento general

1. Publicar versión, declaración responsable y manifest de componentes.
2. Activar límites de registro, alertas y soporte de guardia.
3. Publicar documentación de usuario y estado de compatibilidad de hardware.
4. Revisar métricas semanalmente durante los primeros 90 días.
5. Programar actualización de fuentes AEAT y revisión legal mensual.

### Después del MVP

- modalidad no verificable solo con ADR, pruebas y declaración separadas;
- factura electrónica B2B según el calendario y desarrollo aplicables;
- contabilidad, reservas, delivery y marketplace mediante adapters;
- bases dedicadas, SSO y SLA Enterprise;
- analítica avanzada, fidelización y optimización de inventario.

## Secuencia de releases orientativa

| Release | Contenido | Gate principal |
|---|---|---|
| R0 | Fundación, IAM, tenant y CI/CD | G0–G3 |
| R1 | Catálogo, impuestos, inventario y API | G4 |
| R2 | Fiscal Core, QR, remisión y documentos | G1, G5 |
| R3 | POS, pagos, caja e impresión | G6 |
| R4 | Mesas, QR cliente, meseros y KDS | G7 |
| R5 | Contingencia, DR, billing y seguridad | G8–G9 |
| R6 | Piloto controlado | G10 |
| R7 | Lanzamiento general | declaración responsable + aprobación de release |

El calendario exacto depende de la capacidad del equipo y del acceso al portal de pruebas de AEAT. Como referencia, con un equipo de 5–7 personas a tiempo completo, R0–R2 puede ocupar 8–12 semanas y el piloto completo 16–24 semanas; son estimaciones, no compromisos.

## Definition of Done transversal

Una funcionalidad se considera terminada solo cuando:

- tiene contrato API/UI y permisos definidos;
- tiene migración, pruebas unitarias, integración y E2E proporcionales;
- registra auditoría y métricas útiles;
- tiene documentación de operación y rollback;
- no rompe RLS ni introduce acceso cross-tenant;
- tiene evidencias almacenadas en CI/release;
- si afecta fiscalidad, actualiza matriz de trazabilidad, golden vectors y revisión de compliance.

## Backlog inicial recomendado

Priorizar estas historias en este orden:

1. `baseline-aeat-versionada`;
2. `tenant-membership-rls`;
3. `catalog-product-tax-snapshot`;
4. `fiscal-record-chain-hash`;
5. `aeat-submission-idempotent-worker`;
6. `invoice-qr-document-renderer`;
7. `pos-sale-payment-close`;
8. `webserial-print-job`;
9. `hospitality-table-qr-kds`;
10. `backup-restore-contingency-drill`;
11. `billing-meter-entitlements`;
12. `pilot-runbook-release-declaration`.
