# Capacidad y presupuesto de arranque

## Supuestos

- Un fundador con 25–30 h/semana disponibles y 18–22 h/semana de construcción.
- Codex participa de forma intensiva en scaffolding, CRUD, migraciones, tests, documentación, CI, refactors y análisis de fallos.
- El fundador mantiene el diseño, revisión de diffs, pruebas de aceptación, operación, seguridad, soporte y toda decisión de producto.
- La consultoría externa no se sustituye por generación automática.
- Cifras orientativas para planificar; confirmar proveedores, IVA, contratación y fiscalidad antes de comprometer gasto.

## Modelo de esfuerzo

| Tipo | Sin Codex | Con Codex | Qué no se acelera materialmente |
|---|---:|---:|---|
| Código repetitivo/CRUD | 1.0x | 0.35–0.55x | Revisión e integración |
| Tests y fixtures | 1.0x | 0.45–0.65x | Decidir casos frontera |
| Documentación/diagramas/CI | 1.0x | 0.30–0.50x | Aprobación y verificación |
| Diseño fiscal/seguridad | 1.0x | 0.80–1.0x | Juicio experto y responsabilidad |
| Soporte/ventas/gestión | 1.0x | 0.90–1.0x | Relación humana |

El catálogo de [estimaciones de tareas](../../project/task-estimates.md) separa “días de fundador” de “días de consultoría” y muestra dependencias. Son estimaciones P50; aplicar un colchón del 30% para planificación de una persona.

## Presupuesto mensual orientativo durante construcción

| Partida | Rango €/mes | Comentario |
|---|---:|---|
| Cloud dev/staging, DB, observabilidad y backups | 150–450 | Escala con entornos, retención y tráfico |
| Servicios de email, SMS, pagos y dominios | 50–180 | Según uso; no todos son necesarios en F0 |
| Herramientas de desarrollo/seguridad | 50–250 | Repositorio, scanning, gestor de secretos, CI |
| Dispositivos y pruebas hardware amortizadas | 75–250 | Impresoras, SBC, lectores y consumibles |
| Consultoría legal/fiscal | 1.500–4.500 inicial | Bolsa aproximada de 24–40 h; confirmar tarifa |
| Pentest/revisión externa | 0 en F0; 2.000–6.000 antes de venta amplia | Dependiendo del alcance |

## Reserva y regla de gasto

Reservar 30% sobre la estimación técnica y 20% sobre servicios externos. No contratar componentes de alto coste hasta pasar G0 y tener un caso de uso piloto. Revisar mensualmente: coste fijo, coste variable por ticket, coste de soporte por tenant y margen bruto objetivo ≥70% después de infraestructura y remisión, antes del coste comercial.

