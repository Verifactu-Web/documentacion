# Catálogo enlazable del GitHub Project

Este catálogo es la fuente de verdad descriptiva de las tarjetas del [Project de implementación](https://github.com/orgs/Verifactu-Web/projects/1). Cada tarjeta debe conservar un resumen breve y enlazar a su sección correspondiente. Las estimaciones completas, dependencias y confianza están en [task-estimates.md](task-estimates.md); el orden, gates y releases están en [implementation-plan.md](../implementation-plan.md).

## Cómo leer este catálogo

- `F` = esfuerzo efectivo del fundador; `C` = revisión legal/fiscal o especialista externo.
- La aceptación es el resultado observable que permite cerrar la tarjeta.
- Los enlaces de fase llevan a la documentación normativa/arquitectónica principal; los enlaces de tarea llevan a la especificación operativa más cercana.
- Una tarjeta fiscal o de seguridad no se cierra solo porque el código funcione: necesita evidencia y, cuando se indica, revisión externa.

## F0 — Gobierno, alcance y equipo

**Objetivo:** aprobar el marco de decisión, el alcance comercial, los supuestos fiscales, el presupuesto y el gate que permite iniciar la construcción con un fundador y consultoría externa. Documentación de fase: [índice de Fase 0](../governance/phase-0/README.md), [charter](../governance/phase-0/charter.md), [alcance/MVP](../governance/phase-0/scope-and-mvp.md), [RACI](../governance/phase-0/raci.md), [riesgos](../governance/phase-0/risk-register.md), [baseline normativa](../governance/phase-0/normative-baseline.md), [capacidad](../governance/phase-0/capacity-and-budget.md) y [gate de piloto](../governance/phase-0/pilot-gate.md).

### F0-T01 — Aprobar charter y principios

Fijar propósito, límites, principios fiscales, autoridad de decisión y reglas de uso de Codex. **Aceptación:** el fundador aprueba el charter y quedan identificadas las decisiones que requieren memo legal/fiscal. Enlaces: [charter](../governance/phase-0/charter.md), [ADRs](../adr/README.md).

### F0-T02 — Validar personas, alcance y MVP

Convertir las necesidades de retail, hostelería, asesoría y operación multiubicación en un MVP demostrable, con exclusiones explícitas. **Aceptación:** cada capacidad incluida tiene usuario objetivo y criterio de éxito; cada exclusión tiene razón. Enlaces: [alcance y MVP](../governance/phase-0/scope-and-mvp.md), [producto](../product/README.md).

### F0-T03 — Confirmar RACI, cadencia y soporte

Definir quién decide, consulta, ejecuta y acepta cuando el único operador es el fundador y la consultoría externa cubre fiscalidad. **Aceptación:** no existe decisión crítica sin propietario, sustituto o escalado. Enlaces: [RACI](../governance/phase-0/raci.md), [operaciones](../operations/README.md).

### F0-T04 — Baseline de fuentes oficiales

Congelar la fotografía normativa inicial, sus fechas, versiones, URLs, hashes y responsable de revisión. **Aceptación:** las fuentes AEAT/BOE relevantes están registradas y el consultor confirma el baseline o anota no conformidades. Enlaces: [baseline normativa](../governance/phase-0/normative-baseline.md), [fuentes oficiales](../compliance/sources.md).

### F0-T05 — Casos frontera fiscales

Resolver antes de construir las operaciones que más pueden cambiar el modelo: rectificativas, anulaciones, devoluciones, anticipos, propinas, split bill, contingencia y rechazo AEAT. **Aceptación:** cada caso tiene decisión, evidencia esperada y pregunta abierta si no puede cerrarse. Enlaces: [VERI*FACTU](../compliance/verifactu.md), [contingencia](../compliance/contingency.md), [matriz de trazabilidad](../compliance/traceability.md).

### F0-T06 — Registro de riesgos

Priorizar riesgos fiscales, de aislamiento tenant, disponibilidad, hardware, margen, privacidad y dependencia del fundador. **Aceptación:** todo riesgo alto tiene propietario, disparador, mitigación y fecha de revisión. Enlaces: [registro de riesgos](../governance/phase-0/risk-register.md), [threat model](../security/threat-model.md).

### F0-T07 — Capacidad, presupuesto y pricing

Validar que el roadmap cabe en la capacidad real de una persona y que cloud, consultoría, soporte y hardware caben en el presupuesto. **Aceptación:** se aprueban reserva, margen objetivo, pricing inicial y regla de reestimación. Enlaces: [capacidad y presupuesto](../governance/phase-0/capacity-and-budget.md), [pricing](../product/pricing.md).

### F0-T08 — Backlog, gates y Project

Descomponer el plan en fases, tareas, dependencias, aceptación y estimación Codex-first; sincronizarlo con GitHub Project. **Aceptación:** cada fase tiene roll-up y cada tarea tiene identificador único y detalle enlazable. Enlaces: [plan de implementación](../implementation-plan.md), [estimaciones](task-estimates.md), [Project README](README.md).

### F0-T09 — Gate y evidence pack de piloto

Definir la evidencia mínima de producto, fiscalidad, seguridad, operación y soporte que debe existir antes de probar con un cliente. **Aceptación:** el checklist Go/No-Go es ejecutable y el paquete tiene índice versionado. Enlaces: [pilot gate](../governance/phase-0/pilot-gate.md), [declaración responsable](../compliance/declaration-responsible.md).

### F0-T10 — Gate de aprobación y readiness de piloto

Cerrar Fase 0 con una decisión explícita: continuar a F1, continuar condicionado o detenerse. **Aceptación:** charter, baseline externo, presupuesto, backlog y riesgos tienen aprobación o acciones con fecha. Enlaces: [índice de Fase 0](../governance/phase-0/README.md), [pilot gate](../governance/phase-0/pilot-gate.md).

## F1 — Fundaciones, tenancy y seguridad base

**Objetivo:** preparar el repositorio de aplicación, entornos, identidad, aislamiento multi-tenant y controles de seguridad sobre los que descansan todos los dominios. Documentación de fase: [arquitectura general](../architecture/overview.md), [multi-tenant](../architecture/multitenancy.md), [seguridad](../security/README.md) y [IAM/RBAC](../security/iam-rbac.md).

### F1-T01 — Monorepo, lint, CI y entornos

Crear la estructura de aplicación y documentación ejecutable, con validaciones automáticas, entornos local/staging/producción y convenciones de commits. **Aceptación:** un cambio mínimo se valida en CI y puede desplegarse de forma reproducible. Enlaces: [API/contratos](../api/README.md), [operaciones](../operations/README.md), [CI existente](../../.github/workflows/validate.yml).

### F1-T02 — Identidad, tenant context y RLS

Implementar autenticación, resolución segura de tenant, autorización contextual y PostgreSQL RLS como defensa en profundidad. **Aceptación:** las pruebas positivas y negativas demuestran aislamiento por tenant, usuario, sede y caja. Enlaces: [multi-tenant](../architecture/multitenancy.md), [IAM/RBAC](../security/iam-rbac.md), [ADR de aislamiento](../adr/0003-tenant-isolation.md).

### F1-T03 — Secretos, configuración y auditoría técnica

Definir configuración por entorno, gestión de secretos, rotación, redacción de logs y auditoría de acciones administrativas. **Aceptación:** ningún secreto aparece en código, artefactos, logs o prompts; las acciones sensibles dejan actor, tenant, motivo y correlación. Enlaces: [seguridad](../security/README.md), [auditoría/retención](../compliance/records-and-retention.md).

### F1-T04 — PostgreSQL, migraciones y seed sintético

Crear esquema inicial, migraciones reversibles/seguras y datos sintéticos para retail, hostelería, varias sedes y casos fiscales. **Aceptación:** migración limpia, upgrade y seed reproducen el entorno de pruebas sin datos reales. Enlaces: [modelo de datos](../architecture/data-model.md), [plan de pruebas](../testing/README.md).

### F1-T05 — Threat model y hardening base

Modelar amenazas de API, PWA, dispositivos compartidos, colas, impresión y datos fiscales; convertirlas en controles y tests. **Aceptación:** riesgos priorizados con mitigación implementada o aceptada explícitamente. Enlaces: [threat model](../security/threat-model.md), [IAM/RBAC](../security/iam-rbac.md), [ADR de seguridad](../adr/README.md).

## F2 — Fiscal core VERI*FACTU

**Objetivo:** construir el núcleo fiscal versionado e independiente de los canales, con registros inmutables, huella, encadenamiento, QR, remisión, contingencia y evidencias. Documentación de fase: [diseño VERI*FACTU](../compliance/verifactu.md), [trazabilidad](../compliance/traceability.md), [conservación](../compliance/records-and-retention.md) y [contingencia](../compliance/contingency.md).

### F2-T01 — Modelo de registro de facturación

Modelar registro, factura, líneas, impuestos, emisor, destinatario, numeración, estados, referencias y versión normativa sin permitir mutaciones silenciosas. **Aceptación:** invariantes documentadas y fixtures para factura simplificada, completa, rectificativa y anulación. Enlaces: [modelo de datos](../architecture/data-model.md), [VERI*FACTU](../compliance/verifactu.md).

### F2-T02 — Generación, hash y encadenamiento

Implementar generación determinista, canonicalización, huella, referencia al registro anterior y validación de la cadena. **Aceptación:** golden vectors reproducibles y detección de alteración, salto, duplicado o cambio de orden. Enlaces: [VERI*FACTU](../compliance/verifactu.md), [trazabilidad](../compliance/traceability.md), [pruebas](../testing/README.md).

### F2-T03 — QR, payload y representación fiscal

Generar QR y representación impresa/digital según el contrato fiscal aprobado, sin delegar la autoridad en el frontend. **Aceptación:** payload y render se validan contra vectores, límites de tamaño y lectura en soportes soportados. Enlaces: [VERI*FACTU](../compliance/verifactu.md), [impresión](../product/printing.md).

### F2-T04 — Remisión, reintento e idempotencia

Construir cliente/worker de remisión, clasificación de respuestas, backoff, deduplicación y trazabilidad de cada intento. **Aceptación:** los reintentos no duplican efectos y una caída de AEAT deja el registro en un estado recuperable y observable. Enlaces: [contingencia](../compliance/contingency.md), [integraciones/eventos](../architecture/integrations.md), [API](../api/README.md).

### F2-T05 — Anulación, rectificación y contingencia

Implementar máquinas de estado y documentos relacionados para anulaciones, rectificativas, devoluciones y operación temporal degradada. **Aceptación:** ningún caso modifica el pasado; la secuencia y motivos son auditables y revisados externamente. Enlaces: [VERI*FACTU](../compliance/verifactu.md), [contingencia](../compliance/contingency.md), [conservación](../compliance/records-and-retention.md).

### F2-T06 — Evidence pack y versión fiscal

Empaquetar versión de código, configuración fiscal, fuentes, vectores, resultados, logs y decisiones de una release. **Aceptación:** un tercero puede reconstruir qué reglas se aplicaron a un registro concreto. Enlaces: [declaración responsable](../compliance/declaration-responsible.md), [trazabilidad](../compliance/traceability.md).

## F3 — API-first y contratos

**Objetivo:** exponer el dominio mediante REST estable, documentado y observable, con eventos desacoplados y contratos verificables. Documentación de fase: [API REST](../api/README.md), [OpenAPI](../../openapi/openapi.yaml) e [integraciones](../architecture/integrations.md).

### F3-T01 — OpenAPI base y versionado

Definir recursos, operaciones, esquemas, errores, seguridad y versionado de la API pública. **Aceptación:** el contrato se valida en CI y Swagger permite explorar todos los endpoints publicados. Enlaces: [API](../api/README.md), [OpenAPI](../../openapi/openapi.yaml).

### F3-T02 — Idempotency, errores y paginación

Normalizar claves de idempotencia, correlación, errores problem/detail, filtros, ordenación y paginación segura. **Aceptación:** clientes pueden reintentar sin duplicar operaciones y reciben respuestas consistentes. Enlaces: [API](../api/README.md), [OpenAPI](../../openapi/openapi.yaml).

### F3-T03 — Eventos, outbox y consumidores

Publicar eventos transaccionales para fiscalidad, impresión, cocina, billing y auditoría usando outbox y consumidores idempotentes. **Aceptación:** no se pierde evento entre commit y publicación y cada consumidor puede reanudar. Enlaces: [integraciones/eventos](../architecture/integrations.md), [arquitectura](../architecture/overview.md).

### F3-T04 — SDK, contract tests y Swagger

Generar clientes y contract tests a partir de OpenAPI para reducir divergencia entre backend, POS, mesero y agentes. **Aceptación:** cambios incompatibles fallan en CI antes de llegar a un entorno compartido. Enlaces: [API](../api/README.md), [plan de pruebas](../testing/README.md).

## F4 — Backoffice, catálogo y configuración

**Objetivo:** permitir que el negocio configure tenant, artículos, precios, usuarios, sedes y cajas sin depender del fundador. Documentación de fase: [capacidades de producto](../product/README.md), [frontends](../product/frontends.md), [modelo de datos](../architecture/data-model.md) e [IAM](../security/iam-rbac.md).

### F4-T01 — Backoffice de tenant y usuarios

Crear configuración de tenant, establecimientos, usuarios, invitaciones, roles, permisos y preferencias operativas. **Aceptación:** un administrador puede configurar su organización sin acceder a datos o funciones de otro tenant. Enlaces: [IAM/RBAC](../security/iam-rbac.md), [multi-tenant](../architecture/multitenancy.md).

### F4-T02 — Maestro de artículos y variantes

Gestionar artículos, SKU, variantes, unidades, categorías, alérgenos, precios y disponibilidad por tenant y sede. **Aceptación:** el catálogo es tenant-owned, versionable y utilizable por POS, carta QR y cocina. Enlaces: [producto](../product/README.md), [modelo de datos](../architecture/data-model.md).

### F4-T03 — Impuestos, precios y promociones

Aplicar reglas de precio, impuestos aprobados, descuentos y promociones con fechas, alcance y trazabilidad. **Aceptación:** el cálculo es determinista y no permite editar una venta histórica; casos fiscales requieren revisión externa. Enlaces: [VERI*FACTU](../compliance/verifactu.md), [pricing](../product/pricing.md), [trazabilidad](../compliance/traceability.md).

### F4-T04 — Establecimientos, cajas y cierres

Modelar sedes, terminales, turnos, sesiones de caja, aperturas, arqueos, diferencias y cierres. **Aceptación:** cada venta y registro fiscal identifica establecimiento y caja; un cierre es auditable. Enlaces: [arquitectura](../architecture/logical-physical.md), [producto](../product/README.md).

## F5 — POS retail y caja

**Objetivo:** ofrecer una caja rápida y segura donde cada venta atraviesa el núcleo fiscal y soporta pago, ticket, devolución y contingencia acotada. Documentación de fase: [frontends](../product/frontends.md), [VERI*FACTU](../compliance/verifactu.md), [API](../api/README.md) y [contingencia](../compliance/contingency.md).

### F5-T01 — Venta POS, carrito y pagos

Construir el flujo de búsqueda de artículo, carrito, descuentos, impuestos, cliente opcional y pago con confirmación idempotente. **Aceptación:** una venta completa genera el registro fiscal y la evidencia sin depender de la UI. Enlaces: [frontends](../product/frontends.md), [VERI*FACTU](../compliance/verifactu.md).

### F5-T02 — Factura, ticket y reimpresión

Renderizar ticket/factura, QR, datos legales y reimpresión controlada desde el registro inmutable. **Aceptación:** la reimpresión no crea una segunda venta ni cambia el original. Enlaces: [VERI*FACTU](../compliance/verifactu.md), [impresión](../product/printing.md).

### F5-T03 — Devoluciones, anulaciones y caja

Gestionar devolución parcial/total, anulación autorizada, medios de pago y reflejo en caja y fiscalidad. **Aceptación:** cada acción referencia el documento original, motivo, actor y nuevo registro requerido. Enlaces: [VERI*FACTU](../compliance/verifactu.md), [IAM/RBAC](../security/iam-rbac.md), [auditoría](../compliance/records-and-retention.md).

### F5-T04 — Offline acotado y sincronización POS

Permitir continuidad limitada frente a pérdida de conectividad, con cola local cifrada, límites, reloj/control de secuencia y reconciliación. **Aceptación:** el modo offline no oculta el estado fiscal ni rompe la cadena; la recuperación es observable y testeada. Enlaces: [contingencia](../compliance/contingency.md), [seguridad](../security/README.md).

## F6 — Hostelería, QR, mesas y KDS

**Objetivo:** cubrir el flujo mesa → carta/pedido → comanda → cocina → pago, manteniendo separación entre operación y núcleo fiscal. Documentación de fase: [producto](../product/README.md), [frontends](../product/frontends.md), [impresión/cocina](../product/printing.md) y [modelo de datos](../architecture/data-model.md).

### F6-T01 — Plano de mesas y QR individual

Diseñar mesas, zonas, estados, aforo y QR rotables por mesa/ubicación con protección contra manipulación. **Aceptación:** el cliente llega a la carta correcta sin exponer el tenant ni permitir acceso administrativo. Enlaces: [producto](../product/README.md), [seguridad](../security/README.md).

### F6-T02 — Carta, pedido cliente y modificadores

Exponer carta móvil, disponibilidad, variantes, extras, alérgenos, notas y confirmación de pedido con límites antiabuso. **Aceptación:** el pedido queda asociado a mesa/sesión y conserva el precio mostrado y su versión de catálogo. Enlaces: [frontends](../product/frontends.md), [modelo de datos](../architecture/data-model.md).

### F6-T03 — Mesero, comanda y estados

Crear PWA para meseros con toma de comanda, edición autorizada, notas, prioridades y seguimiento de estados. **Aceptación:** todos los cambios tienen actor, hora, mesa y evento; la comanda se entrega a cocina una sola vez. Enlaces: [IAM/RBAC](../security/iam-rbac.md), [integraciones](../architecture/integrations.md).

### F6-T04 — KDS, tiempos y prioridades

Construir la vista de cocina por estación con cola, tiempos, prioridad, pausas, incidencias y confirmación de entrega. **Aceptación:** KDS se recupera tras reinicio y no pierde ni duplica comandas. Enlaces: [impresión y cocina](../product/printing.md), [operaciones](../operations/README.md).

### F6-T05 — Split bill, propinas y cierre hostelería

Modelar división de cuenta, pagos mixtos, propinas si proceden y cierre de mesa sin alterar el documento fiscal histórico. **Aceptación:** casos y tratamiento fiscal quedan aprobados externamente y cada pago es reconciliable. Enlaces: [VERI*FACTU](../compliance/verifactu.md), [producto](../product/README.md), [cierres](../product/README.md).

## F7 — Impresión y dispositivos

**Objetivo:** entregar tickets y comandas de forma fiable en navegadores y cocina, con matriz soportada y fallback. Documentación de fase: [impresión](../product/printing.md), [arquitectura física](../architecture/logical-physical.md) y [operaciones](../operations/README.md).

### F7-T01 — WebSerial ESC/POS y matriz soportada

Implementar conexión local WebSerial, comandos ESC/POS, encoding, corte, apertura y diagnóstico para modelos soportados. **Aceptación:** impresiones fiscales y de cocina pasan golden snapshots y desconexiones son recuperables. Enlaces: [impresión](../product/printing.md), [seguridad](../security/README.md).

### F7-T02 — Agente Raspberry Pi/SBC

Crear agente local para colas de cocina y dispositivos que no puedan depender de WebSerial/browser, con registro, health y actualización controlada. **Aceptación:** el agente solo recibe trabajos autorizados, reintenta sin duplicar y puede revocarse. Enlaces: [impresión](../product/printing.md), [despliegue](../operations/README.md).

### F7-T03 — Cola, reimpresión y fallback PDF

Gestionar cola duradera, reimpresión explícita, dead-letter, diagnóstico y PDF como fallback operativo. **Aceptación:** el sistema distingue trabajo enviado, confirmado, fallido y reimpreso, sin generar efectos fiscales nuevos. Enlaces: [impresión](../product/printing.md), [auditoría](../compliance/records-and-retention.md).

## F8 — Billing, metering y entitlements

**Objetivo:** convertir uso y capacidades en un SaaS cobrable, transparente y controlable, sin mezclar billing con el núcleo fiscal. Documentación de fase: [pricing](../product/pricing.md), [arquitectura de billing](../architecture/integrations.md) y [seguridad](../security/README.md).

### F8-T01 — Metering de tickets y uso

Medir tickets emitidos, sedes, POS, usuarios, almacenamiento y consumos variables con eventos idempotentes y periodos cerrados. **Aceptación:** una factura de uso puede explicarse desde eventos de origen y no se cuenta dos veces un reintento. Enlaces: [pricing](../product/pricing.md), [integraciones](../architecture/integrations.md).

### F8-T02 — Planes, límites y entitlements

Definir prestaciones por tier, límites duros/blandos, gracia, overage y feature flags por tenant. **Aceptación:** la política es central, auditable, cacheable y no bloquea ilegalmente la conservación fiscal. Enlaces: [pricing](../product/pricing.md), [multi-tenant](../architecture/multitenancy.md).

### F8-T03 — Suscripciones, facturación y webhooks

Integrar proveedor de pagos en sandbox, ciclo de suscripción, cambios de plan, fallos de cobro, impuestos comerciales y webhooks firmados. **Aceptación:** estados de billing son reconciliables y una caída del proveedor no corrompe ventas ni registros fiscales. Enlaces: [pricing](../product/pricing.md), [seguridad](../security/README.md).

## F9 — Operación, observabilidad y DR

**Objetivo:** desplegar y operar el SaaS con seguridad, coste controlado, objetivos de servicio, backups y recuperación probada. Documentación de fase: [operaciones](../operations/README.md), [Kubernetes/CI/CD](../operations/README.md), [DR/SLO](../operations/dr.md) y [arquitectura física](../architecture/logical-physical.md).

### F9-T01 — Kubernetes, IaC y despliegues

Definir namespaces/entornos, charts o manifests, ingress, workers, migraciones, políticas de red y despliegue progresivo. **Aceptación:** una instalación reproducible puede desplegar y revertir sin pérdida de datos. Enlaces: [operaciones](../operations/README.md), [arquitectura lógica/física](../architecture/logical-physical.md).

### F9-T02 — Observabilidad, SLO y alertas

Instrumentar logs estructurados, métricas, trazas, cola fiscal, latencia API, errores, disponibilidad de impresión y coste. **Aceptación:** los SLO y alertas permiten detectar y diagnosticar una incidencia sin datos sensibles. Enlaces: [operaciones](../operations/README.md), [seguridad](../security/README.md).

### F9-T03 — Backups, restore y DR game day

Automatizar backups cifrados, retención, restauración por entorno y simulacros de pérdida de servicio/datos. **Aceptación:** RPO/RTO medidos, restore documentado y evidencias firmadas. Enlaces: [DR/SLO](../operations/dr.md), [conservación](../compliance/records-and-retention.md).

### F9-T04 — Coste, capacidad y escalado

Medir coste por tenant/ticket, capacidad de DB/colas/almacenamiento y umbrales de escalado. **Aceptación:** se puede explicar margen por tier y hay acciones antes de alcanzar saturación. Enlaces: [pricing](../product/pricing.md), [operaciones](../operations/README.md).

## F10 — Conformidad, seguridad y piloto

**Objetivo:** reunir evidencia fiscal y técnica, cerrar vulnerabilidades y demostrar el sistema con un cliente piloto antes de ampliar ventas. Documentación de fase: [plan de pruebas](../testing/README.md), [declaración responsable](../compliance/declaration-responsible.md), [trazabilidad](../compliance/traceability.md) y [pilot gate](../governance/phase-0/pilot-gate.md).

### F10-T01 — Suite de conformidad fiscal

Ejecutar golden vectors, pruebas de cadena, QR, remisión, rechazo, rectificativa, anulación, conservación y evolución normativa. **Aceptación:** regresión automatizada, resultados archivados y revisión externa de los casos fiscales. Enlaces: [testing](../testing/README.md), [VERI*FACTU](../compliance/verifactu.md), [trazabilidad](../compliance/traceability.md).

### F10-T02 — Pentest, privacidad y hardening

Completar revisión de amenazas, pentest, protección de datos, secretos, headers, sesiones, dispositivos y minimización. **Aceptación:** no quedan críticos/altos sin decisión formal y el evidence pack contiene correcciones y excepciones. Enlaces: [threat model](../security/threat-model.md), [seguridad](../security/README.md), [auditoría](../compliance/records-and-retention.md).

### F10-T03 — Pruebas piloto end-to-end

Probar configuración, POS, hostelería, QR, cocina, impresión, pagos, cierre, contingencia, soporte y observabilidad con datos sintéticos/controlados. **Aceptación:** reporte reproducible con incidencias, métricas, feedback y acciones priorizadas. Enlaces: [testing](../testing/README.md), [pilot gate](../governance/phase-0/pilot-gate.md).

### F10-T04 — Declaration pack y revisión externa

Preparar el expediente versionado del productor: alcance, controles, trazabilidad, tests, evidencias, operación, conservación y cambios. **Aceptación:** la consultoría emite visto bueno o lista bloqueante con propietario y fecha. Enlaces: [declaración responsable](../compliance/declaration-responsible.md), [fuentes](../compliance/sources.md).

### F10-T05 — Gate go/no-go y runbooks

Simular incidentes y decidir si el producto está listo para piloto limitado, con soporte, rollback, comunicación y límites. **Aceptación:** decisión firmada y runbooks ejecutables por el fundador. Enlaces: [pilot gate](../governance/phase-0/pilot-gate.md), [DR/SLO](../operations/dr.md).

## F11 — Lanzamiento y mejora continua

**Objetivo:** pasar de piloto a operación comercial controlada, aprender de uso real y mantener un ciclo de releases fiscales y de producto. Documentación de fase: [roadmap](../product/roadmap.md), [pricing](../product/pricing.md), [operaciones](../operations/README.md) y [plan de implementación](../implementation-plan.md).

### F11-T01 — Onboarding, soporte y knowledge base

Documentar alta de tenant, migración de catálogo, dispositivos, formación, soporte, incidencias y escalado legal/fiscal. **Aceptación:** un cliente puede completar onboarding con checklist y el fundador puede resolver los casos frecuentes con runbooks. Enlaces: [producto](../product/README.md), [operaciones](../operations/README.md).

### F11-T02 — Release comercial y comunicación

Preparar release notes, términos, pricing, límites, canales de soporte, rollback y comunicación de cambios normativos. **Aceptación:** no se comercializa una capacidad fiscal sin evidencia y aprobación requerida. Enlaces: [pricing](../product/pricing.md), [declaración responsable](../compliance/declaration-responsible.md).

### F11-T03 — Métricas de producto y margen

Medir activación, ventas, tickets, errores fiscales, soporte, retención, coste variable y margen por tier. **Aceptación:** dashboard y revisión mensual producen decisiones de producto y precio. Enlaces: [pricing](../product/pricing.md), [operaciones](../operations/README.md).

### F11-T04 — Feedback, roadmap y ciclo fiscal

Convertir feedback de clientes, cambios AEAT, incidencias y métricas en backlog priorizado y siguiente release. **Aceptación:** cada cambio relevante tiene fuente, impacto, decisión, pruebas y comunicación. Enlaces: [roadmap](../product/roadmap.md), [baseline normativa](../governance/phase-0/normative-baseline.md), [ADRs](../adr/README.md).

