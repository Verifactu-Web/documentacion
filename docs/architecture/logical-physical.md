# Arquitectura lógica y física

## Lógica

```text
Canales → API/commands → dominios transaccionales → outbox → workers/integraciones
                                      ↘ PostgreSQL / object storage / auditoría
```

El servicio API aplica autorización, validación y transacciones. El Fiscal Core es una librería/módulo con versionado propio que produce una `FiscalSnapshot` inmutable y un `SubmissionEnvelope`; no llama a AEAT dentro de la transacción de venta.

## Física

- Edge: CDN/WAF/API gateway, TLS, rate limits y protección de QR público.
- Cluster: namespaces `edge`, `app`, `workers`, `observability`; deployments sin estado y workers con escalado por cola.
- Datos: PostgreSQL HA gestionado, Redis HA para cache/locks, object storage versionado/WORM, registry de imágenes y KMS.
- Red: subred privada para datos, egress controlado al endpoint AEAT, NetworkPolicies y workload identity.
- Clientes: navegador/PWA, impresoras WebSerial y agente local/SBC saliente.

El diagrama físico no implica que cada caja sea un microservicio. El coste y la auditabilidad fiscal favorecen pocos componentes desplegables.
