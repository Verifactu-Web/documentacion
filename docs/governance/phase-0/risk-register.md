# Registro inicial de riesgos

Escala: probabilidad e impacto de 1 (bajo) a 5 (alto). La puntuación es `P × I`; revisar semanalmente los riesgos ≥12.

| ID | Riesgo | P | I | Score | Propietario | Mitigación / disparador |
|---|---|---:|---:|---:|---|---|
| R-01 | Cambio de especificación AEAT o calendario | 3 | 5 | 15 | FND + LGL/TAX | Monitor oficial, baseline fechado, ADR y golden vectors; disparador: publicación técnica nueva |
| R-02 | Interpretación incorrecta de caso fiscal | 3 | 5 | 15 | LGL/TAX | Memo escrito antes de construir; no liberar casos sin dictamen |
| R-03 | Fundador único se convierte en cuello de botella | 4 | 4 | 16 | FND | Alcance por gates, Codex para tareas repetibles, runbooks y proveedor de backup |
| R-04 | Fuga de datos entre tenants | 2 | 5 | 10 | FND + SEC/OPS | RLS, tenant context, tests negativos, revisión de queries y logs |
| R-05 | Remisión fiscal degradada u operación offline prolongada | 3 | 5 | 15 | FND | Outbox durable, idempotencia, límites de contingencia, reconciliación y alertas |
| R-06 | Hardware de impresión incompatible | 4 | 3 | 12 | FND | Matriz certificada, WebSerial y agente SBC soportado, fallback PDF |
| R-07 | Coste por tenant/ticket erosiona margen | 3 | 4 | 12 | FND | Metering, límites, alertas, paquetes y revisión mensual de unit economics |
| R-08 | Evidencia insuficiente para declaración responsable | 2 | 5 | 10 | FND + LGL/TAX | Evidence pack versionado, traceability matrix y sign-off por release |
| R-09 | Dependencia de un proveedor cloud | 2 | 4 | 8 | FND | PostgreSQL estándar, exportación, IaC y runbook de restore |
| R-10 | Vulnerabilidad en PWA/dispositivos compartidos | 3 | 4 | 12 | FND + SEC/OPS | MFA, sesión corta, device binding opcional, CSP y pentest antes de piloto |
| R-11 | Scope creep retail/hostelería simultáneo | 4 | 3 | 12 | FND | MVP por vertical, feature flags y priorización por ingresos/riesgo |
| R-12 | Uso de datos reales en pruebas o prompts | 2 | 5 | 10 | FND | Datos sintéticos, minimización, no introducir secretos/datos personales en Codex |

## Respuesta y escalado

- Score ≥15: plan de mitigación con fecha y revisión semanal.
- Score 10–14: control en backlog y revisión quincenal.
- Score <10: aceptar con monitorización y reabrir ante disparador.
- Un incidente fiscal, de seguridad o privacidad se escala el mismo día al fundador y, si afecta interpretación o comunicación externa, a LGL/TAX.

