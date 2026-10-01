# Integraciones y eventos

## Eventos de dominio

`order.created`, `order.confirmed`, `payment.captured`, `invoice.issued`, `fiscal.record.created`, `fiscal.submission.accepted`, `fiscal.submission.rejected`, `inventory.adjusted`, `print.job.created`, `billing.metered`.

Todos llevan `event_id`, `tenant_id`, `occurred_at`, `schema_version`, `aggregate_id`, `correlation_id` y `causation_id`. Se publican mediante outbox y consumidores idempotentes.

## Integraciones desacopladas

Adapters con anti-corruption layer: pagos/terminal, contabilidad, reservas, delivery, e-commerce, email/SMS, SII/factura electrónica B2B futura. Ningún proveedor externo escribe directamente tablas fiscales.

## Webhooks

Firmados con secreto rotado, `event_id` para deduplicación, reintentos con backoff y DLQ. El cliente puede consultar estado en lugar de confiar en una única entrega.
