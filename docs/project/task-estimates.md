# Catálogo de tareas y estimación Codex-first

**Baseline:** 2026-10-01 · **Equipo:** un fundador + consultoría externa · **Unidad:** día efectivo de 8 h.

## Método de estimación

Las estimaciones son P50 y representan trabajo humano restante con Codex usado intensivamente para generar código y artefactos. En tareas de software, Codex puede producir scaffolding, migraciones, handlers, tests, fixtures, OpenAPI, CI, diagramas y documentación; el fundador debe revisar diffs, ejecutar pruebas, corregir integración, comprobar seguridad y aceptar el resultado. En fiscalidad, seguridad, UX con hardware y operación, Codex ayuda a explorar y redactar, pero no sustituye juicio experto ni validación externa.

La estimación no presupone trabajo paralelo: un fundador único mantiene una sola cola prioritaria. Añadir 30% de reserva a la suma técnica. `C` solo cubre revisión legal/fiscal o especialista externo; no se “acelera” con Codex.

## Resumen por fase

| Fase | Resultado | Fundador | Consultoría | Dependencia principal |
|---|---|---:|---:|---|
| F0 | Gobierno, alcance y baseline | 11 d | 8,5 d | Ninguna |
| F1 | Fundaciones, tenancy y seguridad base | 22 d | 2 d | F0 |
| F2 | Fiscal core VERI*FACTU | 34 d | 10 d | F0–F1 |
| F3 | API-first y contratos | 18 d | 1 d | F1–F2 |
| F4 | Backoffice, catálogo y configuración | 20 d | 0,5 d | F1–F3 |
| F5 | POS retail y caja | 28 d | 1 d | F2–F4 |
| F6 | Hostelería, QR, mesas y KDS | 32 d | 1,5 d | F4–F5 |
| F7 | Impresión y dispositivos | 18 d | 0,5 d | F5–F6 |
| F8 | Billing, metering y entitlements | 16 d | 0,5 d | F3–F5 |
| F9 | Operación, observabilidad y DR | 24 d | 1 d | F1–F8 |
| F10 | Conformidad, seguridad y piloto | 26 d | 8 d | F2–F9 |
| F11 | Lanzamiento y mejora continua | 18 d | 2 d | F10 |
| **Total** |  | **267 d** | **36,5 d** |  |

Con 18–22 días efectivos de construcción por mes, el camino hasta un piloto controlado es aproximadamente 9–12 meses. El lanzamiento comercial amplio requiere datos reales, soporte y revisiones; no debe comprometerse solo con esta suma.

## Tareas estimadas

