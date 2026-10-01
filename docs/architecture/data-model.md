# Modelo de datos conceptual

## Entidades principales

`Tenant` → `User`, `Role`, `Membership`, `Location` → `Register`, `Device`, `Table`, `Menu`.

`Product` → `Variant`, `ModifierGroup`, `TaxRule`, `Allergen`; `StockItem` por ubicación.

`Order` → `OrderLine`/`ModifierSelection` → `Payment`; `Order` puede producir `Invoice`.

`Invoice` → `FiscalRecord` (alta/anulación) → `AeatSubmission`; `FiscalRecord` encadena `previous_hash` y tiene `hash_sha256`.

`Invoice` → `DocumentArtifact` (PDF/XML/JSON) → `QrPayload`.

`AuditEvent` y `OutboxEvent` son append-only y no sustituyen RF.

## Invariantes

- precios e impuestos se copian como snapshot en la línea/factura;
- productos y reglas pueden cambiar, las facturas no;
- serie + número es único por obligado y serie;
- `FiscalRecord` y `Invoice` comparten correlación, no necesariamente la misma PK;
- no hay cascade delete de entidades fiscales;
- toda mutación de orden con impacto fiscal produce evento de auditoría.

El diagrama [ER conceptual](../../diagrams/04-data-model.puml) muestra cardinalidades sin pretender ser todavía el DDL definitivo.
