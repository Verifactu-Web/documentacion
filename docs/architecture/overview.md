# Arquitectura general

## Principios

- Fiscal core aislado de UI, pagos e inventario.
- API-first: todos los frontends consumen la misma API y eventos.
- Atomicidad: factura, RF y outbox se confirman en una transacción.
- Idempotencia por comando, no por heurística.
- Tenant context obligatorio desde gateway hasta SQL.
- Evolución: modular monolith primero; extraer workers/servicios por carga o frontera de cumplimiento.

## Módulos de dominio

`Identity & Tenant`, `Catalog`, `Locations & POS`, `Orders`, `Payments`, `Fiscal`, `Printing/KDS`, `Inventory`, `Billing & Entitlements`, `Audit`, `Integrations`.

## Servicios de plataforma

API gateway/WAF, servicio API, PostgreSQL, Redis (cache/locks no fiscal), cola durable/event bus, object storage WORM, fiscal worker, notification worker, print gateway, observabilidad y billing provider. AEAT es una dependencia externa detrás de un adaptador.

## C4 y despliegue

Los diagramas [C4](../../diagrams/01-context.puml), [componentes](../../diagrams/02-components.puml) y [Kubernetes](../../diagrams/03-deployment.puml) son parte del contrato arquitectónico y se renderizan en CI.

![Contexto del sistema](../../diagrams/rendered/01-context.png)

![Componentes](../../diagrams/rendered/02-components.png)

![Despliegue Kubernetes](../../diagrams/rendered/03-deployment.png)
