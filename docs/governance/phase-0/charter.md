# Charter del producto y gobierno

## Propósito

Construir un SaaS español de punto de venta para retail y hostelería que permita operar caja, catálogo, pedidos y facturación desde varios establecimientos, con un núcleo fiscal independiente de los canales y diseñado para cumplir el RRSIF/VERI*FACTU vigente en cada release.

## Principios no negociables

- El núcleo fiscal es autoridad de los registros de facturación; ningún frontend puede modificarlos.
- La documentación distingue obligación legal, decisión de diseño y recomendación.
- No se publicita “certificación” sin soporte normativo y evidencia revisada.
- Cada cambio fiscal tiene trazabilidad: fuente, interpretación, ADR, implementación, test y evidencia.
- Codex puede generar código, tests, documentación y scaffolding, pero el fundador revisa, integra y acepta; la consultoría externa valida lo jurídico/fiscal.
- Los datos de tenants se aíslan por diseño, controles de acceso, consultas parametrizadas, RLS y pruebas negativas.

## Objetivos de negocio de la primera versión comercial

1. Vender a autónomos y pequeños negocios españoles con 1–3 ubicaciones.
2. Resolver emisión fiscal cloud-first en modalidad VERI*FACTU, POS y operaciones básicas de retail/hostelería.
3. Poder demostrar trazabilidad y evidencias ante soporte, auditoría y revisión externa.
4. Mantener el coste operativo y de soporte compatible con un fundador único.

## Fuera del objetivo inicial

No se implementan aún facturación electrónica B2B completa, nómina, contabilidad general, marketplace de integraciones, hardware propio ni modalidad no verificable salvo que una decisión posterior y la revisión externa lo justifiquen.

## Autoridad y decisiones

| Tipo de decisión | Decide | Consulta | Evidencia |
|---|---|---|---|
| Producto, UX y prioridad | Fundador/PO | Clientes piloto | ADR/backlog |
| Arquitectura y seguridad | Fundador/tech lead | Proveedor especialista si procede | ADR/threat model |
| Interpretación fiscal | Consultoría legal/fiscal | Fundador | Memo firmado |
| Aceptación de release | Fundador | Consultoría cuando afecte fiscalidad | Release checklist |
| Declaración responsable | Productor legalmente identificado | Consultoría | Expediente y versión |

## Cadencia

- Revisión semanal: backlog, riesgos, métricas y decisiones pendientes.
- Revisión quincenal: demo funcional y burn-up de fase.
- Revisión por release fiscal: fuentes AEAT, golden vectors, regresión y aprobación externa.
- Registro de decisiones: toda decisión reversible se documenta en el ADR más pequeño posible; las irreversibles requieren una nota de impacto.