| ID | Entregable verificable | F | C | Codex esperado | Dep. | P |
|---|---|---:|---:|---|---|:---:|
| F0-T01 | Charter y principios aprobados | 0,5 | 0,25 | Redacción y revisión | — | A |
| F0-T02 | Personas, alcance y MVP | 1 | 0,5 | Matriz y criterios | F0-T01 | A |
| F0-T03 | RACI, cadencia y soporte | 0,5 | 0 | Plantilla y checklist | F0-T01 | A |
| F0-T04 | Baseline de fuentes oficiales | 1,5 | 2 | Trazabilidad y changelog | F0-T02 | M |
| F0-T05 | Casos frontera fiscales | 1 | 3 | Casos de prueba y preguntas | F0-T04 | M |
| F0-T06 | Registro de riesgos | 1 | 0,5 | Tabla, scoring y revisión | F0-T02 | A |
| F0-T07 | Capacidad, presupuesto y pricing | 1 | 0,25 | Modelo y escenarios | F0-T02 | M |
| F0-T08 | Backlog, gates y Project | 1,5 | 0 | Descomposición y estimación | F0-T01 | A |
| F0-T09 | Gate y evidence pack de piloto | 1 | 1 | Checklist y plantilla | F0-T04 | M |
| F0-T10 | Gate de aprobación y readiness de piloto | 2 | 1 | Checklist, decisión y paquete de salida | F0-T08,F0-T09 | M |
| F1-T01 | Monorepo, lint, CI y entornos | 3 | 0 | Scaffolding y workflows | F0 | A |
| F1-T02 | Identidad, tenant context y RLS | 7 | 0,5 | Migraciones, guards y tests | F1-T01 | M |
| F1-T03 | Secretos, configuración y auditoría técnica | 4 | 0,5 | Schemas y automatización | F1-T01 | M |
| F1-T04 | PostgreSQL, migraciones y seed sintético | 5 | 0 | SQL, fixtures y tests | F1-T02 | A |
| F1-T05 | Threat model y hardening base | 3 | 1 | Borrador y controles | F1-T02 | M |
| F2-T01 | Modelo de registro de facturación | 6 | 2 | Entidades, invariantes y fixtures | F0,F1 | M |
| F2-T02 | Generación, hash y encadenamiento | 8 | 2 | Código, vectores y property tests | F2-T01 | M |
| F2-T03 | QR, payload y representación fiscal | 4 | 1,5 | Generadores y golden vectors | F2-T01 | M |
| F2-T04 | Remisión, reintento e idempotencia | 7 | 1,5 | Cliente, worker y simulador | F2-T02 | M |
| F2-T05 | Anulación, rectificación y contingencia | 6 | 3 | State machine y casos frontera | F2-T01 | B |
| F2-T06 | Evidence pack y versión fiscal | 3 | 1 | Export y metadatos | F2-T01 | M |
| F3-T01 | OpenAPI base y versionado | 4 | 0 | Contrato, lint y generación | F1,F2 | A |
| F3-T02 | Idempotency, errores y paginación | 4 | 0 | Middleware y tests | F3-T01 | A |
| F3-T03 | Eventos, outbox y consumidores | 6 | 0,5 | Schemas, worker y tests | F1,F2 | M |
| F3-T04 | SDK/contract tests y Swagger | 4 | 0,5 | Generación y CI | F3-T01 | A |
| F4-T01 | Backoffice de tenant y usuarios | 5 | 0 | CRUD y pantallas | F1,F3 | A |
| F4-T02 | Maestro de artículos y variantes | 6 | 0 | CRUD, import y tests | F4-T01 | A |
| F4-T03 | Impuestos, precios y promociones | 5 | 0,5 | Reglas y formularios | F2,F4-T02 | M |
| F4-T04 | Establecimientos, cajas y cierres | 5 | 0 | Modelo y flujos | F1,F4-T01 | M |
| F5-T01 | Venta POS, carrito y pagos | 8 | 0 | UI, API y fixtures | F2,F3,F4 | M |
| F5-T02 | Factura, ticket y reimpresión | 5 | 0,5 | Templates y pruebas | F2,F5-T01 | M |
| F5-T03 | Devoluciones, anulaciones y caja | 7 | 0,5 | State machine y UI | F2,F5-T01 | M |
| F5-T04 | Offline acotado y sincronización POS | 8 | 0 | Storage, cola y conflictos | F3,F5-T01 | B |
| F6-T01 | Plano de mesas y QR individual | 6 | 0 | UI, QR y permisos | F4,F5 | A |
| F6-T02 | Carta, pedido cliente y modificadores | 8 | 0,5 | PWA y API | F4,F6-T01 | M |
| F6-T03 | Mesero, comanda y estados | 7 | 0,5 | PWA, eventos y tests | F3,F6-T01 | M |
| F6-T04 | KDS, tiempos y prioridades | 6 | 0 | Proyección y suscripción | F6-T03 | M |
| F6-T05 | Split bill, propinas y cierre hostelería | 5 | 0,5 | Flujos y casos | F2,F5,F6-T03 | B |
| F7-T01 | WebSerial ESC/POS y matriz soportada | 6 | 0,25 | Driver, mocks y UI | F5 | M |
| F7-T02 | Agente Raspberry Pi/SBC | 7 | 0,25 | Servicio, empaquetado y health | F3,F6 | B |
| F7-T03 | Cola, reimpresión y fallback PDF | 5 | 0 | Worker y pruebas | F7-T01 | A |
| F8-T01 | Metering de tickets y uso | 5 | 0 | Eventos y agregaciones | F3,F5 | M |
| F8-T02 | Planes, límites y entitlements | 5 | 0 | Policy engine y UI | F8-T01 | A |
| F8-T03 | Suscripciones, facturación y webhooks | 6 | 0,5 | Integración sandbox y tests | F8-T02 | M |
| F9-T01 | Kubernetes, IaC y despliegues | 8 | 0 | Charts, manifests y CI/CD | F1,F3 | M |
| F9-T02 | Observabilidad, SLO y alertas | 5 | 0 | Instrumentación y dashboards | F9-T01 | M |
| F9-T03 | Backups, restore y DR game day | 6 | 0,5 | Runbooks y automatización | F9-T01 | M |
| F9-T04 | Coste, capacidad y escalado | 5 | 0,5 | Métricas y escenarios | F8,F9-T01 | M |
| F10-T01 | Suite de conformidad fiscal | 8 | 3 | Golden vectors y regresión | F2,F3 | M |
| F10-T02 | Pentest, privacidad y hardening | 5 | 2 | Fixes y evidence | F1,F9 | M |
| F10-T03 | Pruebas piloto end-to-end | 7 | 1 | Fixtures, automatización y reporte | F5,F6,F7 | M |
| F10-T04 | Declaration pack y revisión externa | 4 | 2 | Índice y evidencias | F10-T01 | M |
| F10-T05 | Gate go/no-go y runbooks | 2 | 0 | Checklist y simulación | F10-T02 | A |
| F11-T01 | Onboarding, soporte y knowledge base | 5 | 0 | Flujos, plantillas y docs | F10 | A |
| F11-T02 | Release comercial y comunicación | 4 | 0,5 | Automatización y changelog | F10 | M |
| F11-T03 | Métricas de producto y margen | 4 | 0,5 | Dashboards y queries | F8,F9 | M |
| F11-T04 | Feedback, roadmap y ciclo fiscal | 5 | 1 | Síntesis y backlog | F11-T01 | M |

## Reglas de reestimación

- Si una tarea supera 1,5× su estimación, dividirla y registrar la causa.
- Si el resultado generado por Codex requiere más de una ronda de corrección de integración, contar el tiempo real y añadir una prueba de regresión.
- Toda tarea fiscal con incertidumbre `B` necesita decisión de LGL/TAX antes de pasar a “Ready”.
- Una reducción de días no permite saltar revisión, pruebas, seguridad, evidencia o aceptación del fundador.
