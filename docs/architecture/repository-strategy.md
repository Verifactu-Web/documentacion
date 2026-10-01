# Estrategia de repositorios

La implementación comienza con dos repositorios privados dentro de la organización `Verifactu-Web` y mantiene `documentacion` como repositorio público de especificación.

## Repositorios iniciales

| Repositorio | Responsabilidad | Decisión |
| --- | --- | --- |
| [`plataforma`](https://github.com/Verifactu-Web/plataforma) | Monorepo de aplicación: API modular, Fiscal Core, workers, frontends/PWAs, contratos OpenAPI, migraciones, pruebas y agente SBC inicial | Núcleo de producto y dominios transaccionales |
| [`infraestructura`](https://github.com/Verifactu-Web/infraestructura) | Terraform, Helm/Kubernetes, entornos, políticas, observabilidad, backups, DR y configuración de despliegue | Separación de privilegios y ciclo de entrega |
| [`documentacion`](https://github.com/Verifactu-Web/documentacion) | Especificación, cumplimiento, ADRs, trazabilidad, diagramas, OpenAPI de referencia y plan de implementación | Fuente de verdad documental |

## Estructura prevista de `plataforma`

```text
apps/
  api/                 API REST modular y autenticación/autorización
  fiscal-worker/       remisión, reintentos y conciliación AEAT
  notification-worker/ outbox, notificaciones y tareas asíncronas
  print-gateway/       cola de impresión y adaptadores de dispositivos
  sbc-agent/           agente outbound-only para Raspberry Pi/SBC
  admin-web/           administración, catálogo, usuarios y billing
  pos-web/             caja retail/hostelería
  waiter-web/          comandas de meseros
  customer-qr-web/     carta y pedido QR por mesa
  kitchen-web/         KDS y expedición
packages/
  fiscal-core/         snapshots, RF, hash, cadena, QR y golden vectors
  contracts/           OpenAPI, eventos y esquemas compartidos
  domain/              módulos de catálogo, pedidos, pagos, inventario y billing
  design-system/       componentes y tokens de las PWAs
db/
  migrations/          esquema, RLS, índices y seeds sintéticos
tests/
  conformance/         vectores AEAT, contract tests y pruebas de aislamiento
```

La estructura es una guía de arranque, no una obligación de desplegar cada carpeta como microservicio. El backend sigue siendo un modular monolith con workers separados hasta que carga, seguridad o cumplimiento justifiquen una extracción.

## Estructura prevista de `infraestructura`

```text
terraform/
  modules/              red, Kubernetes, PostgreSQL, Redis, storage, KMS
  environments/         dev, staging, aeat-test, production
helm/
  plataforma/           API, workers, migraciones y políticas de red
observability/
  dashboards/           métricas, SLO, fiscal submitter y colas
  alerts/               alertas operativas y de cumplimiento
policies/                OPA/Conftest, admission y controles de secretos
backup-dr/               retención, restore y simulacros RPO/RTO
```

## Límites que no se separan todavía

- `fiscal-core` permanece dentro de `plataforma` para mantener revisión, versionado y golden vectors juntos con su uso transaccional.
- El agente SBC empieza en `plataforma` porque su contrato y su cola dependen del dominio de impresión; se extraerá cuando necesite releases o permisos independientes.
- Los SDK y contratos se publican desde `plataforma` a partir de OpenAPI, evitando un repositorio de contratos desincronizado.

Esta decisión aplica [ADR-0002](../adr/0002-modular-monolith.md), [ADR-0004](../adr/0004-frontend-monorepo.md) y el aislamiento operativo descrito en [arquitectura lógica y física](logical-physical.md).
