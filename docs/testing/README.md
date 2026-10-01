# Estrategia de pruebas

## Pirámide

- Unitarias: money, impuestos, numeración, hash, QR, idempotencia.
- Contract: OpenAPI, AEAT XSD/WSDL, adapters, webhooks, impresoras.
- Integración: PostgreSQL/RLS, outbox, cola, object storage y renderer.
- E2E: venta POS, pedido QR, comanda, cocina, cobro, cierre, devolución y exportación.
- Seguridad: autorización cross-tenant, fuzz QR, sesiones, secretos, SQL injection, mTLS agente.
- Resiliencia: timeout AEAT, duplicados, caída Redis, failover DB, reloj incorrecto, corte de red.

## Golden vectors fiscales

Conservar fixtures anonimizadas y versionadas para cada tipo de factura y registro: alta, anulación, rectificativa, multi-IVA, exenta/no sujeta, descuentos, redondeos, factura completa/simplificada, series y cambio de instalación. Cada vector contiene entrada canónica, campos incluidos en hash, hash esperado, cadena anterior, QR/URL, XML/JSON esperado y respuesta simulada AEAT.

No se aceptan snapshots generados por el propio código sin comparación independiente. Los vectores se actualizan solo con referencia a S8/S9 y revisión.

## Gates

`validate.sh` debe terminar sin errores; la CI bloquea merge si falla un diagrama, el OpenAPI o el mínimo de conformidad fiscal. Las pruebas que requieran AEAT real se ejecutan en el portal de pruebas con credenciales/entorno separado.
