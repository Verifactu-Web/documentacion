# Diagramas PlantUML

Cada archivo es autónomo para renderizarse offline/CI sin dependencias remotas. Las imágenes PNG renderizadas se versionan en `rendered/` para que GitHub las muestre directamente; la CI vuelve a comprobar que todas se pueden generar.

| Archivo | Cobertura |
|---|---|
| [01-context](01-context.puml) | Contexto C4 simplificado |
| [02-components](02-components.puml) | Componentes y servicios |
| [03-deployment](03-deployment.puml) | Kubernetes y datos |
| [04-data-model](04-data-model.puml) | ER conceptual |
| [05-verifactu](05-verifactu.puml) | Alta, hash, cadena, AEAT y QR |
| [06-pos-sale](06-pos-sale.puml) | Venta POS y cierre |
| [07-qr-kitchen](07-qr-kitchen.puml) | Mesa, QR, mesero y KDS |
| [08-printing](08-printing.puml) | WebSerial y SBC |
| [09-iam-rbac](09-iam-rbac.puml) | IAM/RBAC y RLS |
| [10-audit](10-audit.puml) | Auditoría e inmutabilidad |
| [11-contingency](11-contingency.puml) | Contingencia y recuperación |
| [12-billing](12-billing.puml) | Metering, billing y entitlements |

Los diagramas describen decisiones de arquitectura; no sustituyen la especificación de AEAT ni los contratos OpenAPI.

## Galería completa

### Contexto y plataforma

![Contexto](rendered/01-context.png)

![Componentes](rendered/02-components.png)

![Despliegue](rendered/03-deployment.png)

![Modelo de datos](rendered/04-data-model.png)

### Fiscal y operaciones de venta

![Flujo VERI*FACTU](rendered/05-verifactu.png)

![Venta POS](rendered/06-pos-sale.png)

![Pedido QR y cocina](rendered/07-qr-kitchen.png)

![Impresión](rendered/08-printing.png)

### Seguridad, auditoría y continuidad

![IAM y RBAC](rendered/09-iam-rbac.png)

![Auditoría](rendered/10-audit.png)

![Contingencia](rendered/11-contingency.png)

![Billing y entitlements](rendered/12-billing.png)
